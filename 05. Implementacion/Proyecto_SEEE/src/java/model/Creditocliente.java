package model;
// Generated 07-jun-2010 1:17:21 by Hibernate Tools 3.2.1.GA


import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Creditocliente generated by hbm2java
 */
@Entity
@Table(name="creditocliente"
    ,catalog="seee"
)
public class Creditocliente  implements java.io.Serializable {


     private Integer id;
     private float monto;
     private Set<Empresacliente> empresaclientes = new HashSet<Empresacliente>(0);
     private Set<Detallecobropedido> detallecobropedidos = new HashSet<Detallecobropedido>(0);

    public Creditocliente() {
    }

	
    public Creditocliente(float monto) {
        this.monto = monto;
    }
    public Creditocliente(float monto, Set<Empresacliente> empresaclientes, Set<Detallecobropedido> detallecobropedidos) {
       this.monto = monto;
       this.empresaclientes = empresaclientes;
       this.detallecobropedidos = detallecobropedidos;
    }
   
     @Id @GeneratedValue(strategy=IDENTITY)
    
    @Column(name="id", unique=true, nullable=false)
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    
    @Column(name="monto", nullable=false, precision=9)
    public float getMonto() {
        return this.monto;
    }
    
    public void setMonto(float monto) {
        this.monto = monto;
    }
@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="creditocliente")
    public Set<Empresacliente> getEmpresaclientes() {
        return this.empresaclientes;
    }
    
    public void setEmpresaclientes(Set<Empresacliente> empresaclientes) {
        this.empresaclientes = empresaclientes;
    }
@ManyToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY)
    @JoinTable(name="cobronotacredito", catalog="seee", joinColumns = { 
        @JoinColumn(name="idCreditoCliente", nullable=false, updatable=false) }, inverseJoinColumns = { 
        @JoinColumn(name="idDetalleCobroPedido", unique=true, nullable=false, updatable=false) })
    public Set<Detallecobropedido> getDetallecobropedidos() {
        return this.detallecobropedidos;
    }
    
    public void setDetallecobropedidos(Set<Detallecobropedido> detallecobropedidos) {
        this.detallecobropedidos = detallecobropedidos;
    }




}


