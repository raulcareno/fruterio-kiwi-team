package model;
// Generated 07-jun-2010 21:59:35 by Hibernate Tools 3.2.1.GA



/**
 * Accesorio generated by hbm2java
 */
public class Accesorio  implements java.io.Serializable {


     private Integer id;
     private Productoterminado productoterminado;
     private Tipoaccesorio tipoaccesorio;
     private String nombre;

    public Accesorio() {
    }

    public Accesorio(Productoterminado productoterminado, Tipoaccesorio tipoaccesorio, String nombre) {
       this.productoterminado = productoterminado;
       this.tipoaccesorio = tipoaccesorio;
       this.nombre = nombre;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public Productoterminado getProductoterminado() {
        return this.productoterminado;
    }
    
    public void setProductoterminado(Productoterminado productoterminado) {
        this.productoterminado = productoterminado;
    }
    public Tipoaccesorio getTipoaccesorio() {
        return this.tipoaccesorio;
    }
    
    public void setTipoaccesorio(Tipoaccesorio tipoaccesorio) {
        this.tipoaccesorio = tipoaccesorio;
    }
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }




}


