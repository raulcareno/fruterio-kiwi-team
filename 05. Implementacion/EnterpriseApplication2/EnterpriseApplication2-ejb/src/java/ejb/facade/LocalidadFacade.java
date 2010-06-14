/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package ejb.facade;

import ejb.Localidad;
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
public class LocalidadFacade {
    @PersistenceContext(unitName = "EnterpriseApplication2-ejbPU")
    private EntityManager em;

    public void create(Localidad localidad) {
        em.persist(localidad);
    }

    public void edit(Localidad localidad) {
        em.merge(localidad);
    }

    public void remove(Localidad localidad) {
        em.remove(em.merge(localidad));
    }

    public Localidad find(Object id) {
        return em.find(Localidad.class, id);
    }

    public List<Localidad> findAll() {
        return em.createQuery("select object(o) from Localidad as o").getResultList();
    }

    public List<Localidad> findRange(int[] range) {
        Query q = em.createQuery("select object(o) from Localidad as o");
        q.setMaxResults(range[1] - range[0]);
        q.setFirstResult(range[0]);
        return q.getResultList();
    }

    public int count() {
        return ((Long) em.createQuery("select count(o) from Localidad as o").getSingleResult()).intValue();
    }

}
