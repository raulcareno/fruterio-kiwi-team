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
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author wasaaa
 */
@Entity
@Table(name = "empresacliente")
@NamedQueries({
    @NamedQuery(name = "Empresacliente.findAll", query = "SELECT e FROM Empresacliente e"),
    @NamedQuery(name = "Empresacliente.findById", query = "SELECT e FROM Empresacliente e WHERE e.id = :id"),
    @NamedQuery(name = "Empresacliente.findByRazonSocial", query = "SELECT e FROM Empresacliente e WHERE e.razonSocial = :razonSocial"),
    @NamedQuery(name = "Empresacliente.findByCuit", query = "SELECT e FROM Empresacliente e WHERE e.cuit = :cuit"),
    @NamedQuery(name = "Empresacliente.findByTelefono", query = "SELECT e FROM Empresacliente e WHERE e.telefono = :telefono"),
    @NamedQuery(name = "Empresacliente.findByFax", query = "SELECT e FROM Empresacliente e WHERE e.fax = :fax"),
    @NamedQuery(name = "Empresacliente.findByMail", query = "SELECT e FROM Empresacliente e WHERE e.mail = :mail"),
    @NamedQuery(name = "Empresacliente.findByCelular", query = "SELECT e FROM Empresacliente e WHERE e.celular = :celular")})
public class Empresacliente implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "razonSocial")
    private String razonSocial;
    @Basic(optional = false)
    @Column(name = "cuit")
    private String cuit;
    @Column(name = "telefono")
    private String telefono;
    @Column(name = "fax")
    private String fax;
    @Column(name = "mail")
    private String mail;
    @Column(name = "celular")
    private String celular;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idEmpresaCliente")
    private List<Detallecartera> detallecarteraList;
    @JoinColumn(name = "idCondicionIVA", referencedColumnName = "id")
    @ManyToOne(optional = false, cascade=CascadeType.PERSIST)
    private Condicioniva idCondicionIVA;
    @JoinColumn(name = "idCreditoCliente", referencedColumnName = "id")
    @ManyToOne()
    private Creditocliente idCreditoCliente;
    @JoinColumn(name = "idDomicilio", referencedColumnName = "id")
    @ManyToOne(optional = false, cascade=CascadeType.PERSIST)
    private Domicilio idDomicilio;

    public Empresacliente() {
    }

    public Empresacliente(Integer id) {
        this.id = id;
    }

    public Empresacliente(Integer id, String razonSocial, String cuit) {
        this.id = id;
        this.razonSocial = razonSocial;
        this.cuit = cuit;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getRazonSocial() {
        return razonSocial;
    }

    public void setRazonSocial(String razonSocial) {
        this.razonSocial = razonSocial;
    }

    public String getCuit() {
        return cuit;
    }

    public void setCuit(String cuit) {
        this.cuit = cuit;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getFax() {
        return fax;
    }

    public void setFax(String fax) {
        this.fax = fax;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

    public List<Detallecartera> getDetallecarteraList() {
        return detallecarteraList;
    }

    public void setDetallecarteraList(List<Detallecartera> detallecarteraList) {
        this.detallecarteraList = detallecarteraList;
    }

    public Condicioniva getIdCondicionIVA() {
        return idCondicionIVA;
    }

    public void setIdCondicionIVA(Condicioniva idCondicionIVA) {
        this.idCondicionIVA = idCondicionIVA;
    }

    public Creditocliente getIdCreditoCliente() {
        return idCreditoCliente;
    }

    public void setIdCreditoCliente(Creditocliente idCreditoCliente) {
        this.idCreditoCliente = idCreditoCliente;
    }

    public Domicilio getIdDomicilio() {
        return idDomicilio;
    }

    public void setIdDomicilio(Domicilio idDomicilio) {
        this.idDomicilio = idDomicilio;
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
        if (!(object instanceof Empresacliente)) {
            return false;
        }
        Empresacliente other = (Empresacliente) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ejb.Empresacliente[id=" + id + "]";
    }

}
