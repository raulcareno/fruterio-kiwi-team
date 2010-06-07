package model;
// Generated 07-jun-2010 1:17:21 by Hibernate Tools 3.2.1.GA


import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Viajante generated by hbm2java
 */
@Entity
@Table(name="viajante"
    ,catalog="seee"
)
public class Viajante  implements java.io.Serializable {


     private int idPersona;
     private Persona persona;
     private Detallecartera detallecartera;
     private int comisionPorVenta;
     private Set<Pedidoproductosterminados> pedidoproductosterminadoses = new HashSet<Pedidoproductosterminados>(0);
     private Set<Devolucionproductosterminados> devolucionproductosterminadoses = new HashSet<Devolucionproductosterminados>(0);
     private Set<Barrio> barrios = new HashSet<Barrio>(0);

    public Viajante() {
    }

	
    public Viajante(int idPersona, Persona persona, Detallecartera detallecartera, int comisionPorVenta) {
        this.idPersona = idPersona;
        this.persona = persona;
        this.detallecartera = detallecartera;
        this.comisionPorVenta = comisionPorVenta;
    }
    public Viajante(int idPersona, Persona persona, Detallecartera detallecartera, int comisionPorVenta, Set<Pedidoproductosterminados> pedidoproductosterminadoses, Set<Devolucionproductosterminados> devolucionproductosterminadoses, Set<Barrio> barrios) {
       this.idPersona = idPersona;
       this.persona = persona;
       this.detallecartera = detallecartera;
       this.comisionPorVenta = comisionPorVenta;
       this.pedidoproductosterminadoses = pedidoproductosterminadoses;
       this.devolucionproductosterminadoses = devolucionproductosterminadoses;
       this.barrios = barrios;
    }
   
     @Id 
    
    @Column(name="idPersona", unique=true, nullable=false)
    public int getIdPersona() {
        return this.idPersona;
    }
    
    public void setIdPersona(int idPersona) {
        this.idPersona = idPersona;
    }
@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="idPersona", unique=true, nullable=false, insertable=false, updatable=false)
    public Persona getPersona() {
        return this.persona;
    }
    
    public void setPersona(Persona persona) {
        this.persona = persona;
    }
@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="idDetalleCartera", nullable=false)
    public Detallecartera getDetallecartera() {
        return this.detallecartera;
    }
    
    public void setDetallecartera(Detallecartera detallecartera) {
        this.detallecartera = detallecartera;
    }
    
    @Column(name="comisionPorVenta", nullable=false)
    public int getComisionPorVenta() {
        return this.comisionPorVenta;
    }
    
    public void setComisionPorVenta(int comisionPorVenta) {
        this.comisionPorVenta = comisionPorVenta;
    }
@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="viajante")
    public Set<Pedidoproductosterminados> getPedidoproductosterminadoses() {
        return this.pedidoproductosterminadoses;
    }
    
    public void setPedidoproductosterminadoses(Set<Pedidoproductosterminados> pedidoproductosterminadoses) {
        this.pedidoproductosterminadoses = pedidoproductosterminadoses;
    }
@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="viajante")
    public Set<Devolucionproductosterminados> getDevolucionproductosterminadoses() {
        return this.devolucionproductosterminadoses;
    }
    
    public void setDevolucionproductosterminadoses(Set<Devolucionproductosterminados> devolucionproductosterminadoses) {
        this.devolucionproductosterminadoses = devolucionproductosterminadoses;
    }
@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="viajante")
    public Set<Barrio> getBarrios() {
        return this.barrios;
    }
    
    public void setBarrios(Set<Barrio> barrios) {
        this.barrios = barrios;
    }




}


