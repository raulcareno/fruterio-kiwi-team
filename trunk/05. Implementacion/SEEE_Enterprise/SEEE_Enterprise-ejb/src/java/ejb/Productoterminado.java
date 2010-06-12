/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package ejb;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author wasaaa
 */
@Entity
@Table(name = "productoterminado")
@NamedQueries({
    @NamedQuery(name = "Productoterminado.findAll", query = "SELECT p FROM Productoterminado p"),
    @NamedQuery(name = "Productoterminado.findById", query = "SELECT p FROM Productoterminado p WHERE p.id = :id"),
    @NamedQuery(name = "Productoterminado.findByNroProducto", query = "SELECT p FROM Productoterminado p WHERE p.nroProducto = :nroProducto"),
    @NamedQuery(name = "Productoterminado.findByPrecioSugerido", query = "SELECT p FROM Productoterminado p WHERE p.precioSugerido = :precioSugerido"),
    @NamedQuery(name = "Productoterminado.findByNombre", query = "SELECT p FROM Productoterminado p WHERE p.nombre = :nombre"),
    @NamedQuery(name = "Productoterminado.findByNivelReaprovisionamiento", query = "SELECT p FROM Productoterminado p WHERE p.nivelReaprovisionamiento = :nivelReaprovisionamiento"),
    @NamedQuery(name = "Productoterminado.findByStockMaximo", query = "SELECT p FROM Productoterminado p WHERE p.stockMaximo = :stockMaximo"),
    @NamedQuery(name = "Productoterminado.findByFechaIngreso", query = "SELECT p FROM Productoterminado p WHERE p.fechaIngreso = :fechaIngreso"),
    @NamedQuery(name = "Productoterminado.findByStockActual", query = "SELECT p FROM Productoterminado p WHERE p.stockActual = :stockActual"),
    @NamedQuery(name = "Productoterminado.findByPrecioVenta", query = "SELECT p FROM Productoterminado p WHERE p.precioVenta = :precioVenta")})
public class Productoterminado implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @Column(name = "nroProducto")
    private String nroProducto;
    @Column(name = "precioSugerido")
    private Float precioSugerido;
    @Basic(optional = false)
    @Column(name = "nombre")
    private String nombre;
    @Basic(optional = false)
    @Column(name = "nivelReaprovisionamiento")
    private int nivelReaprovisionamiento;
    @Basic(optional = false)
    @Column(name = "stockMaximo")
    private int stockMaximo;
    @Basic(optional = false)
    @Column(name = "fechaIngreso")
    @Temporal(TemporalType.DATE)
    private Date fechaIngreso;
    @Basic(optional = false)
    @Column(name = "stockActual")
    private int stockActual;
    @Column(name = "precioVenta")
    private Float precioVenta;
    @JoinColumn(name = "idMuestrario", referencedColumnName = "id")
    @ManyToOne
    private Muestrario muestrario;
    @JoinColumn(name = "idUbicacion", referencedColumnName = "id")
    @ManyToOne
    private Ubicacion ubicacion;
    @JoinColumn(name = "idMarca", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Marca marca;
    @JoinColumn(name = "idTamano", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Tamano tamano;
    @JoinColumn(name = "idColor", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Color color;
    @JoinColumn(name = "idModelo", referencedColumnName = "id")
    @ManyToOne(optional = false)
    private Modelo modelo;
    @OneToOne(cascade = CascadeType.ALL, mappedBy = "productoterminado")
    private Productofabricado productofabricado;
    @OneToOne(cascade = CascadeType.ALL, mappedBy = "productoterminado")
    private Productoimportado productoimportado;

    public Productoterminado() {
    }

    public Productoterminado(Integer id) {
        this.id = id;
    }

    public Productoterminado(Integer id, String nroProducto, String nombre, int nivelReaprovisionamiento, int stockMaximo, Date fechaIngreso, int stockActual) {
        this.id = id;
        this.nroProducto = nroProducto;
        this.nombre = nombre;
        this.nivelReaprovisionamiento = nivelReaprovisionamiento;
        this.stockMaximo = stockMaximo;
        this.fechaIngreso = fechaIngreso;
        this.stockActual = stockActual;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNroProducto() {
        return nroProducto;
    }

    public void setNroProducto(String nroProducto) {
        this.nroProducto = nroProducto;
    }

    public Float getPrecioSugerido() {
        return precioSugerido;
    }

    public void setPrecioSugerido(Float precioSugerido) {
        this.precioSugerido = precioSugerido;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getNivelReaprovisionamiento() {
        return nivelReaprovisionamiento;
    }

    public void setNivelReaprovisionamiento(int nivelReaprovisionamiento) {
        this.nivelReaprovisionamiento = nivelReaprovisionamiento;
    }

    public int getStockMaximo() {
        return stockMaximo;
    }

    public void setStockMaximo(int stockMaximo) {
        this.stockMaximo = stockMaximo;
    }

    public Date getFechaIngreso() {
        return fechaIngreso;
    }

    public void setFechaIngreso(Date fechaIngreso) {
        this.fechaIngreso = fechaIngreso;
    }

    public int getStockActual() {
        return stockActual;
    }

    public void setStockActual(int stockActual) {
        this.stockActual = stockActual;
    }

    public Float getPrecioVenta() {
        return precioVenta;
    }

    public void setPrecioVenta(Float precioVenta) {
        this.precioVenta = precioVenta;
    }

    public Muestrario getMuestrario() {
        return muestrario;
    }

    public void setMuestrario(Muestrario muestrario) {
        this.muestrario = muestrario;
    }

    public Ubicacion getUbicacion() {
        return ubicacion;
    }

    public void setUbicacion(Ubicacion ubicacion) {
        this.ubicacion = ubicacion;
    }

    public Marca getMarca() {
        return marca;
    }

    public void setMarca(Marca marca) {
        this.marca = marca;
    }

    public Tamano getTamano() {
        return tamano;
    }

    public void setTamano(Tamano tamano) {
        this.tamano = tamano;
    }

    public Color getColor() {
        return color;
    }

    public void setColor(Color color) {
        this.color = color;
    }

    public Modelo getModelo() {
        return modelo;
    }

    public void setModelo(Modelo modelo) {
        this.modelo = modelo;
    }

    public Productofabricado getProductofabricado() {
        return productofabricado;
    }

    public void setProductofabricado(Productofabricado productofabricado) {
        this.productofabricado = productofabricado;
    }

    public Productoimportado getProductoimportado() {
        return productoimportado;
    }

    public void setProductoimportado(Productoimportado productoimportado) {
        this.productoimportado = productoimportado;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Productoterminado)) {
            return false;
        }
        Productoterminado other = (Productoterminado) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "ejb.Productoterminado[id=" + id + "]";
    }

}
