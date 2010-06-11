/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package ejb.facade;

import ejb.Detallecartera;
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
public class DetallecarteraFacade {
    @PersistenceContext(unitName = "EnterpriseApplication2-ejbPU")
    private EntityManager em;

    public void create(Detallecartera detallecartera) {
        em.persist(detallecartera);
    }

    public void edit(Detallecartera detallecartera) {
        em.merge(detallecartera);
    }

    public void remove(Detallecartera detallecartera) {
        em.remove(em.merge(detallecartera));
    }

    public Detallecartera find(Object id) {
        return em.find(Detallecartera.class, id);
    }

    public List<Detallecartera> findAll() {
        return em.createQuery("select object(o) from Detallecartera as o").getResultList();
    }

    public List<Detallecartera> findRange(int[] range) {
        Query q = em.createQuery("select object(o) from Detallecartera as o");
        q.setMaxResults(range[1] - range[0]);
        q.setFirstResult(range[0]);
        return q.getResultList();
    }

    public int count() {
        return ((Long) em.createQuery("select count(o) from Detallecartera as o").getSingleResult()).intValue();
    }

}
