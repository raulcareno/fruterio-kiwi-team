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
@Table(name = "creditocliente")
@NamedQueries({
    @NamedQuery(name = "Creditocliente.findAll", query = "SELECT c FROM Creditocliente c"),
    @NamedQuery(name = "Creditocliente.findById", query = "SELECT c FROM Creditocliente c WHERE c.id = :id"),
    @NamedQuery(name = "Creditocliente.findByMonto", query = "SELECT c FROM Creditocliente c WHERE c.monto = :monto")})
public class Creditocliente implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "monto")
    private float monto;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idCreditoCliente")
    private List<Empresacliente> empresaclienteList;

    public Creditocliente() {
    }

    public Creditocliente(Integer id) {
        this.id = id;
    }

    public Creditocliente(Integer id, float monto) {
        this.id = id;
        this.monto = monto;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public float getMonto() {
        return monto;
    }

    public void setMonto(float monto) {
        this.monto = monto;
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
        if (!(object instanceof Creditocliente)) {
            return false;
        }
        Creditocliente other = (Creditocliente) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ejb.Creditocliente[id=" + id + "]";
    }

}
