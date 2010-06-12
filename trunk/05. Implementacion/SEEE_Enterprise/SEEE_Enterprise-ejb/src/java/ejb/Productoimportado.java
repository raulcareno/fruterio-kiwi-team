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
@Table(name = "productoimportado")
@NamedQueries({
    @NamedQuery(name = "Productoimportado.findAll", query = "SELECT p FROM Productoimportado p"),
    @NamedQuery(name = "Productoimportado.findByIdProductoTerminado", query = "SELECT p FROM Productoimportado p WHERE p.idProductoTerminado = :idProductoTerminado"),
    @NamedQuery(name = "Productoimportado.findByPrecioCompra", query = "SELECT p FROM Productoimportado p WHERE p.precioCompra = :precioCompra")})
public class Productoimportado implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "idProductoTerminado")
    private Integer idProductoTerminado;
    @Basic(optional = false)
    @Column(name = "precioCompra")
    private float precioCompra;
    @JoinColumn(name = "idProductoTerminado", referencedColumnName = "id", insertable = false, updatable = false)
    @OneToOne(optional = false)
    private Productoterminado productoterminado;

    public Productoimportado() {
    }

    public Productoimportado(Integer idProductoTerminado) {
        this.idProductoTerminado = idProductoTerminado;
    }

    public Productoimportado(Integer idProductoTerminado, float precioCompra) {
        this.idProductoTerminado = idProductoTerminado;
        this.precioCompra = precioCompra;
    }

    public Integer getIdProductoTerminado() {
        return idProductoTerminado;
    }

    public void setIdProductoTerminado(Integer idProductoTerminado) {
        this.idProductoTerminado = idProductoTerminado;
    }

    public float getPrecioCompra() {
        return precioCompra;
    }

    public void setPrecioCompra(float precioCompra) {
        this.precioCompra = precioCompra;
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
        if (!(object instanceof Productoimportado)) {
            return false;
        }
        Productoimportado other = (Productoimportado) object;
        if ((this.idProductoTerminado == null && other.idProductoTerminado != null) || (this.idProductoTerminado != null && !this.idProductoTerminado.equals(other.idProductoTerminado))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ejb.Productoimportado[idProductoTerminado=" + idProductoTerminado + "]";
    }

}
