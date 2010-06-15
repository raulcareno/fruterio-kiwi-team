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
@Table(name = "marca")
@NamedQueries({
    @NamedQuery(name = "Marca.findAll", query = "SELECT m FROM Marca m"),
    @NamedQuery(name = "Marca.findByNombre", query = "SELECT m FROM Marca m WHERE m.nombre = :nombre"),
    @NamedQuery(name = "Marca.findById", query = "SELECT m FROM Marca m WHERE m.id = :id")})
public class Marca implements Serializable {
    private static final long serialVersionUID = 1L;
    @Basic(optional = false)
    @Column(name = "nombre")
    private String nombre;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "marca")
    private Collection<Productoterminado> productoterminadoCollection;

    public Marca() {
    }

    public Marca(Integer id) {
        this.id = id;
    }

    public Marca(Integer id, String nombre) {
        this.id = id;
        this.nombre = nombre;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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
        if (!(object instanceof Marca)) {
            return false;
        }
        Marca other = (Marca) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ejb.Marca[id=" + id + "]";
    }

}
