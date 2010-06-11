/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package ejb.facade;

import ejb.Persona;
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
public class PersonaFacade {
    @PersistenceContext(unitName = "EnterpriseApplication2-ejbPU")
    private EntityManager em;

    public void create(Persona persona) {
        em.persist(persona);
    }

    public void edit(Persona persona) {
        em.merge(persona);
    }

    public void remove(Persona persona) {
        em.remove(em.merge(persona));
    }

    public Persona find(Object id) {
        return em.find(Persona.class, id);
    }

    public List<Persona> findAll() {
        return em.createQuery("select object(o) from Persona as o").getResultList();
    }

    public List<Persona> findRange(int[] range) {
        Query q = em.createQuery("select object(o) from Persona as o");
        q.setMaxResults(range[1] - range[0]);
        q.setFirstResult(range[0]);
        return q.getResultList();
    }

    public int count() {
        return ((Long) em.createQuery("select count(o) from Persona as o").getSingleResult()).intValue();
    }

}
