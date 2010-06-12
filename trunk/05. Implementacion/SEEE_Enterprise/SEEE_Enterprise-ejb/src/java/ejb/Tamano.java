/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package ejb;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author wasaaa
 */
@Entity
@Table(name = "tamano")
@NamedQueries({
    @NamedQuery(name = "Tamano.findAll", query = "SELECT t FROM Tamano t"),
    @NamedQuery(name = "Tamano.findById", query = "SELECT t FROM Tamano t WHERE t.id = :id"),
    @NamedQuery(name = "Tamano.findByNombre", query = "SELECT t FROM Tamano t WHERE t.nombre = :nombre")})
public class Tamano implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "nombre")
    private String nombre;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "tamano")
    private Collection<Productoterminado> productoterminadoCollection;

    public Tamano() {
    }

    public Tamano(Integer id) {
        this.id = id;
    }

    public Tamano(Integer id, String nombre) {
        this.id = id;
        this.nombre = nombre;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
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
        if (!(object instanceof Tamano)) {
            return false;
        }
        Tamano other = (Tamano) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ejb.Tamano[id=" + id + "]";
    }

}
