package model;
// Generated 07-jun-2010 21:59:35 by Hibernate Tools 3.2.1.GA


import java.util.HashSet;
import java.util.Set;

/**
 * Empresacliente generated by hbm2java
 */
public class Empresacliente  implements java.io.Serializable {


     private Integer id;
     private Creditocliente creditocliente;
     private Domicilio domicilio;
     private Condicioniva condicioniva;
     private String razonSocial;
     private String cuit;
     private String telefono;
     private String fax;
     private String mail;
     private String celular;
     private Set pedidoproductosterminadoses = new HashSet(0);
     private Set detallecarteras = new HashSet(0);
     private Set devolucionproductosterminadoses = new HashSet(0);
     private Set empresaclientexpersonas = new HashSet(0);
     private Set detallehojarutas = new HashSet(0);
     private Set rentabilidadclientes = new HashSet(0);

    public Empresacliente() {
    }

	
    public Empresacliente(Creditocliente creditocliente, Domicilio domicilio, Condicioniva condicioniva, String razonSocial, String cuit) {
        this.creditocliente = creditocliente;
        this.domicilio = domicilio;
        this.condicioniva = condicioniva;
        this.razonSocial = razonSocial;
        this.cuit = cuit;
    }
    public Empresacliente(Creditocliente creditocliente, Domicilio domicilio, Condicioniva condicioniva, String razonSocial, String cuit, String telefono, String fax, String mail, String celular, Set pedidoproductosterminadoses, Set detallecarteras, Set devolucionproductosterminadoses, Set empresaclientexpersonas, Set detallehojarutas, Set rentabilidadclientes) {
       this.creditocliente = creditocliente;
       this.domicilio = domicilio;
       this.condicioniva = condicioniva;
       this.razonSocial = razonSocial;
       this.cuit = cuit;
       this.telefono = telefono;
       this.fax = fax;
       this.mail = mail;
       this.celular = celular;
       this.pedidoproductosterminadoses = pedidoproductosterminadoses;
       this.detallecarteras = detallecarteras;
       this.devolucionproductosterminadoses = devolucionproductosterminadoses;
       this.empresaclientexpersonas = empresaclientexpersonas;
       this.detallehojarutas = detallehojarutas;
       this.rentabilidadclientes = rentabilidadclientes;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public Creditocliente getCreditocliente() {
        return this.creditocliente;
    }
    
    public void setCreditocliente(Creditocliente creditocliente) {
        this.creditocliente = creditocliente;
    }
    public Domicilio getDomicilio() {
        return this.domicilio;
    }
    
    public void setDomicilio(Domicilio domicilio) {
        this.domicilio = domicilio;
    }
    public Condicioniva getCondicioniva() {
        return this.condicioniva;
    }
    
    public void setCondicioniva(Condicioniva condicioniva) {
        this.condicioniva = condicioniva;
    }
    public String getRazonSocial() {
        return this.razonSocial;
    }
    
    public void setRazonSocial(String razonSocial) {
        this.razonSocial = razonSocial;
    }
    public String getCuit() {
        return this.cuit;
    }
    
    public void setCuit(String cuit) {
        this.cuit = cuit;
    }
    public String getTelefono() {
        return this.telefono;
    }
    
    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }
    public String getFax() {
        return this.fax;
    }
    
    public void setFax(String fax) {
        this.fax = fax;
    }
    public String getMail() {
        return this.mail;
    }
    
    public void setMail(String mail) {
        this.mail = mail;
    }
    public String getCelular() {
        return this.celular;
    }
    
    public void setCelular(String celular) {
        this.celular = celular;
    }
    public Set getPedidoproductosterminadoses() {
        return this.pedidoproductosterminadoses;
    }
    
    public void setPedidoproductosterminadoses(Set pedidoproductosterminadoses) {
        this.pedidoproductosterminadoses = pedidoproductosterminadoses;
    }
    public Set getDetallecarteras() {
        return this.detallecarteras;
    }
    
    public void setDetallecarteras(Set detallecarteras) {
        this.detallecarteras = detallecarteras;
    }
    public Set getDevolucionproductosterminadoses() {
        return this.devolucionproductosterminadoses;
    }
    
    public void setDevolucionproductosterminadoses(Set devolucionproductosterminadoses) {
        this.devolucionproductosterminadoses = devolucionproductosterminadoses;
    }
    public Set getEmpresaclientexpersonas() {
        return this.empresaclientexpersonas;
    }
    
    public void setEmpresaclientexpersonas(Set empresaclientexpersonas) {
        this.empresaclientexpersonas = empresaclientexpersonas;
    }
    public Set getDetallehojarutas() {
        return this.detallehojarutas;
    }
    
    public void setDetallehojarutas(Set detallehojarutas) {
        this.detallehojarutas = detallehojarutas;
    }
    public Set getRentabilidadclientes() {
        return this.rentabilidadclientes;
    }
    
    public void setRentabilidadclientes(Set rentabilidadclientes) {
        this.rentabilidadclientes = rentabilidadclientes;
    }




}


