/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ConexionesBD;

import Clases.BeanGraficoBuzon;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

/**
 *
 * @author User
 */
public class GraficoBuzon {
    Connection c = null;

    public GraficoBuzon() {
    }
    
     public Vector getDatosGrafico(String fechaDesde,String fechaHasta) {

        Vector v=new Vector();
        try {
            c = PollDeConexiones.getInstance().getConnection();
            String s = "select br.empresa, COUNT(d.asunto) as Total,d.asunto as Asunto from buzonRealizados as br inner join detalle_buzon as d on br.codigo_buzon = d.codigo_buzon   where br.fecha>=to_timestamp('" + fechaDesde + " 00:00:00','yyyy-mm-dd hh24:mi:ss') and br.fecha<=to_timestamp('" + fechaHasta + " 23:59:59','yyyy-mm-dd hh24:mi:ss') GROUP by d.asunto,br.empresa";
            PreparedStatement p = c.prepareStatement(s);

            ResultSet rS = p.executeQuery();

             while (rS.next())
        {   //SE LLAMA A LA CLASE  Y SE LE PASA LOS PARAMETORS OBTENIDOS DELA BASE
           BeanGraficoBuzon rpv=new BeanGraficoBuzon(rS.getString(1),rS.getInt(2),rS.getString(3)); 
           v.addElement(rpv);
           
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
        return v;
    }
}
