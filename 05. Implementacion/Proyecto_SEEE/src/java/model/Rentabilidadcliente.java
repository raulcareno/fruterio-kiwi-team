package model;
// Generated 07-jun-2010 1:17:21 by Hibernate Tools 3.2.1.GA


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * Rentabilidadcliente generated by hbm2java
 */
@Entity
@Table(name="rentabilidadcliente"
    ,catalog="seee"
)
public class Rentabilidadcliente  implements java.io.Serializable {


     private Integer id;
     private Empresacliente empresacliente;
     private float coeficiente;

    public Rentabilidadcliente() {
    }

    public Rentabilidadcliente(Empresacliente empresacliente, float coeficiente) {
       this.empresacliente = empresacliente;
       this.coeficiente = coeficiente;
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
    @JoinColumn(name="idEmpresaCliente", nullable=false)
    public Empresacliente getEmpresacliente() {
        return this.empresacliente;
    }
    
    public void setEmpresacliente(Empresacliente empresacliente) {
        this.empresacliente = empresacliente;
    }
    
    @Column(name="coeficiente", nullable=false, precision=9)
    public float getCoeficiente() {
        return this.coeficiente;
    }
    
    public void setCoeficiente(float coeficiente) {
        this.coeficiente = coeficiente;
    }




}


