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
public class BeanReporteReUsuario {
    public int codigo_test;
     public Date fecha ;    
     public String nombre;  
     public String apellido;
     public int codigoPregunta;
      public String pregunta;
      public String respuesta;

    public BeanReporteReUsuario(int codigo_test, Date fecha, String nombre, String apellido, int codigoPregunta, String pregunta, String respuesta) {
        this.codigo_test = codigo_test;
        this.fecha = fecha;
        this.nombre = nombre;
        this.apellido = apellido;
        this.codigoPregunta = codigoPregunta;
        this.pregunta = pregunta;
        this.respuesta = respuesta;
    }

    public BeanReporteReUsuario() {
    }

    public int getCodigo_test() {
        return codigo_test;
    }

    public void setCodigo_test(int codigo_test) {
        this.codigo_test = codigo_test;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public int getCodigoPregunta() {
        return codigoPregunta;
    }

    public void setCodigoPregunta(int codigoPregunta) {
        this.codigoPregunta = codigoPregunta;
    }

    public String getPregunta() {
        return pregunta;
    }

    public void setPregunta(String pregunta) {
        this.pregunta = pregunta;
    }

    public String getRespuesta() {
        return respuesta;
    }

    public void setRespuesta(String respuesta) {
        this.respuesta = respuesta;
    }

    
     
}
