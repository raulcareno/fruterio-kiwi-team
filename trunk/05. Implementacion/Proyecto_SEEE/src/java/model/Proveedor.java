package model;
// Generated 07-jun-2010 21:59:35 by Hibernate Tools 3.2.1.GA


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Proveedor generated by hbm2java
 */
public class Proveedor  implements java.io.Serializable {


     private Integer id;
     private Domicilio domicilio;
     private String nombre;
     private String razonSocial;
     private String mail;
     private String telefonoFijo;
     private String telefonoCelular;
     private String pais;
     private Date fechaAlta;
     private Set ordencompras = new HashSet(0);

    public Proveedor() {
    }

	
    public Proveedor(String nombre, Date fechaAlta) {
        this.nombre = nombre;
        this.fechaAlta = fechaAlta;
    }
    public Proveedor(Domicilio domicilio, String nombre, String razonSocial, String mail, String telefonoFijo, String telefonoCelular, String pais, Date fechaAlta, Set ordencompras) {
       this.domicilio = domicilio;
       this.nombre = nombre;
       this.razonSocial = razonSocial;
       this.mail = mail;
       this.telefonoFijo = telefonoFijo;
       this.telefonoCelular = telefonoCelular;
       this.pais = pais;
       this.fechaAlta = fechaAlta;
       this.ordencompras = ordencompras;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public Domicilio getDomicilio() {
        return this.domicilio;
    }
    
    public void setDomicilio(Domicilio domicilio) {
        this.domicilio = domicilio;
    }
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public String getRazonSocial() {
        return this.razonSocial;
    }
    
    public void setRazonSocial(String razonSocial) {
        this.razonSocial = razonSocial;
    }
    public String getMail() {
        return this.mail;
    }
    
    public void setMail(String mail) {
        this.mail = mail;
    }
    public String getTelefonoFijo() {
        return this.telefonoFijo;
    }
    
    public void setTelefonoFijo(String telefonoFijo) {
        this.telefonoFijo = telefonoFijo;
    }
    public String getTelefonoCelular() {
        return this.telefonoCelular;
    }
    
    public void setTelefonoCelular(String telefonoCelular) {
        this.telefonoCelular = telefonoCelular;
    }
    public String getPais() {
        return this.pais;
    }
    
    public void setPais(String pais) {
        this.pais = pais;
    }
    public Date getFechaAlta() {
        return this.fechaAlta;
    }
    
    public void setFechaAlta(Date fechaAlta) {
        this.fechaAlta = fechaAlta;
    }
    public Set getOrdencompras() {
        return this.ordencompras;
    }
    
    public void setOrdencompras(Set ordencompras) {
        this.ordencompras = ordencompras;
    }




}


