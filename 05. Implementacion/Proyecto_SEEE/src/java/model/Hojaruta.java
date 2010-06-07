package model;
// Generated 07-jun-2010 1:17:21 by Hibernate Tools 3.2.1.GA


import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Hojaruta generated by hbm2java
 */
@Entity
@Table(name="hojaruta"
    ,catalog="seee"
)
public class Hojaruta  implements java.io.Serializable {


     private Integer id;
     private Domicilio domicilio;
     private Date fecha;
     private Set<Detallehojaruta> detallehojarutas = new HashSet<Detallehojaruta>(0);

    public Hojaruta() {
    }

	
    public Hojaruta(Domicilio domicilio, Date fecha) {
        this.domicilio = domicilio;
        this.fecha = fecha;
    }
    public Hojaruta(Domicilio domicilio, Date fecha, Set<Detallehojaruta> detallehojarutas) {
       this.domicilio = domicilio;
       this.fecha = fecha;
       this.detallehojarutas = detallehojarutas;
    }
   
     @Id @GeneratedValue(strategy=IDENTITY)
    
    @Column(name="id", unique=true, nullable=false)
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="idPosicionViajante", nullable=false)
    public Domicilio getDomicilio() {
        return this.domicilio;
    }
    
    public void setDomicilio(Domicilio domicilio) {
        this.domicilio = domicilio;
    }
    @Temporal(TemporalType.DATE)
    @Column(name="fecha", nullable=false, length=10)
    public Date getFecha() {
        return this.fecha;
    }
    
    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }
@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="hojaruta")
    public Set<Detallehojaruta> getDetallehojarutas() {
        return this.detallehojarutas;
    }
    
    public void setDetallehojarutas(Set<Detallehojaruta> detallehojarutas) {
        this.detallehojarutas = detallehojarutas;
    }




}


