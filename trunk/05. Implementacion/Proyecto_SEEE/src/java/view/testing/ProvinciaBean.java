/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package view.testing;

import business.BusinessGeneral;
import java.util.ArrayList;
import java.util.LinkedList;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ApplicationScoped;
import javax.faces.model.SelectItem;
import model.Provincia;

/**
 *
 * @author wasaaa
 */
@ManagedBean(name = "provinciaBean")
@ApplicationScoped
public class ProvinciaBean {

    private ArrayList<SelectItem> provincias;

    public ProvinciaBean() {
        BusinessGeneral<Provincia> bgProvincias = new BusinessGeneral<Provincia>();
        LinkedList<Provincia> auxProvincias = bgProvincias.listar(new Provincia());
        provincias = new ArrayList<SelectItem>();
        for (Provincia provincia : auxProvincias) {
            provincias.add(new SelectItem(provincia.getId(), provincia.getNombre()));
        }

    }

    public ArrayList<SelectItem> getProvincias() {
        return provincias;
    }

    public void setProvincias(ArrayList<SelectItem> provincias) {
        this.provincias = provincias;
    }
}
