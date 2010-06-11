/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package ejb.facade;

import ejb.Empresacliente;
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
public class EmpresaclienteFacade {
    @PersistenceContext(unitName = "EnterpriseApplication2-ejbPU")
    private EntityManager em;

    public void create(Empresacliente empresacliente) {
        em.persist(empresacliente);
    }

    public void edit(Empresacliente empresacliente) {
        em.merge(empresacliente);
    }

    public void remove(Empresacliente empresacliente) {
        em.remove(em.merge(empresacliente));
    }

    public Empresacliente find(Object id) {
        return em.find(Empresacliente.class, id);
    }

    public List<Empresacliente> findAll() {
        return em.createQuery("select object(o) from Empresacliente as o").getResultList();
    }

    public List<Empresacliente> findRange(int[] range) {
        Query q = em.createQuery("select object(o) from Empresacliente as o");
        q.setMaxResults(range[1] - range[0]);
        q.setFirstResult(range[0]);
        return q.getResultList();
    }

    public int count() {
        return ((Long) em.createQuery("select count(o) from Empresacliente as o").getSingleResult()).intValue();
    }

}
