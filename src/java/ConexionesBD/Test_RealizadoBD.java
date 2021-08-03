/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ConexionesBD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Ricardo Ramirez
 */
public class Test_RealizadoBD {

    Connection c = null;

    public Test_RealizadoBD() {

    }

    public int getCodigoDelBuzon() {

        int codigo = 0;
        try {
            c = PollDeConexiones.getInstance().getConnection();
            String s = "select max(codigo_buzon) from buzonRealizados";
            PreparedStatement p = c.prepareStatement(s);

            ResultSet rS = p.executeQuery();

            if (rS.next()) {
                codigo = rS.getInt(1) + 1;
            } else {
                codigo = 1;
            }

            rS.close();
            p.close();

        } catch (SQLException e) {
            System.out.println("Database Access Error.");
            e.printStackTrace();
        } finally { // Cierra la conexion
            if (c != null) {
                try {
                    PollDeConexiones.getInstance().closeConnection(c);
                } catch (SQLException e) {
                }
            }
        }
        return codigo;
    }

    public void registrarBuzonRealizados(int codigoBuzon,String empresa) {
        try {
            c = PollDeConexiones.getInstance().getConnection();
            String s = "insert into buzonRealizados (codigo_buzon,fecha,empresa) values ('" + codigoBuzon + "',now(),'" + empresa + "')";
            PreparedStatement p = c.prepareStatement(s);
            p.executeUpdate();
            p.close();

        } catch (SQLException e) {
            System.out.println("Database Access Error.");
            e.printStackTrace();

        } finally { // Cierra la conexion
            if (c != null) {
                try {
                    PollDeConexiones.getInstance().closeConnection(c);
                } catch (SQLException e) {
                }
            }
        }
    }

    public void registrarDetalleBuzon(int codigoBuzon, String asunto, String detalleAsunto) {
        try {
            c = PollDeConexiones.getInstance().getConnection();
            String s = "insert into detalle_buzon values ('" + codigoBuzon + "','" + asunto + "','" + detalleAsunto + "')";
            PreparedStatement p = c.prepareStatement(s);
            p.executeUpdate();
            //p.close();

        } catch (SQLException e) {
            System.out.println("Database Access Error.");

        } finally { // Cierra la conexion
            if (c != null) {
                try {
                    PollDeConexiones.getInstance().closeConnection(c);
                } catch (SQLException e) {
                }
            }
        }
    }
}
