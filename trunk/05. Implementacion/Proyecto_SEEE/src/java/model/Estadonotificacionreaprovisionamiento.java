package model;
// Generated 07-jun-2010 21:59:35 by Hibernate Tools 3.2.1.GA


import java.util.HashSet;
import java.util.Set;

/**
 * Estadonotificacionreaprovisionamiento generated by hbm2java
 */
public class Estadonotificacionreaprovisionamiento  implements java.io.Serializable {


     private Integer id;
     private String nombre;
     private Set notificacionreaprovisionamientos = new HashSet(0);

    public Estadonotificacionreaprovisionamiento() {
    }

	
    public Estadonotificacionreaprovisionamiento(String nombre) {
        this.nombre = nombre;
    }
    public Estadonotificacionreaprovisionamiento(String nombre, Set notificacionreaprovisionamientos) {
       this.nombre = nombre;
       this.notificacionreaprovisionamientos = notificacionreaprovisionamientos;
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
    public Set getNotificacionreaprovisionamientos() {
        return this.notificacionreaprovisionamientos;
    }
    
    public void setNotificacionreaprovisionamientos(Set notificacionreaprovisionamientos) {
        this.notificacionreaprovisionamientos = notificacionreaprovisionamientos;
    }




}


