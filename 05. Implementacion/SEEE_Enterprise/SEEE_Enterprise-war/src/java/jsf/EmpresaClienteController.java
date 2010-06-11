/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package jsf;

import ejb.Barrio;
import ejb.Condicioniva;
import ejb.Creditocliente;
import ejb.Detallecartera;
import ejb.Domicilio;
import ejb.Empresacliente;
import ejb.Estadocartera;
import ejb.Localidad;
import ejb.Tipodni;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.Set;
import javax.ejb.EJB;
import javax.enterprise.context.SessionScoped;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.faces.model.SelectItem;

/**
 *
 * @author wasaaa
 */
@ManagedBean(name = "empresaClienteController")
@SessionScoped
public class EmpresaClienteController {

    private Empresacliente empresaCliente;
    private Barrio barrio;
    private Condicioniva condicionIVA;
    private Domicilio domicilio;
    private Localidad localidad;
    private String localidad2;
    @EJB
    private ejb.facade.EmpresaclienteFacade ejbFacade;

    public Barrio getBarrio() {
        return barrio == null ? barrio = new Barrio() : barrio;
    }

    public Condicioniva getCondicionIVA() {
        return condicionIVA == null ? condicionIVA = new Condicioniva() : condicionIVA;
    }

    public Localidad getLocalidad() {
        return localidad == null ? localidad = new Localidad() : localidad;
    }

    public Domicilio getDomicilio() {
        return domicilio == null ? domicilio = new Domicilio() : domicilio;
    }

    public Empresacliente getEmpresaCliente() {
        return empresaCliente == null ? empresaCliente = new Empresacliente() : empresaCliente;
    }

    public void setBarrio(Barrio barrio) {
        this.barrio = barrio;
    }

    public void setCondicionIVA(Condicioniva condicionIVA) {
        this.condicionIVA = condicionIVA;
    }

    public void setDomicilio(Domicilio domicilio) {
        this.domicilio = domicilio;
    }

    public void setEmpresaCliente(Empresacliente empresaCliente) {
        this.empresaCliente = empresaCliente;
    }

    public void setLocalidad(Localidad localidad) {
        this.localidad = localidad;
    }

    public String getLocalidad2() {
        return localidad2;
    }

    public void setLocalidad2(String localidad2) {
        this.localidad2 = localidad2;
    }

    public String save() {
        String aux = "";
        System.out.println("\nEmpresa clente: " + empresaCliente.getRazonSocial());
        System.out.println("Bario: " + barrio.getNombre());
        System.out.println("Condicion IVA: " + condicionIVA.getNombre());
        System.out.println("Domicilio: " + domicilio.getNombreCalle());
        System.out.println("Localidad: " + localidad.getNombre());


        barrio.setIdLocalidad(localidad);
        domicilio.setIdBarrio(barrio);
        empresaCliente.setIdDomicilio(domicilio);
        empresaCliente.setIdCondicionIVA(condicionIVA);

        System.out.println(empresaCliente.getIdDomicilio().getIdBarrio().getIdLocalidad().getNombre());
        System.out.println(empresaCliente.getIdDomicilio().getIdBarrio().getIdLocalidad().getIdProvincia().getNombre());


        ejbFacade.create(empresaCliente);
        return "success.xhtml";
    }
}
