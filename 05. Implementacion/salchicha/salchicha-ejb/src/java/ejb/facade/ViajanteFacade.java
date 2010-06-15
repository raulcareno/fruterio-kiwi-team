/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package ejb.facade;

import ejb.Viajante;
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
public class ViajanteFacade {
    @PersistenceContext(unitName = "EnterpriseApplication2-ejbPU")
    private EntityManager em;

    public void create(Viajante viajante) {
        em.persist(viajante);
    }

    public void edit(Viajante viajante) {
        em.merge(viajante);
    }

    public void remove(Viajante viajante) {
        em.remove(em.merge(viajante));
    }

    public Viajante find(Object id) {
        return em.find(Viajante.class, id);
    }

    public List<Viajante> findAll() {
        return em.createQuery("select object(o) from Viajante as o").getResultList();
    }

    public List<Viajante> findRange(int[] range) {
        Query q = em.createQuery("select object(o) from Viajante as o");
        q.setMaxResults(range[1] - range[0]);
        q.setFirstResult(range[0]);
        return q.getResultList();
    }

    public int count() {
        return ((Long) em.createQuery("select count(o) from Viajante as o").getSingleResult()).intValue();
    }

}
