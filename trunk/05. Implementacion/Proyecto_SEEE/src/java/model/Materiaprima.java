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
 * Materiaprima generated by hbm2java
 */
@Entity
@Table(name="materiaprima"
    ,catalog="seee"
)
public class Materiaprima  implements java.io.Serializable {


     private Integer id;
     private int codigo;
     private String nombre;
     private String descripcion;
     private int stockActual;
     private Set<Detallemateriaprima> detallemateriaprimas = new HashSet<Detallemateriaprima>(0);
     private Set<Detalleordencompramateriaprima> detalleordencompramateriaprimas = new HashSet<Detalleordencompramateriaprima>(0);

    public Materiaprima() {
    }

	
    public Materiaprima(int codigo, String nombre, int stockActual) {
        this.codigo = codigo;
        this.nombre = nombre;
        this.stockActual = stockActual;
    }
    public Materiaprima(int codigo, String nombre, String descripcion, int stockActual, Set<Detallemateriaprima> detallemateriaprimas, Set<Detalleordencompramateriaprima> detalleordencompramateriaprimas) {
       this.codigo = codigo;
       this.nombre = nombre;
       this.descripcion = descripcion;
       this.stockActual = stockActual;
       this.detallemateriaprimas = detallemateriaprimas;
       this.detalleordencompramateriaprimas = detalleordencompramateriaprimas;
    }
   
     @Id @GeneratedValue(strategy=IDENTITY)
    
    @Column(name="id", unique=true, nullable=false)
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    
    @Column(name="codigo", nullable=false)
    public int getCodigo() {
        return this.codigo;
    }
    
    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }
    
    @Column(name="nombre", nullable=false, length=20)
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    @Column(name="descripcion", length=200)
    public String getDescripcion() {
        return this.descripcion;
    }
    
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
    
    @Column(name="stockActual", nullable=false)
    public int getStockActual() {
        return this.stockActual;
    }
    
    public void setStockActual(int stockActual) {
        this.stockActual = stockActual;
    }
@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="materiaprima")
    public Set<Detallemateriaprima> getDetallemateriaprimas() {
        return this.detallemateriaprimas;
    }
    
    public void setDetallemateriaprimas(Set<Detallemateriaprima> detallemateriaprimas) {
        this.detallemateriaprimas = detallemateriaprimas;
    }
@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="materiaprima")
    public Set<Detalleordencompramateriaprima> getDetalleordencompramateriaprimas() {
        return this.detalleordencompramateriaprimas;
    }
    
    public void setDetalleordencompramateriaprimas(Set<Detalleordencompramateriaprima> detalleordencompramateriaprimas) {
        this.detalleordencompramateriaprimas = detalleordencompramateriaprimas;
    }




}

