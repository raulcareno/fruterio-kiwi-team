package model;
// Generated 07-jun-2010 21:59:35 by Hibernate Tools 3.2.1.GA


import java.util.HashSet;
import java.util.Set;

/**
 * Lote generated by hbm2java
 */
public class Lote  implements java.io.Serializable {


     private Integer id;
     private Productoterminado productoterminado;
     private int nroLote;
     private int cantidadProducida;
     private Set detallemateriaprimas = new HashSet(0);

    public Lote() {
    }

	
    public Lote(Productoterminado productoterminado, int nroLote, int cantidadProducida) {
        this.productoterminado = productoterminado;
        this.nroLote = nroLote;
        this.cantidadProducida = cantidadProducida;
    }
    public Lote(Productoterminado productoterminado, int nroLote, int cantidadProducida, Set detallemateriaprimas) {
       this.productoterminado = productoterminado;
       this.nroLote = nroLote;
       this.cantidadProducida = cantidadProducida;
       this.detallemateriaprimas = detallemateriaprimas;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public Productoterminado getProductoterminado() {
        return this.productoterminado;
    }
    
    public void setProductoterminado(Productoterminado productoterminado) {
        this.productoterminado = productoterminado;
    }
    public int getNroLote() {
        return this.nroLote;
    }
    
    public void setNroLote(int nroLote) {
        this.nroLote = nroLote;
    }
    public int getCantidadProducida() {
        return this.cantidadProducida;
    }
    
    public void setCantidadProducida(int cantidadProducida) {
        this.cantidadProducida = cantidadProducida;
    }
    public Set getDetallemateriaprimas() {
        return this.detallemateriaprimas;
    }
    
    public void setDetallemateriaprimas(Set detallemateriaprimas) {
        this.detallemateriaprimas = detallemateriaprimas;
    }




}


