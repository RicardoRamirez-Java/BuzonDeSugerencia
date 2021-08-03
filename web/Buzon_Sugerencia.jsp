
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    /*String usuario = (String) session.getAttribute("usuario");
    String m = request.getParameter("msj");
    if (usuario != null) {*/

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
        <link rel="icon" type="image/png" href="Imagenes/icons/favicon.ico"/>
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
        <link rel="stylesheet" type="text/css" href="estilosCss/main.css">
        <title>Preguntas</title>
    </head>
    <body>    
        <!-- Modal -->
        <div  class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel">Buzon de Sugerencias</h5>                       
                    </div>
                    <div class="modal-body">
                        <p>
                     Este buzon de sugerencias es un recurso de comunicación para dar voz a las distintas ideas de mejora, propuestas de soluciones, quejas e iniciativas que los trabajadores puedan aportar a la organización a través de esta sencilla forma de diálogo.
                 </p>
                       
                    </div>
                    <div class="modal-footer">
                        <a href="Login.jsp" type="button" class="btn btn-primary">Cancelar</a>
                        <button type="button" class="btn btn-primary " data-dismiss="modal">Aceptar</button>
                    </div>
                </div>
            </div>
        </div>
        <div  class="modal fade" id="staticBackdrop2" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel">Encuesta enviada.!</h5>                       
                    </div>
                    <div class="modal-body">
                        <p>
                            Gracias por ayudarnos a mejorar
                        </p>                      
                    </div>
                    <div class="modal-footer">
                        <a href="http://190.154.154.43:8080/BuzonSugerencia/Login.jsp" type="button" class="btn btn-primary">Aceptar</a>                      
                    </div>
                </div>
            </div>
        </div>

 <header class="fixed-top " style=" background: -webkit-linear-gradient(45deg, #FCEBDA 48%, #DCFCDA 48%);
    background: -webkit-linear-gradient(left, #FCEBDA 48%, #DCFCDA 48%);
    background: linear-gradient(45deg, #FCEBDA 48%, #DCFCDA 48%);"  >
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12 col-sm-12 col-md-6 mb-3">
                        <!-- 
                                mx-auto
                                rounded
                        -->
                        <img class="float-left " width="350" src="Imagenes/logo2.png" alt="">
                    </div>   
                     <div class="col-12 col-sm-12 col-md-6 mb-3">
                        <!-- 
                                mx-auto
                                rounded
                        -->
                        <img class="float-right mt-3 " width="350" src="Imagenes/COLLSERV-Logo.png" alt="">
                    </div> 
                </div>   
            </div>           
        </header> 
        
        <div class="container-contact100">
            <div class="wrap-contact100">
                <div class="contact100-form-title" style="background-image: url(Imagenes/bg-01.jpg);">
                    <span class="contact100-form-title-1">
                        BUZON DE OBSERVACIONES Y SUGERENCIAS
                    </span>

                    <span class="contact100-form-title-2">
                        Sientete libre de expresarte..! este formulario es completamente anónimo
                    </span>
                </div>
                <div class="row mt-3">
                    <div class="col">
                        <form action="Guarda_Servlet">
                            <div class="col-12 col-md-12 mb-3">
                                <div>
                                    <label>Seleccione un asunto</label>
                                </div>

                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="asunto" id="exampleRadios1" value="Queja" required>
                                    <label class="form-check-label" for="exampleRadios1">
                                        Queja
                                    </label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="asunto" id="exampleRadios2" value="Reclamo" required>
                                    <label class="form-check-label" for="exampleRadios2">
                                        Reclamo
                                    </label>
                                </div>

                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="asunto" id="exampleRadios3" value="Observación" required>
                                    <label class="form-check-label" for="exampleRadios3">
                                        Observación
                                    </label>
                                </div>

                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="asunto" id="exampleRadios4" value="Sugerencia" required>
                                    <label class="form-check-label" for="exampleRadios4">
                                        Sugerencia
                                    </label>
                                </div>  
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="asunto" id="exampleRadios5" value="Felicitación" required>
                                    <label class="form-check-label" for="exampleRadios5">
                                        Felicitación
                                    </label>
                                </div> 
                            </div>				
                            <div class="form-group row">
                                <div class="col-12 col-md-12 mb-3">
                                    <label for="mensaje">Descríbenos el asunto</label>
                                    <textarea name="detalle" id="mensaje" class="form-control" required></textarea>
                                </div>													
                            </div>	
                            <div class="form-group row">
                                <div class="col-12 text-center">								
                                    <div class="row justify-content-center">
                                        <div class="col-12 col-sm-9 col-md-4">
                                            <button class="btn btn-primary btn-block" type="submit">Enviar</button>
                                        </div>
                                    </div>
                                </div>
                            </div>	
                        </form>
                    </div>
                </div>
            </div>
        </div> 
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="countdown.js"></script>       

    </body>
</html>
