package model;
// Generated 07-jun-2010 1:17:21 by Hibernate Tools 3.2.1.GA


import java.util.Date;
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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Productoterminado generated by hbm2java
 */
@Entity
@Table(name="productoterminado"
    ,catalog="seee"
)
public class Productoterminado  implements java.io.Serializable {


     private Integer id;
     private Modelo modelo;
     private Color color;
     private Muestrario muestrario;
     private Marca marca;
     private Tamano tamano;
     private Ubicacion ubicacion;
     private int nroProducto;
     private Float precioEstimado;
     private String nombre;
     private int nivelReaprovisionamiento;
     private int stockMaximo;
     private Date fechaIngreso;
     private int stockActual;
     private Float precioVenta;
     private Set<Productoimportado> productoimportados = new HashSet<Productoimportado>(0);
     private Set<Detallepedidoproductosterminados> detallepedidoproductosterminadoses = new HashSet<Detallepedidoproductosterminados>(0);
     private Set<Lote> lotes = new HashSet<Lote>(0);
     private Set<Accesorio> accesorios = new HashSet<Accesorio>(0);
     private Set<Productofabricado> productofabricados = new HashSet<Productofabricado>(0);
     private Set<Detalleventa> detalleventas = new HashSet<Detalleventa>(0);

    public Productoterminado() {
    }

	
    public Productoterminado(Modelo modelo, Color color, Marca marca, Tamano tamano, Ubicacion ubicacion, int nroProducto, String nombre, int nivelReaprovisionamiento, int stockMaximo, Date fechaIngreso, int stockActual) {
        this.modelo = modelo;
        this.color = color;
        this.marca = marca;
        this.tamano = tamano;
        this.ubicacion = ubicacion;
        this.nroProducto = nroProducto;
        this.nombre = nombre;
        this.nivelReaprovisionamiento = nivelReaprovisionamiento;
        this.stockMaximo = stockMaximo;
        this.fechaIngreso = fechaIngreso;
        this.stockActual = stockActual;
    }
    public Productoterminado(Modelo modelo, Color color, Muestrario muestrario, Marca marca, Tamano tamano, Ubicacion ubicacion, int nroProducto, Float precioEstimado, String nombre, int nivelReaprovisionamiento, int stockMaximo, Date fechaIngreso, int stockActual, Float precioVenta, Set<Productoimportado> productoimportados, Set<Detallepedidoproductosterminados> detallepedidoproductosterminadoses, Set<Lote> lotes, Set<Accesorio> accesorios, Set<Productofabricado> productofabricados, Set<Detalleventa> detalleventas) {
       this.modelo = modelo;
       this.color = color;
       this.muestrario = muestrario;
       this.marca = marca;
       this.tamano = tamano;
       this.ubicacion = ubicacion;
       this.nroProducto = nroProducto;
       this.precioEstimado = precioEstimado;
       this.nombre = nombre;
       this.nivelReaprovisionamiento = nivelReaprovisionamiento;
       this.stockMaximo = stockMaximo;
       this.fechaIngreso = fechaIngreso;
       this.stockActual = stockActual;
       this.precioVenta = precioVenta;
       this.productoimportados = productoimportados;
       this.detallepedidoproductosterminadoses = detallepedidoproductosterminadoses;
       this.lotes = lotes;
       this.accesorios = accesorios;
       this.productofabricados = productofabricados;
       this.detalleventas = detalleventas;
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
    @JoinColumn(name="idModelo", nullable=false)
    public Modelo getModelo() {
        return this.modelo;
    }
    
    public void setModelo(Modelo modelo) {
        this.modelo = modelo;
    }
@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="idColor", nullable=false)
    public Color getColor() {
        return this.color;
    }
    
    public void setColor(Color color) {
        this.color = color;
    }
@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="idMuestrario")
    public Muestrario getMuestrario() {
        return this.muestrario;
    }
    
    public void setMuestrario(Muestrario muestrario) {
        this.muestrario = muestrario;
    }
