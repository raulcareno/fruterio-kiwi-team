/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package jsf;

import ejb.Condicioniva;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.FacesConverter;
import javax.faces.model.SelectItem;



/**
 *
 * @author wasaaa
 */
@ManagedBean(name="condicionIvaController")
@SessionScoped
public class CondicionIvaController {
    private Condicioniva current;
    @EJB private ejb.facade.CondicionivaFacade ejbFacade;

    public Condicioniva getCurrent() {
        return current == null ? new Condicioniva() : current;
    }

    public List<SelectItem> getCondicionesIVA(){
        List<Condicioniva> condiciones = ejbFacade.findAll();
        List<SelectItem> condicionesSelectItem = new ArrayList<SelectItem>();
        for (Condicioniva condicion : condiciones) {
            condicionesSelectItem.add(new SelectItem(condicion, condicion.getNombre()));
        }

        return condicionesSelectItem;
    }

    @FacesConverter(forClass = Condicioniva.class)
    public static class CondicionIvaConverterConverter implements Converter {

        public Object getAsObject(FacesContext facesContext, UIComponent component, String value) {
            if (value == null || value.length() == 0) {
                return null;
            }
            CondicionIvaController controller = (CondicionIvaController) facesContext.getApplication().getELResolver().
                    getValue(facesContext.getELContext(), null, "condicionIvaController");
            return controller.ejbFacade.find(getKey(value));

        }

        java.lang.Integer getKey(String value) {
            java.lang.Integer key;
            key = Integer.valueOf(value);
            return key;
        }

        String getStringKey(java.lang.Integer value) {
            StringBuffer sb = new StringBuffer();
            sb.append(value);
            return sb.toString();
        }

        public String getAsString(FacesContext facesContext, UIComponent component, Object object) {
            if (object == null) {
                return null;
            }
            if (object instanceof Condicioniva) {
                return getStringKey(((Condicioniva)object).getId());
            } else {
                throw new IllegalArgumentException("object " + object + " is of type " + object.getClass().getName() + "; expected type: " + ProvinciaController.class.getName());
            }
        }
    }
    

}
