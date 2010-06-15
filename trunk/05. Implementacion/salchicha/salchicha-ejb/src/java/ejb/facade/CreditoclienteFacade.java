/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package ejb.facade;

import ejb.Creditocliente;
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
public class CreditoclienteFacade {
    @PersistenceContext(unitName = "EnterpriseApplication2-ejbPU")
    private EntityManager em;

    public void create(Creditocliente creditocliente) {
        em.persist(creditocliente);
    }

    public void edit(Creditocliente creditocliente) {
        em.merge(creditocliente);
    }

    public void remove(Creditocliente creditocliente) {
        em.remove(em.merge(creditocliente));
    }

    public Creditocliente find(Object id) {
        return em.find(Creditocliente.class, id);
    }

    public List<Creditocliente> findAll() {
        return em.createQuery("select object(o) from Creditocliente as o").getResultList();
    }

    public List<Creditocliente> findRange(int[] range) {
        Query q = em.createQuery("select object(o) from Creditocliente as o");
        q.setMaxResults(range[1] - range[0]);
        q.setFirstResult(range[0]);
        return q.getResultList();
    }

    public int count() {
        return ((Long) em.createQuery("select count(o) from Creditocliente as o").getSingleResult()).intValue();
    }

}
