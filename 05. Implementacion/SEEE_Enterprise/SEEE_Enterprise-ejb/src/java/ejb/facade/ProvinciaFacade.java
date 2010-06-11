/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package ejb.facade;

import ejb.Localidad;
import ejb.Provincia;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;


/**
 *
 * @author wasaaa
 */
@Stateless

public class ProvinciaFacade {
    @PersistenceContext(unitName = "EnterpriseApplication2-ejbPU")
    private EntityManager em;

    public void create(Provincia provincia) {
        em.persist(provincia);
    }

    public void edit(Provincia provincia) {
        em.merge(provincia);
    }

    public void remove(Provincia provincia) {
        em.remove(em.merge(provincia));
    }

    public Provincia find(Object id) {
        return em.find(Provincia.class, id);
    }

    public List<Provincia> findAll() {
        return em.createQuery("select object(o) from Provincia as o").getResultList();
    }

    public List<Provincia> findRange(int[] range) {
        Query q = em.createQuery("select object(o) from Provincia as o");
        q.setMaxResults(range[1] - range[0]);
        q.setFirstResult(range[0]);
        return q.getResultList();
    }

    

    public int count() {
        return ((Long) em.createQuery("select count(o) from Provincia as o").getSingleResult()).intValue();
    }

    public List<Localidad> findLocalidades(Provincia idProvincia){
        return em.createNamedQuery("Localidad.findByIdProvincia").setParameter("idProvincia", idProvincia).getResultList();
//        return em.createQuery("select object(o) from Localidad as o WHERE o.idProvincia = " + idProvincia).getResultList();
        

    }

}
