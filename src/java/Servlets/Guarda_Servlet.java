/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import Clases.BeanDetalleBuzon;
import ConexionesBD.Test_RealizadoBD;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Vector;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Ricardo Ramirez
 */
@WebServlet(name = "Guarda_Servlet", urlPatterns = {"/Guarda_Servlet"})
public class Guarda_Servlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
            HttpSession session = request.getSession();

            Test_RealizadoBD tr = new Test_RealizadoBD();
            //instancio el objeto de la clase   
            //para asginar el nuevo codigo de test 
            int codigoT = tr.getCodigoDelBuzon(); // conecto a la base y llamo al metodo para mandar el codigo al detalle 
            
            String empresa=(String)session.getAttribute("usuario");//para caputrar la variable session
               

            //out.print(codigoT);
            Vector vDetalle = new Vector();
            BeanDetalleBuzon od;
            String a1 = request.getParameter("asunto");
            String da=request.getParameter("detalle");
            od = new BeanDetalleBuzon();
            od.setCodigoBuzon(codigoT);
            od.setAsunto(a1);
            od.setDetalleAsunto(da);
            vDetalle.addElement(od);
                 

            // primero mando a registrar la tabla buzonRealizados por que está referenciada en la tabla detalleBuzon
            tr.registrarBuzonRealizados(codigoT,empresa); //logica para registrar una factura. primero se genera la factura y luego se detalla su contenido
            
           
            for (int i = 0; i < vDetalle.size(); i++) {
                BeanDetalleBuzon dp = (BeanDetalleBuzon) vDetalle.elementAt(i);//instancio la clase BeanDetalleBuzon  para pasar los datos requegidos por el vector a la base de datos 
                tr.registrarDetalleBuzon(dp.codigoBuzon, dp.asunto, dp.detalleAsunto);//llamo al metodo que contiene el algoritmo para insertar registro a la base de datos 
                //out.print(dp.codigoTest+"      "+dp.codigoPregunta+"      "+dp.respuesta);
            }                               
            vDetalle.removeAllElements();
                     
            response.sendRedirect("Buzon_Sugerencia.jsp?msj=hecho");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
