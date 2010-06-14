/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package ejb.facade;

import ejb.Barrio;
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
public class BarrioFacade {
    @PersistenceContext(unitName = "EnterpriseApplication2-ejbPU")
    private EntityManager em;

    public void create(Barrio barrio) {
        em.persist(barrio);
    }

    public void edit(Barrio barrio) {
        em.merge(barrio);
    }

    public void remove(Barrio barrio) {
        em.remove(em.merge(barrio));
    }

    public Barrio find(Object id) {
        return em.find(Barrio.class, id);
    }

    public List<Barrio> findAll() {
        return em.createQuery("select object(o) from Barrio as o").getResultList();
    }

    public List<Barrio> findRange(int[] range) {
        Query q = em.createQuery("select object(o) from Barrio as o");
        q.setMaxResults(range[1] - range[0]);
        q.setFirstResult(range[0]);
        return q.getResultList();
    }

    public int count() {
        return ((Long) em.createQuery("select count(o) from Barrio as o").getSingleResult()).intValue();
    }

}
