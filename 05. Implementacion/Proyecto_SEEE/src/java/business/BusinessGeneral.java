package business;

import hibernate.HibernateUtil;
import java.util.LinkedList;
import javax.swing.JOptionPane;
import model.Provincia;
import org.hibernate.Session;

/**
 * @author Waisman, Gabriel Leandro
 */
public class BusinessGeneral {

    /**
     *  Constructor de la clase sin parametros.
     */
    public BusinessGeneral() {
    }

    public LinkedList <Object> listar(Object clase) {
        LinkedList result = new LinkedList();
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        try {
            session.beginTransaction();
            result = new LinkedList (session.createQuery("FROM "+clase.getClass().getName()).list());
            session.getTransaction().commit();
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null,"Error al listar "+clase.getClass().getName(),"Error",JOptionPane.ERROR_MESSAGE);
            e.printStackTrace();
            session.getTransaction().rollback();
        }
        return result;
    }

    public void agregarModificar(Object nuevo) {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        try {
            session.beginTransaction();
            session.persist(nuevo);
            session.getTransaction().commit();
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null,"Error al persistir"+nuevo.getClass().getName(),"Error",JOptionPane.ERROR_MESSAGE);
            e.printStackTrace();
            session.getTransaction().rollback();
        }
    }

    public void eliminar(Object nuevo) {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        try {
            session.beginTransaction();
            session.delete(nuevo);
            session.getTransaction().commit();
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null,"Error al eliminar "+nuevo.getClass().getName(),"Error",JOptionPane.ERROR_MESSAGE);
            e.printStackTrace();
            session.getTransaction().rollback();
        }
    }

    public Object consultarObjetoPorId(Object clase, int idObjeto) {
        Object result = new Object();
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        try {
            session.beginTransaction();
            result = session.load(clase.getClass(), idObjeto);
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null,"Error al consultar "+clase.getClass().getName()+" por id","Error",JOptionPane.ERROR_MESSAGE);
            e.printStackTrace();
            session.getTransaction().rollback();
        }
        return result;
    }

    public Provincia consultarProvinciaPorId(int idObjeto) {
        Provincia prov = null;
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        try {
            session.beginTransaction();
            prov = (Provincia) session.load(Provincia.class, idObjeto);
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null,"Error al consultar por id","Error",JOptionPane.ERROR_MESSAGE);
            e.printStackTrace();
            session.getTransaction().rollback();
        }
        return prov;
    }
}