<%-- 
    Document   : TablaPaginacion
    Created on : 01/03/2021, 9:33:56
    Author     : User
--%>
<%
    String usuario = (String) session.getAttribute("usuario");
    String desde = (String) session.getAttribute("fdesde");
    String hasta = (String) session.getAttribute("fhasta");

    if (usuario != null) {
%> 
<%@page import="Clases.BeanReporteGeneral"%>
<%@page import="java.util.Vector"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
        <link rel="stylesheet" href="estilosCss/estiloDatatable.css">
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.24/css/dataTables.bootstrap4.min.css"/>
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.7.0/css/buttons.bootstrap4.min.css"/>       
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">


        <title>Reporte Buzon</title>
    </head>
    <body>
        <header class="fixed-top " style=" background: -webkit-linear-gradient(45deg, #FCEBDA 48%, #DCFCDA 48%);
                background: -webkit-linear-gradient(left, #FCEBDA 48%, #DCFCDA 48%);
                background: linear-gradient(45deg, #FCEBDA 48%, #DCFCDA 48%);"  >
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12 col-sm-6 col-md-6 mb-3">
                        <!-- 
                                mx-auto
                                rounded
                        -->
                        <img class="float-left " width="350" src="Imagenes/logo2.png" alt="">
                    </div>   
                    <div class="col-12 col-sm-6 col-md-6 mb-3">
                        <!-- 
                                mx-auto
                                rounded
                        -->
                        <img class="float-right mt-3 " width="350" src="Imagenes/COLLSERV-Logo.png" alt="">
                    </div> 
                </div>   
            </div>           
        </header> 

        <div class="container ">  
            <div class="row">
                <div class="col-lg-12">
                    <div class="table-responsive">
                        <table id="example" class="table table-sm table-striped table-bordered table-hover" cellspacing="0" width="100%" >                                                         
                            <thead>
                                <tr>
                                    <th>Codigo</th>
                                    <th>Fecha</th>
                                    <th>Empresa</th>
                                    <th>Asunto</th>
                                    <th>Detalle</th>                      
                                </tr>
                            </thead>      
                            <tbody>
                                <%
                                    Vector vr = (Vector) session.getAttribute("vectorReporteGeneral");//recupero ell vetor lleno con lso datos de la base de datos
                                    for (int i = 0; i < vr.size(); i++) {
                                        BeanReporteGeneral re = (BeanReporteGeneral) vr.elementAt(i);// se recore el vector "v" y se va llenando la clase "Reporte"
%> 
                                <tr>
                                    <td><%=re.codigo_buzon%></td>
                                    <td><%=re.fecha%></td>
                                    <td><%=re.empresa %></td>
                                    <td><%=re.asunto%></td>
                                    <td><%=re.detalle_asunto%></td>
                                </tr>
                                <%    }%>    
                            </tbody>

                        </table>
                        <div>
                            <a href="GraficoBuzon_servlet?fedesde=<%=desde%>&fehasta=<%=hasta%>" class="btn btn-primary float-right mt-3">Ver Gráfica</a>
                            <a href="Dashboard_RRHH.jsp"  class="btn btn-primary float-left mt-3 ">Regresar</a>
                        </div>
                    </div>
                </div>
            </div> 
        </div>
        <!-- jQuery, Popper.js, Bootstrap JS -->                   
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>

        <!-- datatables JS con botones -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/1.10.24/js/dataTables.bootstrap4.min.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.7.0/js/dataTables.buttons.min.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.7.0/js/buttons.bootstrap4.min.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.7.0/js/buttons.html5.min.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.7.0/js/buttons.print.min.js"></script>   

        <!-- código JS propìo--> 
        <script type="text/javascript" src="tablaDatos.js"></script>

    </body>
</html>
<%
} else {
%>
No se puede acceder a la información si no ingresa al sistema
<%
    }
%>