package model;
// Generated 07-jun-2010 21:59:35 by Hibernate Tools 3.2.1.GA



/**
 * Rentabilidadcliente generated by hbm2java
 */
public class Rentabilidadcliente  implements java.io.Serializable {


     private Integer id;
     private Empresacliente empresacliente;
     private float coeficiente;

    public Rentabilidadcliente() {
    }

    public Rentabilidadcliente(Empresacliente empresacliente, float coeficiente) {
       this.empresacliente = empresacliente;
       this.coeficiente = coeficiente;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public Empresacliente getEmpresacliente() {
        return this.empresacliente;
    }
    
    public void setEmpresacliente(Empresacliente empresacliente) {
        this.empresacliente = empresacliente;
    }
    public float getCoeficiente() {
        return this.coeficiente;
    }
    
    public void setCoeficiente(float coeficiente) {
        this.coeficiente = coeficiente;
    }




}


