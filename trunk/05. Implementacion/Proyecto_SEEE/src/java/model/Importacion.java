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
 * Importacion generated by hbm2java
 */
@Entity
@Table(name="importacion"
    ,catalog="seee"
)
public class Importacion  implements java.io.Serializable {


     private Integer id;
     private Compra compra;
     private Date fecha;
     private String lugarOrigen;
     private Float pagoAduana;
     private Date fechaEmbarque;
     private Set<Ordencompraximportacion> ordencompraximportacions = new HashSet<Ordencompraximportacion>(0);

    public Importacion() {
    }

	
    public Importacion(Compra compra, Date fecha, String lugarOrigen) {
        this.compra = compra;
        this.fecha = fecha;
        this.lugarOrigen = lugarOrigen;
    }
    public Importacion(Compra compra, Date fecha, String lugarOrigen, Float pagoAduana, Date fechaEmbarque, Set<Ordencompraximportacion> ordencompraximportacions) {
       this.compra = compra;
       this.fecha = fecha;
       this.lugarOrigen = lugarOrigen;
       this.pagoAduana = pagoAduana;
       this.fechaEmbarque = fechaEmbarque;
       this.ordencompraximportacions = ordencompraximportacions;
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
    @JoinColumn(name="idCompra", nullable=false)
    public Compra getCompra() {
        return this.compra;
    }
    
    public void setCompra(Compra compra) {
        this.compra = compra;
    }
    @Temporal(TemporalType.DATE)
    @Column(name="fecha", nullable=false, length=10)
    public Date getFecha() {
        return this.fecha;
    }
    
    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }
    
    @Column(name="lugarOrigen", nullable=false, length=20)
    public String getLugarOrigen() {
        return this.lugarOrigen;
    }
    
    public void setLugarOrigen(String lugarOrigen) {
        this.lugarOrigen = lugarOrigen;
    }
    
    @Column(name="pagoAduana", precision=9)
    public Float getPagoAduana() {
        return this.pagoAduana;
    }
    
    public void setPagoAduana(Float pagoAduana) {
        this.pagoAduana = pagoAduana;
    }
    @Temporal(TemporalType.DATE)
    @Column(name="fechaEmbarque", length=10)
    public Date getFechaEmbarque() {
        return this.fechaEmbarque;
    }
    
    public void setFechaEmbarque(Date fechaEmbarque) {
        this.fechaEmbarque = fechaEmbarque;
    }
@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="importacion")
    public Set<Ordencompraximportacion> getOrdencompraximportacions() {
        return this.ordencompraximportacions;
    }
    
    public void setOrdencompraximportacions(Set<Ordencompraximportacion> ordencompraximportacions) {
        this.ordencompraximportacions = ordencompraximportacions;
    }




}

