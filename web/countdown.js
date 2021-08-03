window.onload = function ()
{
    const respuestaServlet = window.location.search;//se obtiene los parametros que manda el servlet por la url 
    const urlServlet = new URLSearchParams(respuestaServlet);// creamos la instancia para poder extrear los valores del parametro enviado por el servlet 
    const capturaRespuesta = urlServlet.get('msj');//accedemos a los valores (argumentos)
    if (capturaRespuesta !== null) { // condicionamos para mostrar el modal
        $('#staticBackdrop2').modal('toggle');
      
    }else if(capturaRespuesta === null){
       $('#staticBackdrop').modal('toggle'); 
    }
        
    };

//metodo para el autoscroling (recorre cada elemento despues de seleccionar una respuesta)
function siguiente(element) {
    let item = document.getElementById(element); // se ccaptura el elemento enviado como argumento desde el jsp
    let body = $('body'); // se captura el elemento bodi
    let item2 = $('header', body);// se captura el elemento header junto con el body 
    let espacio = 20;//se asigana un espacio entre los elementos 
    $('html,body,header').animate({
        scrollTop: $(item).offset().top - item2.outerHeight() - espacio // auto scroll haciendo referencia al header fijo y un espacio
    });
}


