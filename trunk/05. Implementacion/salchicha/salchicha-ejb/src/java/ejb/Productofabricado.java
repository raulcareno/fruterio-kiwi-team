/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package ejb;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 *
 * @author wasaaa
 */
@Entity
@Table(name = "productofabricado")
@NamedQueries({
    @NamedQuery(name = "Productofabricado.findAll", query = "SELECT p FROM Productofabricado p"),
    @NamedQuery(name = "Productofabricado.findByIdProductoTerminado", query = "SELECT p FROM Productofabricado p WHERE p.idProductoTerminado = :idProductoTerminado"),
    @NamedQuery(name = "Productofabricado.findByCostoProduccion", query = "SELECT p FROM Productofabricado p WHERE p.costoProduccion = :costoProduccion")})
public class Productofabricado implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "idProductoTerminado")
    private Integer idProductoTerminado;
    @Basic(optional = false)
    @Column(name = "costoProduccion")
    private float costoProduccion;
    @JoinColumn(name = "idProductoTerminado", referencedColumnName = "id", insertable = false, updatable = false)
    @OneToOne(optional = false)
    private Productoterminado productoterminado;

    public Productofabricado() {
    }

    public Productofabricado(Integer idProductoTerminado) {
        this.idProductoTerminado = idProductoTerminado;
    }

    public Productofabricado(Integer idProductoTerminado, float costoProduccion) {
        this.idProductoTerminado = idProductoTerminado;
        this.costoProduccion = costoProduccion;
    }

    public Integer getIdProductoTerminado() {
        return idProductoTerminado;
    }

    public void setIdProductoTerminado(Integer idProductoTerminado) {
        this.idProductoTerminado = idProductoTerminado;
    }

    public float getCostoProduccion() {
        return costoProduccion;
    }

    public void setCostoProduccion(float costoProduccion) {
        this.costoProduccion = costoProduccion;
    }

    public Productoterminado getProductoterminado() {
        return productoterminado;
    }

    public void setProductoterminado(Productoterminado productoterminado) {
        this.productoterminado = productoterminado;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idProductoTerminado != null ? idProductoTerminado.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Productofabricado)) {
            return false;
        }
        Productofabricado other = (Productofabricado) object;
        if ((this.idProductoTerminado == null && other.idProductoTerminado != null) || (this.idProductoTerminado != null && !this.idProductoTerminado.equals(other.idProductoTerminado))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ejb.Productofabricado[idProductoTerminado=" + idProductoTerminado + "]";
    }

}