@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="idMarca", nullable=false)
    public Marca getMarca() {
        return this.marca;
    }
    
    public void setMarca(Marca marca) {
        this.marca = marca;
    }
@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="idTamano", nullable=false)
    public Tamano getTamano() {
        return this.tamano;
    }
    
    public void setTamano(Tamano tamano) {
        this.tamano = tamano;
    }
@ManyToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="idUbicacion", nullable=false)
    public Ubicacion getUbicacion() {
        return this.ubicacion;
    }
    
    public void setUbicacion(Ubicacion ubicacion) {
        this.ubicacion = ubicacion;
    }
    
    @Column(name="nroProducto", nullable=false)
    public int getNroProducto() {
        return this.nroProducto;
    }
    
    public void setNroProducto(int nroProducto) {
        this.nroProducto = nroProducto;
    }
    
    @Column(name="precioEstimado", precision=9)
    public Float getPrecioEstimado() {
        return this.precioEstimado;
    }
    
    public void setPrecioEstimado(Float precioEstimado) {
        this.precioEstimado = precioEstimado;
    }
    
    @Column(name="nombre", nullable=false, length=20)
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    @Column(name="nivelReaprovisionamiento", nullable=false)
    public int getNivelReaprovisionamiento() {
        return this.nivelReaprovisionamiento;
    }
    
    public void setNivelReaprovisionamiento(int nivelReaprovisionamiento) {
        this.nivelReaprovisionamiento = nivelReaprovisionamiento;
    }
    
    @Column(name="stockMaximo", nullable=false)
    public int getStockMaximo() {
        return this.stockMaximo;
    }
    
    public void setStockMaximo(int stockMaximo) {
        this.stockMaximo = stockMaximo;
    }
    @Temporal(TemporalType.DATE)
    @Column(name="fechaIngreso", nullable=false, length=10)
    public Date getFechaIngreso() {
        return this.fechaIngreso;
    }
    
    public void setFechaIngreso(Date fechaIngreso) {
        this.fechaIngreso = fechaIngreso;
    }
    
    @Column(name="stockActual", nullable=false)
    public int getStockActual() {
        return this.stockActual;
    }
    
    public void setStockActual(int stockActual) {
        this.stockActual = stockActual;
    }
    
    @Column(name="precioVenta", precision=9)
    public Float getPrecioVenta() {
        return this.precioVenta;
    }
    
    public void setPrecioVenta(Float precioVenta) {
        this.precioVenta = precioVenta;
    }
@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="productoterminado")
    public Set<Productoimportado> getProductoimportados() {
        return this.productoimportados;
    }
    
    public void setProductoimportados(Set<Productoimportado> productoimportados) {
        this.productoimportados = productoimportados;
    }
@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="productoterminado")
    public Set<Detallepedidoproductosterminados> getDetallepedidoproductosterminadoses() {
        return this.detallepedidoproductosterminadoses;
    }
    
    public void setDetallepedidoproductosterminadoses(Set<Detallepedidoproductosterminados> detallepedidoproductosterminadoses) {
        this.detallepedidoproductosterminadoses = detallepedidoproductosterminadoses;
    }
@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="productoterminado")
    public Set<Lote> getLotes() {
        return this.lotes;
    }
    
    public void setLotes(Set<Lote> lotes) {
        this.lotes = lotes;
    }
@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="productoterminado")
    public Set<Accesorio> getAccesorios() {
        return this.accesorios;
    }
    
    public void setAccesorios(Set<Accesorio> accesorios) {
        this.accesorios = accesorios;
    }
@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="productoterminado")
    public Set<Productofabricado> getProductofabricados() {
        return this.productofabricados;
    }
    
    public void setProductofabricados(Set<Productofabricado> productofabricados) {
        this.productofabricados = productofabricados;
    }
@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="productoterminado")
    public Set<Detalleventa> getDetalleventas() {
        return this.detalleventas;
    }
    
    public void setDetalleventas(Set<Detalleventa> detalleventas) {
        this.detalleventas = detalleventas;
    }




}

