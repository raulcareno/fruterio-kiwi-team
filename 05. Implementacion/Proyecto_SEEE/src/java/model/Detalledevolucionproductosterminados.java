package model;
// Generated 07-jun-2010 1:17:21 by Hibernate Tools 3.2.1.GA


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * Detalledevolucionproductosterminados generated by hbm2java
 */
@Entity
@Table(name="detalledevolucionproductosterminados"
    ,catalog="seee"
)
public class Detalledevolucionproductosterminados  implements java.io.Serializable {


     private Integer id;
     private Detalleventa detalleventa;
     private Devolucionproductosterminados devolucionproductosterminados;

    public Detalledevolucionproductosterminados() {
    }

    public Detalledevolucionproductosterminados(Detalleventa detalleventa, Devolucionproductosterminados devolucionproductosterminados) {
       this.detalleventa = detalleventa;
       this.devolucionproductosterminados = devolucionproductosterminados;
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
    @JoinColumn(name="idDetalleVenta", nullable=false)
    public Detalleventa getDetalleventa() {
        return this.detalleventa;
    }
    
    public void setDetalleventa(Detalleventa detalleventa) {
        this.detalleventa = detalleventa;
    }
@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="idDevolucionProductosTerminados", nullable=false)
    public Devolucionproductosterminados getDevolucionproductosterminados() {
        return this.devolucionproductosterminados;
    }
    
    public void setDevolucionproductosterminados(Devolucionproductosterminados devolucionproductosterminados) {
        this.devolucionproductosterminados = devolucionproductosterminados;
    }




}


