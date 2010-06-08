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
 * Productoimportado generated by hbm2java
 */
@Entity
@Table(name="productoimportado"
    ,catalog="seee"
)
public class Productoimportado  implements java.io.Serializable {


     private int idProductoTerminado;
     private Productoterminado productoterminado;
     private float precioCompra;
     private Set<Detallenotificacionreaprovisionamiento> detallenotificacionreaprovisionamientos = new HashSet<Detallenotificacionreaprovisionamiento>(0);
     private Set<Detalleordencompraproductoimportado> detalleordencompraproductoimportados = new HashSet<Detalleordencompraproductoimportado>(0);

    public Productoimportado() {
    }

	
    public Productoimportado(int idProductoTerminado, Productoterminado productoterminado, float precioCompra) {
        this.idProductoTerminado = idProductoTerminado;
        this.productoterminado = productoterminado;
        this.precioCompra = precioCompra;
    }
    public Productoimportado(int idProductoTerminado, Productoterminado productoterminado, float precioCompra, Set<Detallenotificacionreaprovisionamiento> detallenotificacionreaprovisionamientos, Set<Detalleordencompraproductoimportado> detalleordencompraproductoimportados) {
       this.idProductoTerminado = idProductoTerminado;
       this.productoterminado = productoterminado;
       this.precioCompra = precioCompra;
       this.detallenotificacionreaprovisionamientos = detallenotificacionreaprovisionamientos;
       this.detalleordencompraproductoimportados = detalleordencompraproductoimportados;
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
    
    @Column(name="precioCompra", nullable=false, precision=9)
    public float getPrecioCompra() {
        return this.precioCompra;
    }
    
    public void setPrecioCompra(float precioCompra) {
        this.precioCompra = precioCompra;
    }
@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="productoimportado")
    public Set<Detallenotificacionreaprovisionamiento> getDetallenotificacionreaprovisionamientos() {
        return this.detallenotificacionreaprovisionamientos;
    }
    
    public void setDetallenotificacionreaprovisionamientos(Set<Detallenotificacionreaprovisionamiento> detallenotificacionreaprovisionamientos) {
        this.detallenotificacionreaprovisionamientos = detallenotificacionreaprovisionamientos;
    }
@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="productoimportado")
    public Set<Detalleordencompraproductoimportado> getDetalleordencompraproductoimportados() {
        return this.detalleordencompraproductoimportados;
    }
    
    public void setDetalleordencompraproductoimportados(Set<Detalleordencompraproductoimportado> detalleordencompraproductoimportados) {
        this.detalleordencompraproductoimportados = detalleordencompraproductoimportados;
    }




}

