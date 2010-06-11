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
@Table(name = "condicioniva")
@NamedQueries({
    @NamedQuery(name = "Condicioniva.findAll", query = "SELECT c FROM Condicioniva c"),
    @NamedQuery(name = "Condicioniva.findById", query = "SELECT c FROM Condicioniva c WHERE c.id = :id"),
    @NamedQuery(name = "Condicioniva.findByNombre", query = "SELECT c FROM Condicioniva c WHERE c.nombre = :nombre"),
    @NamedQuery(name = "Condicioniva.findByDescripcion", query = "SELECT c FROM Condicioniva c WHERE c.descripcion = :descripcion")})
public class Condicioniva implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "nombre")
    private String nombre;
    @Column(name = "descripcion")
    private String descripcion;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idCondicionIVA")
    private List<Empresacliente> empresaclienteList;

    public Condicioniva() {
    }

    public Condicioniva(Integer id) {
        this.id = id;
    }

    public Condicioniva(Integer id, String nombre) {
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

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public List<Empresacliente> getEmpresaclienteList() {
        return empresaclienteList;
    }

    public void setEmpresaclienteList(List<Empresacliente> empresaclienteList) {
        this.empresaclienteList = empresaclienteList;
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
        if (!(object instanceof Condicioniva)) {
            return false;
        }
        Condicioniva other = (Condicioniva) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ejb.Condicioniva[id=" + id + "]";
    }

}
