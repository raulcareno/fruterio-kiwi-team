
import business.BusinessGeneral;
import java.util.LinkedList;
import java.util.Set;
import model.Localidad;
import model.Provincia;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author wasaaa
 */
public class PruebaSanti {
    public static void main(String[] args) {
        BusinessGeneral<Provincia> bg = new BusinessGeneral<Provincia>();
        LinkedList<Provincia> provincias = bg.listar(new Provincia());

        Provincia prov1 = bg.consultarObjetoPorId(new Provincia(), 2);


        System.out.println(prov1.getNombre());
        Set<Localidad> setLocalidades = prov1.getLocalidads();
        for (Localidad object : setLocalidades) {
            System.out.println(object.getNombre());
        }




    }
}
