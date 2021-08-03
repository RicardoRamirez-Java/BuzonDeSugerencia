

<%@page import="Clases.BeanGraficoBuzon"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

    Vector v = (Vector) session.getAttribute("vectorDatosGrafico");//recupero ell vetor lleno con lso datos de la base de datos

    String etiquetas = "";
    String valor2 = "";
    String valor1 = "";
  String etiquetas2 = "";

    for (int i = 0; i < v.size(); i++) {
        BeanGraficoBuzon d = (BeanGraficoBuzon) v.elementAt(i);
                               
      
           
           if(d.empresa.equals("cogescorp")){
            etiquetas = etiquetas + "'" + d.Tipo_asunto + "',"; 
             valor1 = valor1 + d.total + ","; 
          }
     
          if(d.empresa.equals("collserv")){
              etiquetas2 = etiquetas2 + "'" + d.Tipo_asunto + "',";
             valor2 = valor2 + d.total + ","; 
          }  
     
      

    }
    

%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.3/dist/Chart.min.js"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">

        <title>Gráfico</title>
    </head>
    <body>
        <style>
            .container{
    text-align: center;
     padding-top: 150px ; /*para fijar la cabezera (paso2) poner el conetender o body del alto de la cabezera*/ 
  }
        </style>
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
        <div class="container mt-3">
            <div class="row">
                <div class="col-lg-12">
                    <h1>Gráfico Representativo</h1>
                    <hr>
                </div>

                <div class="col-lg-6">
                    <div id="container" style="width: 100%;"><div class="chartjs-size-monitor"><div class="chartjs-size-monitor-expand"></div><div class="chartjs-size-monitor-shrink"></div></div>
                        <canvas id="myChart" width="1428" height="600" class="chartjs-render-monitor"></canvas>	
                    </div> 
                </div>
                 <div class="col-lg-6">
                    <div id="container" style="width: 100%;"><div class="chartjs-size-monitor"><div class="chartjs-size-monitor-expand"></div><div class="chartjs-size-monitor-shrink"></div></div>
                        <canvas id="myChart1" width="1428" height="600" class="chartjs-render-monitor"></canvas>	
                    </div> 
                </div>


            </div>
            <div class="row">
                <div class="col-lg-12">
                    <a href="TablaPaginacion.jsp" class="btn btn-primary ">Regresar</a>
                </div>
            </div>
            
 </div>
            <script>
                var ctx = document.getElementById('myChart').getContext('2d');
                var myChart = new Chart(ctx, {
                    type: 'bar',
                    data: {
                        labels: [<%=etiquetas%>],
                        datasets: [{
                                label: 'COGESCORP',
                                data: [<%=valor1%>],
                                backgroundColor: [
                                    'rgba(255, 99, 132, 0.3)',
                                    'rgba(255, 99, 132, 0.3)',
                                    'rgba(255, 99, 132, 0.3)',
                                    'rgba(255, 99, 132, 0.3)',
                                    'rgba(255, 99, 132, 0.3)'
                                ],
                                borderColor: [
                                   'rgba(255, 99, 132, 0.3)',
                                    'rgba(255, 99, 132, 0.3)',
                                    'rgba(255, 99, 132, 0.3)',
                                    'rgba(255, 99, 132, 0.3)',
                                    'rgba(255, 99, 132, 0.2)'

                                ],
                                borderWidth: 1
                            }

                        ]
                    },

                    options: {
                        scales: {
                            yAxes: [{
                                    ticks: {
                                        beginAtZero: true
                                    }
                                }]
                        }
                    }
                });
                
                 var ctx = document.getElementById('myChart1').getContext('2d');
                var myChart = new Chart(ctx, {
                    type: 'bar',
                    data: {
                        labels: [<%=etiquetas2%>],
                        datasets: [{
                                label: 'COLLSERV',
                                data: [<%=valor2%>],
                                backgroundColor: [
                                    'rgba(13, 89, 61, 0.3)',
                                    'rgba(13, 89, 61, 0.3)',
                                    'rgba(13, 89, 61, 0.3)',
                                    'rgba(13, 89, 61, 0.3)',
                                   'rgba(13, 89, 61, 0.3)'
                                ],
                                borderColor: [
                                  'rgba(13, 89, 61, 0.3)',
                                   'rgba(13, 89, 61, 0.3)',
                                   'rgba(13, 89, 61, 0.3)',
                                   'rgba(13, 89, 61, 0.3)',
                                   'rgba(13, 89, 61, 0.3)'

                                ],
                                borderWidth: 1
                            }

                        ]
                    },

                    options: {
                        scales: {
                            yAxes: [{
                                    ticks: {
                                        beginAtZero: true
                                    }
                                }]
                        }
                    }
                });
            </script>
    </body>
</html>
