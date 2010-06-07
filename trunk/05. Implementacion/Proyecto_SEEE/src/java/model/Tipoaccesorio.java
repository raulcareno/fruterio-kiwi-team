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
 * Tipoaccesorio generated by hbm2java
 */
@Entity
@Table(name="tipoaccesorio"
    ,catalog="seee"
)
public class Tipoaccesorio  implements java.io.Serializable {


     private Integer id;
     private String nombre;
     private Set<Accesorio> accesorios = new HashSet<Accesorio>(0);

    public Tipoaccesorio() {
    }

	
    public Tipoaccesorio(String nombre) {
        this.nombre = nombre;
    }
    public Tipoaccesorio(String nombre, Set<Accesorio> accesorios) {
       this.nombre = nombre;
       this.accesorios = accesorios;
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
@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="tipoaccesorio")
    public Set<Accesorio> getAccesorios() {
        return this.accesorios;
    }
    
    public void setAccesorios(Set<Accesorio> accesorios) {
        this.accesorios = accesorios;
    }




}


