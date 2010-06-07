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
 * Detallefactura generated by hbm2java
 */
@Entity
@Table(name="detallefactura"
    ,catalog="seee"
)
public class Detallefactura  implements java.io.Serializable {


     private Integer id;
     private Detallepedidoproductosterminados detallepedidoproductosterminados;
     private Factura factura;

    public Detallefactura() {
    }

	
    public Detallefactura(Factura factura) {
        this.factura = factura;
    }
    public Detallefactura(Detallepedidoproductosterminados detallepedidoproductosterminados, Factura factura) {
       this.detallepedidoproductosterminados = detallepedidoproductosterminados;
       this.factura = factura;
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
    @JoinColumn(name="idDetallePedidoProductosTerminados")
    public Detallepedidoproductosterminados getDetallepedidoproductosterminados() {
        return this.detallepedidoproductosterminados;
    }
    
    public void setDetallepedidoproductosterminados(Detallepedidoproductosterminados detallepedidoproductosterminados) {
        this.detallepedidoproductosterminados = detallepedidoproductosterminados;
    }
@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="idFactura", nullable=false)
    public Factura getFactura() {
        return this.factura;
    }
    
    public void setFactura(Factura factura) {
        this.factura = factura;
    }




}


