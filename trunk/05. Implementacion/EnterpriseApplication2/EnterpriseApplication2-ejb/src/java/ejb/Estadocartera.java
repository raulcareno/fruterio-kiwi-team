/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package ejb;

import java.io.Serializable;
import java.util.List;
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
@Table(name = "estadocartera")
@NamedQueries({
    @NamedQuery(name = "Estadocartera.findAll", query = "SELECT e FROM Estadocartera e"),
    @NamedQuery(name = "Estadocartera.findById", query = "SELECT e FROM Estadocartera e WHERE e.id = :id"),
    @NamedQuery(name = "Estadocartera.findByNombre", query = "SELECT e FROM Estadocartera e WHERE e.nombre = :nombre")})
public class Estadocartera implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "nombre")
    private String nombre;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idEstadoCartera")
    private List<Detallecartera> detallecarteraList;

    public Estadocartera() {
    }

    public Estadocartera(Integer id) {
        this.id = id;
    }

    public Estadocartera(Integer id, String nombre) {
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

    public List<Detallecartera> getDetallecarteraList() {
        return detallecarteraList;
    }

    public void setDetallecarteraList(List<Detallecartera> detallecarteraList) {
        this.detallecarteraList = detallecarteraList;
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
        if (!(object instanceof Estadocartera)) {
            return false;
        }
        Estadocartera other = (Estadocartera) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ejb.Estadocartera[id=" + id + "]";
    }

}
