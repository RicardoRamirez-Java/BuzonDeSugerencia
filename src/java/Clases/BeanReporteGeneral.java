/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import java.sql.Date;

/**
 *
 * @author User
 */
public class BeanReporteGeneral {
    public int codigo_buzon;
     public Date fecha ; 
     public String empresa;
     public String asunto;  
     public String detalle_asunto;

    public BeanReporteGeneral(int codigo_buzon, Date fecha, String empresa, String asunto, String detalle_asunto) {
        this.codigo_buzon = codigo_buzon;
        this.fecha = fecha;
        this.empresa = empresa;
        this.asunto = asunto;
        this.detalle_asunto = detalle_asunto;
    }

    public BeanReporteGeneral() {
    }

    public int getCodigo_buzon() {
        return codigo_buzon;
    }

    public void setCodigo_buzon(int codigo_buzon) {
        this.codigo_buzon = codigo_buzon;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getEmpresa() {
        return empresa;
    }

    public void setEmpresa(String empresa) {
        this.empresa = empresa;
    }

    public String getAsunto() {
        return asunto;
    }

    public void setAsunto(String asunto) {
        this.asunto = asunto;
    }

    public String getDetalle_asunto() {
        return detalle_asunto;
    }

    public void setDetalle_asunto(String detalle_asunto) {
        this.detalle_asunto = detalle_asunto;
    }

    
     
}
