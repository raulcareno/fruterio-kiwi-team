/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package view.testing;

import business.BusinessGeneral;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Set;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.faces.model.SelectItem;
import model.Localidad;
import model.Provincia;

/**
 *
 * @author wasaaa
 */
@ManagedBean(name = "clienteBean")
@RequestScoped
public class ClienteBean {

    private Boolean localidadListDisabled = true;
    private Integer idProvincia;
    private Integer idLocalidad;
    private Integer idBarrio;
    private Integer altura;
    private String nombreCalle;
    private Integer codPostal;
    private Integer nroDpto;
    private Integer idCondicioniva;
    private String razonSocial;
    private String cuit;
    private String telefono;
    private String fax;
    private String mail;
    private String celular;

    public ClienteBean() {
    }

    public Integer getIdProvincia() {
        return idProvincia;
    }

    public void setIdProvincia(Integer idProvincia) {
        this.idProvincia = idProvincia;
    }

    public Integer getIdLocalidad() {
        return idLocalidad;
    }

    public void setIdLocalidad(Integer idLocalidad) {
        this.idLocalidad = idLocalidad;
        this.localidadListDisabled = false;
    }

    public Integer getIdBarrio() {
        return idBarrio;
    }

    public void setIdBarrio(Integer idBarrio) {
        this.idBarrio = idBarrio;
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

    public Integer getCodPostal() {
        return codPostal;
    }

    public void setCodPostal(Integer codPostal) {
        this.codPostal = codPostal;
    }

    public Integer getNroDpto() {
        return nroDpto;
    }

    public void setNroDpto(Integer nroDpto) {
        this.nroDpto = nroDpto;
    }

    public Integer getIdCondicioniva() {
        return idCondicioniva;
    }

    public void setIdCondicioniva(Integer idCondicioniva) {
        this.idCondicioniva = idCondicioniva;
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

    public ArrayList<SelectItem> getLocalidades(int idProvincia){
        if (getIdProvincia() != null){
            System.out.println("Entre a buscar localidades");
            BusinessGeneral<Provincia> bgProvincia = new BusinessGeneral<Provincia>();
            Provincia prov = bgProvincia.consultarObjetoPorId(new Provincia(), idProvincia);
            Set<Localidad> auxLocalidades = prov.getLocalidads();
            ArrayList<SelectItem> localidades = new ArrayList<SelectItem>();
            for (Localidad localidad : auxLocalidades) {
                localidades.add(new SelectItem(localidad.getId(), localidad.getNombre()));
            }
            return localidades;
        }
        return null;
    }
    


}
