<%-- 
    Document   : Dashboard_RRHH
    Created on : 22/02/2021, 10:48:54
    Author     : User
--%>
<%
    String usuario = (String) session.getAttribute("usuario");
    if (usuario != null) {
%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!--Bootsrap 4 CDN-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
        <!--Bootsrap DatePicker-->
           
        <link rel="stylesheet"type="text/css" href="estilosCss/estiloDashboard.css"> 
 
        <title>Recursos Humanos</title>
    </head>
    <body>
        <style>
            .card-header h3 {
                color: tomato;
            }
            .card-text{
                color: white;
            }
        </style>

        <div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel">Seleccione el rango de fecha</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="ReporteBuzon_Servlet">
                            <div class="row">
                                <div class="col-12 col-md-6 mb-3">
                             
                                        <label>
                                            Desde<input type="date" class="form-control" name="fdesde" required>
                                        </label>                                
                                </div>
                                <div class="col-12 col-md-6 mb-3">
                                  
                                        <label>
                                            Hasta<input type="date" class="form-control"name="fhasta" required="">
                                        </label>

                            
                                </div>
                            </div>
                            <div class="form-group">
                                <input type="submit" value="Aceptar" class="btn btn btn-primary float-right ">
                            </div>
                        </form>
                    </div>                   
                </div>
            </div>
        </div> 
        <img class="rounded " src="Imagenes/logo2-removebg-preview.png"  alt="LogoCogescorp">   
        <div class="container h-75"> 
            <div class="d-flex justify-content-center h-75">
                <div class="row">
                    <div class="col-sm-6 col-lg-12 ">
                        <div class="card">
                            <div class="card-header">
                                <h3>Reporte Buzon</h3>         
                            </div>
                            <div class="card-body">
                                <p class="card-text">Muestra reporte por fecha</p>                              
                                <button id="botonModal" type="button" class="btn login_btn" >
                                    Ver Reporte
                                </button>
                            </div>
                        </div>
                    </div>              
                    <div class="col-sm-6 col-lg-12">
                        <div class="card">
                            <div class="card-header">
                                <h3>Salir del Sistema</h3>         
                            </div>
                            <div class="card-body">
                                <p class="card-text">Regresa a la página de Login.</p>
                                <a href="Login.jsp" class="btn login_btn">Salir</a>
                            </div>
                        </div>
                    </div>
                </div>               
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>         
        <script>
            $('#botonModal').on("click", function () {
                $('#staticBackdrop').modal('toggle');
            });
        </script>

    </body>
</html>
<%
} else {
%>
No se puede acceder a la información si no ingresa al sistema
<%
    }
%>