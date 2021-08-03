/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

/**
 *
 * @author User
 */
public class BeanGraficoBuzon {
    public String empresa ;
    public int total;
    public String Tipo_asunto ;

    public BeanGraficoBuzon(String empresa, int total, String Tipo_asunto) {
        this.empresa = empresa;
        this.total = total;
        this.Tipo_asunto = Tipo_asunto;
    }

    public BeanGraficoBuzon() {
    }

    public String getEmpresa() {
        return empresa;
    }

    public void setEmpresa(String empresa) {
        this.empresa = empresa;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public String getTipo_asunto() {
        return Tipo_asunto;
    }

    public void setTipo_asunto(String Tipo_asunto) {
        this.Tipo_asunto = Tipo_asunto;
    }


    

   
    

    
    
   
    
}
