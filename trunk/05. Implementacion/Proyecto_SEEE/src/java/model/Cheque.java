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
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Cheque generated by hbm2java
 */
@Entity
@Table(name="cheque"
    ,catalog="seee"
)
public class Cheque  implements java.io.Serializable {


     private Integer id;
     private String banco;
     private int nro;
     private String emisor;
     private Date fechaEmision;
     private Date fechaCobro;
     private String cobrador;
     private Set<Cobrocheque> cobrocheques = new HashSet<Cobrocheque>(0);

    public Cheque() {
    }

	
    public Cheque(String banco, int nro, String emisor, Date fechaEmision) {
        this.banco = banco;
        this.nro = nro;
        this.emisor = emisor;
        this.fechaEmision = fechaEmision;
    }
    public Cheque(String banco, int nro, String emisor, Date fechaEmision, Date fechaCobro, String cobrador, Set<Cobrocheque> cobrocheques) {
       this.banco = banco;
       this.nro = nro;
       this.emisor = emisor;
       this.fechaEmision = fechaEmision;
       this.fechaCobro = fechaCobro;
       this.cobrador = cobrador;
       this.cobrocheques = cobrocheques;
    }
   
     @Id @GeneratedValue(strategy=IDENTITY)
    
    @Column(name="id", unique=true, nullable=false)
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    
    @Column(name="banco", nullable=false, length=20)
    public String getBanco() {
        return this.banco;
    }
    
    public void setBanco(String banco) {
        this.banco = banco;
    }
    
    @Column(name="nro", nullable=false)
    public int getNro() {
        return this.nro;
    }
    
    public void setNro(int nro) {
        this.nro = nro;
    }
    
    @Column(name="emisor", nullable=false, length=100)
    public String getEmisor() {
        return this.emisor;
    }
    
    public void setEmisor(String emisor) {
        this.emisor = emisor;
    }
    @Temporal(TemporalType.DATE)
    @Column(name="fechaEmision", nullable=false, length=10)
    public Date getFechaEmision() {
        return this.fechaEmision;
    }
    
    public void setFechaEmision(Date fechaEmision) {
        this.fechaEmision = fechaEmision;
    }
    @Temporal(TemporalType.DATE)
    @Column(name="fechaCobro", length=10)
    public Date getFechaCobro() {
        return this.fechaCobro;
    }
    
    public void setFechaCobro(Date fechaCobro) {
        this.fechaCobro = fechaCobro;
    }
    
    @Column(name="cobrador", length=100)
    public String getCobrador() {
        return this.cobrador;
    }
    
    public void setCobrador(String cobrador) {
        this.cobrador = cobrador;
    }
@OneToMany(cascade=CascadeType.ALL, fetch=FetchType.LAZY, mappedBy="cheque")
    public Set<Cobrocheque> getCobrocheques() {
        return this.cobrocheques;
    }
    
    public void setCobrocheques(Set<Cobrocheque> cobrocheques) {
        this.cobrocheques = cobrocheques;
    }




}

