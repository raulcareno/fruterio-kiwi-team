/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package ejb.facade;

import ejb.Condicioniva;
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
public class CondicionivaFacade {
    @PersistenceContext(unitName = "EnterpriseApplication2-ejbPU")
    private EntityManager em;

    public void create(Condicioniva condicioniva) {
        em.persist(condicioniva);
    }

    public void edit(Condicioniva condicioniva) {
        em.merge(condicioniva);
    }

    public void remove(Condicioniva condicioniva) {
        em.remove(em.merge(condicioniva));
    }

    public Condicioniva find(Object id) {
        return em.find(Condicioniva.class, id);
    }

    public List<Condicioniva> findAll() {
        return em.createQuery("select object(o) from Condicioniva as o").getResultList();
    }

    public List<Condicioniva> findRange(int[] range) {
        Query q = em.createQuery("select object(o) from Condicioniva as o");
        q.setMaxResults(range[1] - range[0]);
        q.setFirstResult(range[0]);
        return q.getResultList();
    }

    public int count() {
        return ((Long) em.createQuery("select count(o) from Condicioniva as o").getSingleResult()).intValue();
    }

}
