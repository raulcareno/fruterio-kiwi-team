/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package ejb.facade;

import ejb.Estadocartera;
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
public class EstadocarteraFacade {
    @PersistenceContext(unitName = "EnterpriseApplication2-ejbPU")
    private EntityManager em;

    public void create(Estadocartera estadocartera) {
        em.persist(estadocartera);
    }

    public void edit(Estadocartera estadocartera) {
        em.merge(estadocartera);
    }

    public void remove(Estadocartera estadocartera) {
        em.remove(em.merge(estadocartera));
    }

    public Estadocartera find(Object id) {
        return em.find(Estadocartera.class, id);
    }

    public List<Estadocartera> findAll() {
        return em.createQuery("select object(o) from Estadocartera as o").getResultList();
    }

    public List<Estadocartera> findRange(int[] range) {
        Query q = em.createQuery("select object(o) from Estadocartera as o");
        q.setMaxResults(range[1] - range[0]);
        q.setFirstResult(range[0]);
        return q.getResultList();
    }

    public int count() {
        return ((Long) em.createQuery("select count(o) from Estadocartera as o").getSingleResult()).intValue();
    }

}
