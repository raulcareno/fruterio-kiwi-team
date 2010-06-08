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
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Localidad generated by hbm2java
 */
@Entity
@Table(name="localidad"
    ,catalog="seee"
)
public class Localidad  implements java.io.Serializable {


     private Integer id;
     private Provincia provincia;
     private String nombre;
     private Set<Barrio> barrios = new HashSet<Barrio>(0);

    public Localidad() {
    }

	
    public Localidad(Provincia provincia) {
        this.provincia = provincia;
    }
    public Localidad(Provincia provincia, String nombre, Set<Barrio> barrios) {
       this.provincia = provincia;
       this.nombre = nombre;
       this.barrios = barrios;
    }
   
     @Id @GeneratedValue(strategy=IDENTITY)
    
    @Column(name="id", unique=true, nullable=false)
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="idProvincia", nullable=false)
    public Provincia getProvincia() {
        return this.provincia;
    }
    
    public void setProvincia(Provincia provincia) {
        this.provincia = provincia;
    }
    
    @Column(name="nombre", length=20)
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="localidad")
    public Set<Barrio> getBarrios() {
        return this.barrios;
    }
    
    public void setBarrios(Set<Barrio> barrios) {
        this.barrios = barrios;
    }




}

