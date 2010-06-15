/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package ejb.facade;

import ejb.Productofabricado;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author wasaaa
 */
@Stateless
public class ProductofabricadoFacade extends AbstractFacade<Productofabricado> {
    @PersistenceContext(unitName = "EnterpriseApplication2-ejbPU")
    private EntityManager em;

    protected EntityManager getEntityManager() {
        return em;
    }

    public ProductofabricadoFacade() {
        super(Productofabricado.class);
    }

}
