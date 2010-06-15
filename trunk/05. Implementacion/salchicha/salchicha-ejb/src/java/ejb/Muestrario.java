/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package ejb;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author wasaaa
 */
@Entity
@Table(name = "muestrario")
@NamedQueries({
    @NamedQuery(name = "Muestrario.findAll", query = "SELECT m FROM Muestrario m"),
    @NamedQuery(name = "Muestrario.findById", query = "SELECT m FROM Muestrario m WHERE m.id = :id"),
    @NamedQuery(name = "Muestrario.findByFechaDesde", query = "SELECT m FROM Muestrario m WHERE m.fechaDesde = :fechaDesde"),
    @NamedQuery(name = "Muestrario.findByFechaHasta", query = "SELECT m FROM Muestrario m WHERE m.fechaHasta = :fechaHasta")})
public class Muestrario implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "fechaDesde")
    @Temporal(TemporalType.DATE)
    private Date fechaDesde;
    @Basic(optional = false)
    @Column(name = "fechaHasta")
    @Temporal(TemporalType.DATE)
    private Date fechaHasta;
    @OneToMany(mappedBy = "muestrario")
    private Collection<Productoterminado> productoterminadoCollection;

    public Muestrario() {
    }

    public Muestrario(Integer id) {
        this.id = id;
    }

    public Muestrario(Integer id, Date fechaDesde, Date fechaHasta) {
        this.id = id;
        this.fechaDesde = fechaDesde;
        this.fechaHasta = fechaHasta;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getFechaDesde() {
        return fechaDesde;
    }

    public void setFechaDesde(Date fechaDesde) {
        this.fechaDesde = fechaDesde;
    }

    public Date getFechaHasta() {
        return fechaHasta;
    }

    public void setFechaHasta(Date fechaHasta) {
        this.fechaHasta = fechaHasta;
    }

    public Collection<Productoterminado> getProductoterminadoCollection() {
        return productoterminadoCollection;
    }

    public void setProductoterminadoCollection(Collection<Productoterminado> productoterminadoCollection) {
        this.productoterminadoCollection = productoterminadoCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Muestrario)) {
            return false;
        }
        Muestrario other = (Muestrario) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ejb.Muestrario[id=" + id + "]";
    }

}
