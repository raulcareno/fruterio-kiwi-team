package model;
// Generated 07-jun-2010 21:59:35 by Hibernate Tools 3.2.1.GA


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Cheque generated by hbm2java
 */
public class Cheque  implements java.io.Serializable {


     private Integer id;
     private String banco;
     private int nro;
     private String emisor;
     private Date fechaEmision;
     private Date fechaCobro;
     private String cobrador;
     private Set cobrocheques = new HashSet(0);

    public Cheque() {
    }

	
    public Cheque(String banco, int nro, String emisor, Date fechaEmision) {
        this.banco = banco;
        this.nro = nro;
        this.emisor = emisor;
        this.fechaEmision = fechaEmision;
    }
    public Cheque(String banco, int nro, String emisor, Date fechaEmision, Date fechaCobro, String cobrador, Set cobrocheques) {
       this.banco = banco;
       this.nro = nro;
       this.emisor = emisor;
       this.fechaEmision = fechaEmision;
       this.fechaCobro = fechaCobro;
       this.cobrador = cobrador;
       this.cobrocheques = cobrocheques;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public String getBanco() {
        return this.banco;
    }
    
    public void setBanco(String banco) {
        this.banco = banco;
    }
    public int getNro() {
        return this.nro;
    }
    
    public void setNro(int nro) {
        this.nro = nro;
    }
    public String getEmisor() {
        return this.emisor;
    }
    
    public void setEmisor(String emisor) {
        this.emisor = emisor;
    }
    public Date getFechaEmision() {
        return this.fechaEmision;
    }
    
    public void setFechaEmision(Date fechaEmision) {
        this.fechaEmision = fechaEmision;
    }
    public Date getFechaCobro() {
        return this.fechaCobro;
    }
    
    public void setFechaCobro(Date fechaCobro) {
        this.fechaCobro = fechaCobro;
    }
    public String getCobrador() {
        return this.cobrador;
    }
    
    public void setCobrador(String cobrador) {
        this.cobrador = cobrador;
    }
    public Set getCobrocheques() {
        return this.cobrocheques;
    }
    
    public void setCobrocheques(Set cobrocheques) {
        this.cobrocheques = cobrocheques;
    }




}

