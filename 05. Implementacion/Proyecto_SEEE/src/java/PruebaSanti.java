
import business.BusinessGeneral;
import java.util.LinkedList;
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
        BusinessGeneral bg = new BusinessGeneral();
        LinkedList provincias = bg.listar(Provincia.class);
        for (Object object : provincias) {
            System.out.println(object);
        }
    }
}
