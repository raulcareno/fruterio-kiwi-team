package model;
// Generated 07-jun-2010 1:17:21 by Hibernate Tools 3.2.1.GA


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * Productofabricado generated by hbm2java
 */
@Entity
@Table(name="productofabricado"
    ,catalog="seee"
)
public class Productofabricado  implements java.io.Serializable {


     private int idProductoTerminado;
     private Productoterminado productoterminado;
     private float costoProduccion;

    public Productofabricado() {
    }

    public Productofabricado(int idProductoTerminado, Productoterminado productoterminado, float costoProduccion) {
       this.idProductoTerminado = idProductoTerminado;
       this.productoterminado = productoterminado;
       this.costoProduccion = costoProduccion;
    }
   
     @Id 
    
    @Column(name="idProductoTerminado", unique=true, nullable=false)
    public int getIdProductoTerminado() {
        return this.idProductoTerminado;
    }
    
    public void setIdProductoTerminado(int idProductoTerminado) {
        this.idProductoTerminado = idProductoTerminado;
    }
@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="idProductoTerminado", unique=true, nullable=false, insertable=false, updatable=false)
    public Productoterminado getProductoterminado() {
        return this.productoterminado;
    }
    
    public void setProductoterminado(Productoterminado productoterminado) {
        this.productoterminado = productoterminado;
    }
    
    @Column(name="costoProduccion", nullable=false, precision=9)
    public float getCostoProduccion() {
        return this.costoProduccion;
    }
    
    public void setCostoProduccion(float costoProduccion) {
        this.costoProduccion = costoProduccion;
    }




}


