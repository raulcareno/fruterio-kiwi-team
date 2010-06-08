package model;
// Generated 07-jun-2010 21:59:35 by Hibernate Tools 3.2.1.GA


import java.util.HashSet;
import java.util.Set;

/**
 * Tipodefecto generated by hbm2java
 */
public class Tipodefecto  implements java.io.Serializable {


     private Integer id;
     private String nombre;
     private Set productosdefectuososes = new HashSet(0);

    public Tipodefecto() {
    }

	
    public Tipodefecto(String nombre) {
        this.nombre = nombre;
    }
    public Tipodefecto(String nombre, Set productosdefectuososes) {
       this.nombre = nombre;
       this.productosdefectuososes = productosdefectuososes;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public Set getProductosdefectuososes() {
        return this.productosdefectuososes;
    }
    
    public void setProductosdefectuososes(Set productosdefectuososes) {
        this.productosdefectuososes = productosdefectuososes;
    }




}


