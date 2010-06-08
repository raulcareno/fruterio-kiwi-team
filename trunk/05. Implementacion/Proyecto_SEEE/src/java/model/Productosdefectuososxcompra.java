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
 * Productosdefectuososxcompra generated by hbm2java
 */
@Entity
@Table(name="productosdefectuososxcompra"
    ,catalog="seee"
)
public class Productosdefectuososxcompra  implements java.io.Serializable {


     private Integer id;
     private Compra compra;
     private Productosdefectuosos productosdefectuosos;

    public Productosdefectuososxcompra() {
    }

    public Productosdefectuososxcompra(Compra compra, Productosdefectuosos productosdefectuosos) {
       this.compra = compra;
       this.productosdefectuosos = productosdefectuosos;
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
@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="idProductosDefectuosos", nullable=false)
    public Productosdefectuosos getProductosdefectuosos() {
        return this.productosdefectuosos;
    }
    
    public void setProductosdefectuosos(Productosdefectuosos productosdefectuosos) {
        this.productosdefectuosos = productosdefectuosos;
    }




}

