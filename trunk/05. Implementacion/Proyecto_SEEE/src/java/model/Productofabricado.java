package model;
// Generated 07-jun-2010 21:59:35 by Hibernate Tools 3.2.1.GA



/**
 * Productofabricado generated by hbm2java
 */
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
   
    public int getIdProductoTerminado() {
        return this.idProductoTerminado;
    }
    
    public void setIdProductoTerminado(int idProductoTerminado) {
        this.idProductoTerminado = idProductoTerminado;
    }
    public Productoterminado getProductoterminado() {
        return this.productoterminado;
    }
    
    public void setProductoterminado(Productoterminado productoterminado) {
        this.productoterminado = productoterminado;
    }
    public float getCostoProduccion() {
        return this.costoProduccion;
    }
    
    public void setCostoProduccion(float costoProduccion) {
        this.costoProduccion = costoProduccion;
    }




}

