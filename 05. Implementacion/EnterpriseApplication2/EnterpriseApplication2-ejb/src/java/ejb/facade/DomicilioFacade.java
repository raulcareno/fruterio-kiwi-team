/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package ejb.facade;

import ejb.Domicilio;
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
public class DomicilioFacade {
    @PersistenceContext(unitName = "EnterpriseApplication2-ejbPU")
    private EntityManager em;

    public void create(Domicilio domicilio) {
        em.persist(domicilio);
    }

    public void edit(Domicilio domicilio) {
        em.merge(domicilio);
    }

    public void remove(Domicilio domicilio) {
        em.remove(em.merge(domicilio));
    }

    public Domicilio find(Object id) {
        return em.find(Domicilio.class, id);
    }

    public List<Domicilio> findAll() {
        return em.createQuery("select object(o) from Domicilio as o").getResultList();
    }

    public List<Domicilio> findRange(int[] range) {
        Query q = em.createQuery("select object(o) from Domicilio as o");
        q.setMaxResults(range[1] - range[0]);
        q.setFirstResult(range[0]);
        return q.getResultList();
    }

    public int count() {
        return ((Long) em.createQuery("select count(o) from Domicilio as o").getSingleResult()).intValue();
    }

}
