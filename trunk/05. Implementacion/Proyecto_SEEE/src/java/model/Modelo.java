package model;
// Generated 07-jun-2010 21:59:35 by Hibernate Tools 3.2.1.GA


import java.util.HashSet;
import java.util.Set;

/**
 * Modelo generated by hbm2java
 */
public class Modelo  implements java.io.Serializable {


     private Integer id;
     private String nombre;
     private Integer nroSerie;
     private Set productoterminados = new HashSet(0);

    public Modelo() {
    }

	
    public Modelo(String nombre) {
        this.nombre = nombre;
    }
    public Modelo(String nombre, Integer nroSerie, Set productoterminados) {
       this.nombre = nombre;
       this.nroSerie = nroSerie;
       this.productoterminados = productoterminados;
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
    public Integer getNroSerie() {
        return this.nroSerie;
    }
    
    public void setNroSerie(Integer nroSerie) {
        this.nroSerie = nroSerie;
    }
    public Set getProductoterminados() {
        return this.productoterminados;
    }
    
    public void setProductoterminados(Set productoterminados) {
        this.productoterminados = productoterminados;
    }




}

