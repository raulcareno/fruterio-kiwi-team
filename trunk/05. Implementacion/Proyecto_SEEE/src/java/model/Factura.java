package model;
// Generated 07-jun-2010 1:17:21 by Hibernate Tools 3.2.1.GA


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

/**
 * Factura generated by hbm2java
 */
@Entity
@Table(name="factura"
    ,catalog="seee"
)
public class Factura  implements java.io.Serializable {


     private Integer id;
     private Pedidoproductosterminados pedidoproductosterminados;
     private Tipofactura tipofactura;
     private Set<Detallefactura> detallefacturas = new HashSet<Detallefactura>(0);

    public Factura() {
    }

	
    public Factura(Tipofactura tipofactura) {
        this.tipofactura = tipofactura;
    }
    public Factura(Pedidoproductosterminados pedidoproductosterminados, Tipofactura tipofactura, Set<Detallefactura> detallefacturas) {
       this.pedidoproductosterminados = pedidoproductosterminados;
       this.tipofactura = tipofactura;
       this.detallefacturas = detallefacturas;
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
    @JoinColumn(name="idPedidoProductosTerminados")
    public Pedidoproductosterminados getPedidoproductosterminados() {
        return this.pedidoproductosterminados;
    }
    
    public void setPedidoproductosterminados(Pedidoproductosterminados pedidoproductosterminados) {
        this.pedidoproductosterminados = pedidoproductosterminados;
    }
@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="idTipoFactura", nullable=false)
    public Tipofactura getTipofactura() {
        return this.tipofactura;
    }
    
    public void setTipofactura(Tipofactura tipofactura) {
        this.tipofactura = tipofactura;
    }
@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="factura")
    public Set<Detallefactura> getDetallefacturas() {
        return this.detallefacturas;
    }
    
    public void setDetallefacturas(Set<Detallefactura> detallefacturas) {
        this.detallefacturas = detallefacturas;
    }




}


