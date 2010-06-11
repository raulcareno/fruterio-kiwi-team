package jsf;

import ejb.Localidad;
import ejb.Provincia;

import ejb.facade.ProvinciaFacade;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;

import java.util.ResourceBundle;
import javax.ejb.EJB;
import javax.faces.bean.ApplicationScoped;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.FacesConverter;
import javax.faces.model.DataModel;
import javax.faces.model.ListDataModel;
import javax.faces.model.SelectItem;
import jsf.util.JsfUtil;
import jsf.util.PaginationHelper;

@ManagedBean(name = "provinciaController")
@SessionScoped
public class ProvinciaController {

    @EJB
    private ejb.facade.ProvinciaFacade ejbFacade;
    @EJB
    private ejb.facade.LocalidadFacade ejbFacadeLocalidad;
    private Provincia current;
    private Provincia provinciaSeleccionada;


    public void setCurrent(Provincia current) {
        this.current = current;
    }

    public Provincia getCurrent() {
        return current == null ? current = new Provincia() : current;
    }

    public Provincia getProvinciaSeleccionada() {
        return provinciaSeleccionada;
    }

    public void setProvinciaSeleccionada(Provincia provinciaSeleccionada) {
        this.provinciaSeleccionada = provinciaSeleccionada;
    }

    

    public List<SelectItem> getProvincias() {
        List<Provincia> provincias = ejbFacade.findAll();
        List<SelectItem> provinciasSelectItem = new ArrayList<SelectItem>();
        for (Provincia provincia : provincias) {
            provinciasSelectItem.add(new SelectItem(provincia, provincia.getNombre()));
        }

        return provinciasSelectItem;
    }

    public List<SelectItem> getLocalidades() {
        
        if (provinciaSeleccionada != null) {
            List<Localidad> localidades = ejbFacade.findLocalidades(provinciaSeleccionada);
            System.out.println(localidades);
            List<SelectItem> localidaedesSelectItem = new ArrayList<SelectItem>();
            for (Localidad localidad : localidades) {
                localidaedesSelectItem.add(new SelectItem(localidad, localidad.getNombre()));
            }
            return localidaedesSelectItem;
        }
        return null;
    }

    @FacesConverter(forClass = Provincia.class)
    public static class ProvinciaControllerConverter implements Converter {

        public Object getAsObject(FacesContext facesContext, UIComponent component, String value) {
            if (value == null || value.length() == 0) {
                return null;
            }
            System.out.println(component.getClientId());
            System.out.println(component.getId());
            ProvinciaController controller = (ProvinciaController) facesContext.getApplication().getELResolver().
                    getValue(facesContext.getELContext(), null, "provinciaController");
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
            if (object instanceof Provincia) {
                Provincia o = (Provincia) object;
                return getStringKey(o.getId());
            } else {
                throw new IllegalArgumentException("object " + object + " is of type " + object.getClass().getName() + "; expected type: " + ProvinciaController.class.getName());
            }
        }
    }

      @FacesConverter(forClass = Localidad.class)
    public static class LocalidadControllerConverter implements Converter {

        public Object getAsObject(FacesContext facesContext, UIComponent component, String value) {
            if (value == null || value.length() == 0) {
                return null;
            }
            System.out.println(component.getClientId());
            System.out.println(component.getId());
              ProvinciaController controller = (ProvinciaController) facesContext.getApplication().getELResolver().
                    getValue(facesContext.getELContext(), null, "provinciaController");
           return controller.ejbFacadeLocalidad.find(getKey(value));
            

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
            if (object instanceof Localidad) {
                Localidad o = (Localidad) object;
                return getStringKey(o.getId());
            } else {
                throw new IllegalArgumentException("object " + object + " is of type " + object.getClass().getName() + "; expected type: " + ProvinciaController.class.getName());
            }
        }
    }
}
