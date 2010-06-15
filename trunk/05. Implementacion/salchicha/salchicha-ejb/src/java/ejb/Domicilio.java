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
@Table(name = "domicilio")
@NamedQueries({
    @NamedQuery(name = "Domicilio.findAll", query = "SELECT d FROM Domicilio d"),
    @NamedQuery(name = "Domicilio.findById", query = "SELECT d FROM Domicilio d WHERE d.id = :id"),
    @NamedQuery(name = "Domicilio.findByAltura", query = "SELECT d FROM Domicilio d WHERE d.altura = :altura"),
    @NamedQuery(name = "Domicilio.findByNombreCalle", query = "SELECT d FROM Domicilio d WHERE d.nombreCalle = :nombreCalle"),
    @NamedQuery(name = "Domicilio.findByNroDpto", query = "SELECT d FROM Domicilio d WHERE d.nroDpto = :nroDpto"),
    @NamedQuery(name = "Domicilio.findByCodPostal", query = "SELECT d FROM Domicilio d WHERE d.codPostal = :codPostal")})
public class Domicilio implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Column(name = "altura")
    private Integer altura;
    @Column(name = "nombreCalle")
    private String nombreCalle;
    @Column(name = "nroDpto")
    private Integer nroDpto;
    @Column(name = "codPostal")
    private Integer codPostal;
    @JoinColumn(name = "idBarrio", referencedColumnName = "id")
    @ManyToOne(optional = false, cascade=CascadeType.PERSIST)
    private Barrio idBarrio;
    
    @OneToMany(mappedBy = "idDomicilio")
    private List<Persona> personaList;

    public Domicilio() {
    }

    public Domicilio(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getAltura() {
        return altura;
    }

    public void setAltura(Integer altura) {
        this.altura = altura;
    }

    public String getNombreCalle() {
        return nombreCalle;
    }

    public void setNombreCalle(String nombreCalle) {
        this.nombreCalle = nombreCalle;
    }

    public Integer getNroDpto() {
        return nroDpto;
    }

    public void setNroDpto(Integer nroDpto) {
        this.nroDpto = nroDpto;
    }

    public Integer getCodPostal() {
        return codPostal;
    }

    public void setCodPostal(Integer codPostal) {
        this.codPostal = codPostal;
    }

    public Barrio getIdBarrio() {
        return idBarrio;
    }

    public void setIdBarrio(Barrio idBarrio) {
        this.idBarrio = idBarrio;
    }

   
    public List<Persona> getPersonaList() {
        return personaList;
    }

    public void setPersonaList(List<Persona> personaList) {
        this.personaList = personaList;
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
        if (!(object instanceof Domicilio)) {
            return false;
        }
        Domicilio other = (Domicilio) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ejb.Domicilio[id=" + id + "]";
    }

}
