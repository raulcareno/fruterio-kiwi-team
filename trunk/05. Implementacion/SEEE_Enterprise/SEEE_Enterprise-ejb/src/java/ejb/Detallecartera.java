/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package ejb;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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
@Table(name = "detallecartera")
@NamedQueries({
    @NamedQuery(name = "Detallecartera.findAll", query = "SELECT d FROM Detallecartera d"),
    @NamedQuery(name = "Detallecartera.findById", query = "SELECT d FROM Detallecartera d WHERE d.id = :id"),
    @NamedQuery(name = "Detallecartera.findByFechaDesde", query = "SELECT d FROM Detallecartera d WHERE d.fechaDesde = :fechaDesde"),
    @NamedQuery(name = "Detallecartera.findByFechaHasta", query = "SELECT d FROM Detallecartera d WHERE d.fechaHasta = :fechaHasta")})
public class Detallecartera implements Serializable {
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
    @Column(name = "fechaHasta")
    @Temporal(TemporalType.DATE)
    private Date fechaHasta;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idDetalleCartera")
    private List<Viajante> viajanteList;
    @JoinColumn(name = "idEstadoCartera", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Estadocartera idEstadoCartera;
    @JoinColumn(name = "idEmpresaCliente", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Empresacliente idEmpresaCliente;

    public Detallecartera() {
    }

    public Detallecartera(Integer id) {
        this.id = id;
    }

    public Detallecartera(Integer id, Date fechaDesde) {
        this.id = id;
        this.fechaDesde = fechaDesde;
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

    public List<Viajante> getViajanteList() {
        return viajanteList;
    }

    public void setViajanteList(List<Viajante> viajanteList) {
        this.viajanteList = viajanteList;
    }

    public Estadocartera getIdEstadoCartera() {
        return idEstadoCartera;
    }

    public void setIdEstadoCartera(Estadocartera idEstadoCartera) {
        this.idEstadoCartera = idEstadoCartera;
    }

    public Empresacliente getIdEmpresaCliente() {
        return idEmpresaCliente;
    }

    public void setIdEmpresaCliente(Empresacliente idEmpresaCliente) {
        this.idEmpresaCliente = idEmpresaCliente;
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
        if (!(object instanceof Detallecartera)) {
            return false;
        }
        Detallecartera other = (Detallecartera) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ejb.Detallecartera[id=" + id + "]";
    }

}
