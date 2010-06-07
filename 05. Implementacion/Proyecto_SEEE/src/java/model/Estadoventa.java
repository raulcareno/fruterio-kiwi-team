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
 * Estadoventa generated by hbm2java
 */
@Entity
@Table(name="estadoventa"
    ,catalog="seee"
)
public class Estadoventa  implements java.io.Serializable {


     private Integer id;
     private String nombre;
     private Set<Venta> ventas = new HashSet<Venta>(0);

    public Estadoventa() {
    }

	
    public Estadoventa(String nombre) {
        this.nombre = nombre;
    }
    public Estadoventa(String nombre, Set<Venta> ventas) {
       this.nombre = nombre;
       this.ventas = ventas;
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
@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="estadoventa")
    public Set<Venta> getVentas() {
        return this.ventas;
    }
    
    public void setVentas(Set<Venta> ventas) {
        this.ventas = ventas;
    }




}


