/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

/**
 *
 * @author Ricardo Ramirez
 */
public class BeanDetalleBuzon {
     public int codigoBuzon;    
     public String  asunto;  
     public String detalleAsunto; 

    public BeanDetalleBuzon(int codigoBuzon, String asunto, String detalleAsunto) {
        this.codigoBuzon = codigoBuzon;
        this.asunto = asunto;
        this.detalleAsunto = detalleAsunto;
    }

    public BeanDetalleBuzon() {
    }

    public int getCodigoBuzon() {
        return codigoBuzon;
    }

    public void setCodigoBuzon(int codigoBuzon) {
        this.codigoBuzon = codigoBuzon;
    }

    public String getAsunto() {
        return asunto;
    }

    public void setAsunto(String asunto) {
        this.asunto = asunto;
    }

    public String getDetalleAsunto() {
        return detalleAsunto;
    }

    public void setDetalleAsunto(String detalleAsunto) {
        this.detalleAsunto = detalleAsunto;
    }

         
}
