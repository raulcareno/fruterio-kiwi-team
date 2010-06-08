package business;

import hibernate.HibernateUtil;
import java.util.LinkedList;
import javax.swing.JOptionPane;
import model.Provincia;
import org.hibernate.Session;

/**
 * @author Waisman, Gabriel Leandro
 */
public class BusinessGeneral <E>{

    /**
     *  Constructor de la clase sin parametros.
     */
    public BusinessGeneral() {
    }

    public LinkedList <E> listar(E clase) {
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

    public void agregarModificar(E nuevo) {
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

    public void eliminar(E nuevo) {
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

    public E consultarObjetoPorId(E clase, int idObjeto) {
        E result = null;
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        try {
            session.beginTransaction();
            result = (E) session.load(clase.getClass(), idObjeto);
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