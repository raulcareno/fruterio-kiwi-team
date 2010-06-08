package model;
// Generated 07-jun-2010 21:59:35 by Hibernate Tools 3.2.1.GA


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Cobropedido generated by hbm2java
 */
public class Cobropedido  implements java.io.Serializable {


     private Integer id;
     private Estadocobropedido estadocobropedido;
     private Date fechaCobro;
     private Set ventas = new HashSet(0);
     private Set detallecobropedidos = new HashSet(0);

    public Cobropedido() {
    }

	
    public Cobropedido(Estadocobropedido estadocobropedido, Date fechaCobro) {
        this.estadocobropedido = estadocobropedido;
        this.fechaCobro = fechaCobro;
    }
    public Cobropedido(Estadocobropedido estadocobropedido, Date fechaCobro, Set ventas, Set detallecobropedidos) {
       this.estadocobropedido = estadocobropedido;
       this.fechaCobro = fechaCobro;
       this.ventas = ventas;
       this.detallecobropedidos = detallecobropedidos;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public Estadocobropedido getEstadocobropedido() {
        return this.estadocobropedido;
    }
    
    public void setEstadocobropedido(Estadocobropedido estadocobropedido) {
        this.estadocobropedido = estadocobropedido;
    }
    public Date getFechaCobro() {
        return this.fechaCobro;
    }
    
    public void setFechaCobro(Date fechaCobro) {
        this.fechaCobro = fechaCobro;
    }
    public Set getVentas() {
        return this.ventas;
    }
    
    public void setVentas(Set ventas) {
        this.ventas = ventas;
    }
    public Set getDetallecobropedidos() {
        return this.detallecobropedidos;
    }
    
    public void setDetallecobropedidos(Set detallecobropedidos) {
        this.detallecobropedidos = detallecobropedidos;
    }




}


