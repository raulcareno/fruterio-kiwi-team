/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package ejb;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

/**
 *
 * @author wasaaa
 */
@Entity
@Table(name = "viajante")
@NamedQueries({
    @NamedQuery(name = "Viajante.findAll", query = "SELECT v FROM Viajante v"),
    @NamedQuery(name = "Viajante.findByIdPersona", query = "SELECT v FROM Viajante v WHERE v.idPersona = :idPersona"),
    @NamedQuery(name = "Viajante.findByComisionPorVenta", query = "SELECT v FROM Viajante v WHERE v.comisionPorVenta = :comisionPorVenta")})
public class Viajante implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "idPersona")
    private Integer idPersona;
    @Basic(optional = false)
    @Column(name = "comisionPorVenta")
    private int comisionPorVenta;
    @JoinColumn(name = "idPersona", referencedColumnName = "id", insertable = false, updatable = false)
    @OneToOne(optional = false)
    private Persona persona;
    @JoinColumn(name = "idDetalleCartera", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Detallecartera idDetalleCartera;
    @OneToMany(mappedBy = "idViajante")
    private List<Barrio> barrioList;

    public Viajante() {
    }

    public Viajante(Integer idPersona) {
        this.idPersona = idPersona;
    }

    public Viajante(Integer idPersona, int comisionPorVenta) {
        this.idPersona = idPersona;
        this.comisionPorVenta = comisionPorVenta;
    }

    public Integer getIdPersona() {
        return idPersona;
    }

    public void setIdPersona(Integer idPersona) {
        this.idPersona = idPersona;
    }

    public int getComisionPorVenta() {
        return comisionPorVenta;
    }

    public void setComisionPorVenta(int comisionPorVenta) {
        this.comisionPorVenta = comisionPorVenta;
    }

    public Persona getPersona() {
        return persona;
    }

    public void setPersona(Persona persona) {
        this.persona = persona;
    }

    public Detallecartera getIdDetalleCartera() {
        return idDetalleCartera;
    }

    public void setIdDetalleCartera(Detallecartera idDetalleCartera) {
        this.idDetalleCartera = idDetalleCartera;
    }

    public List<Barrio> getBarrioList() {
        return barrioList;
    }

    public void setBarrioList(List<Barrio> barrioList) {
        this.barrioList = barrioList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idPersona != null ? idPersona.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Viajante)) {
            return false;
        }
        Viajante other = (Viajante) object;
        if ((this.idPersona == null && other.idPersona != null) || (this.idPersona != null && !this.idPersona.equals(other.idPersona))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ejb.Viajante[idPersona=" + idPersona + "]";
    }

}
