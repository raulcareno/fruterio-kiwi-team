/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package ejb.facade;

import ejb.Tipodni;
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
public class TipodniFacade {
    @PersistenceContext(unitName = "EnterpriseApplication2-ejbPU")
    private EntityManager em;

    public void create(Tipodni tipodni) {
        em.persist(tipodni);
    }

    public void edit(Tipodni tipodni) {
        em.merge(tipodni);
    }

    public void remove(Tipodni tipodni) {
        em.remove(em.merge(tipodni));
    }

    public Tipodni find(Object id) {
        return em.find(Tipodni.class, id);
    }

    public List<Tipodni> findAll() {
        return em.createQuery("select object(o) from Tipodni as o").getResultList();
    }

    public List<Tipodni> findRange(int[] range) {
        Query q = em.createQuery("select object(o) from Tipodni as o");
        q.setMaxResults(range[1] - range[0]);
        q.setFirstResult(range[0]);
        return q.getResultList();
    }

    public int count() {
        return ((Long) em.createQuery("select count(o) from Tipodni as o").getSingleResult()).intValue();
    }

}
