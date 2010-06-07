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
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Modelo generated by hbm2java
 */
@Entity
@Table(name="modelo"
    ,catalog="seee"
)
public class Modelo  implements java.io.Serializable {


     private Integer id;
     private String nombre;
     private Integer nroSerie;
     private Set<Productoterminado> productoterminados = new HashSet<Productoterminado>(0);

    public Modelo() {
    }

	
    public Modelo(String nombre) {
        this.nombre = nombre;
    }
    public Modelo(String nombre, Integer nroSerie, Set<Productoterminado> productoterminados) {
       this.nombre = nombre;
       this.nroSerie = nroSerie;
       this.productoterminados = productoterminados;
    }
   
     @Id @GeneratedValue(strategy=IDENTITY)
    
    @Column(name="id", unique=true, nullable=false)
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    
    @Column(name="nombre", nullable=false, length=20)
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    @Column(name="nroSerie")
    public Integer getNroSerie() {
        return this.nroSerie;
    }
    
    public void setNroSerie(Integer nroSerie) {
        this.nroSerie = nroSerie;
    }
@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="modelo")
    public Set<Productoterminado> getProductoterminados() {
        return this.productoterminados;
    }
    
    public void setProductoterminados(Set<Productoterminado> productoterminados) {
        this.productoterminados = productoterminados;
    }




}


