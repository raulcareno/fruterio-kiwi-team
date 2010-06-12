package jsf;

import ejb.Color;
import ejb.Marca;
import ejb.Modelo;
import ejb.Muestrario;
import ejb.Productoterminado;
import ejb.Tamano;
import ejb.Ubicacion;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.faces.bean.SessionScoped;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.FacesConverter;
import javax.faces.model.SelectItem;

@ManagedBean(name = "productoController")
@RequestScoped
public class ProductoController {

    private Productoterminado productoTerminado;
//    private Color color;
//    private Tamano tamano;
//    private Modelo modelo;
////    private Marca marca;
//    private Muestrario muestrario;
//    private Ubicacion ubicacion;
    @EJB
    private ejb.facade.ProductoterminadoFacade ejbProductoTerminado;
    @EJB
    private ejb.facade.MarcaFacade ejbMarca;
    @EJB
    private ejb.facade.ModeloFacade ejbModelo;
    @EJB
    private ejb.facade.TamanoFacade ejbTamano;
    @EJB
    private ejb.facade.ColorFacade ejbColor;

//    public Color getColor() {
//        return color == null ? color = new Color() : color;
//    }
//
//    public void setColor(Color color) {
//        this.color = color;
//    }
//
//    public Marca getMarca() {
//        return marca == null ? marca = new Marca() : marca;
//    }
//
//    public void setMarca(Marca marca) {
//        this.marca = marca;
//    }
//
//    public Modelo getModelo() {
//        return modelo == null ? modelo = new Modelo() : modelo;
//    }
//
//    public void setModelo(Modelo modelo) {
//        this.modelo = modelo;
//    }

//        public Tamano getTamano() {
//        return tamano == null ? tamano = new Tamano() : tamano;
//    }
//
//    public void setTamano(Tamano tamano) {
//        this.tamano = tamano;
//    }


    public Productoterminado getProductoTerminado() {
        return productoTerminado == null ? productoTerminado = new Productoterminado() : productoTerminado;
    }

    public void setProductoTerminado(Productoterminado productoTerminado) {
        this.productoTerminado = productoTerminado;
    }


    public List<SelectItem> getMarcas() {
        List<Marca> marcas = ejbMarca.findAll();
        List<SelectItem> marcasSelectItem = new ArrayList<SelectItem>();
        for (Marca marca : marcas) {
            marcasSelectItem.add(new SelectItem(marca, marca.getNombre()));
        }

        return marcasSelectItem;
    }

    public List<SelectItem> getModelos() {
        List<Modelo> modelos = ejbModelo.findAll();
        List<SelectItem> modelosSelectItem = new ArrayList<SelectItem>();
        for (Modelo modelo : modelos) {
            modelosSelectItem.add(new SelectItem(modelo, modelo.getNombre()));
        }

        return modelosSelectItem;
    }

    public List<SelectItem> getTamanos() {
        List<Tamano> tamanos = ejbTamano.findAll();
        List<SelectItem> tamanosSelectItem = new ArrayList<SelectItem>();
        for (Tamano tamano : tamanos) {
            tamanosSelectItem.add(new SelectItem(tamano, tamano.getNombre()));
        }

        return tamanosSelectItem;
    }

    public List<SelectItem> getColores() {
        List<Color> colores = ejbColor.findAll();
        List<SelectItem> coloresSelectItem = new ArrayList<SelectItem>();
        for (Color color : colores) {
            coloresSelectItem.add(new SelectItem(color, color.getNombre()));
        }

        return coloresSelectItem;
    }

    public String save() {
//        productoTerminado.setColor(color);
////        productoTerminado.setMarca(marca);
//        productoTerminado.setModelo(modelo);
//        productoTerminado.setTamano(tamano);
        productoTerminado.setFechaIngreso(new Date());

        ejbProductoTerminado.create(productoTerminado);

        return "success";

    }

    @FacesConverter(forClass = Marca.class)
    public static class MarcaControllerConverter implements Converter {

        @Override
        public Object getAsObject(FacesContext facesContext, UIComponent component, String value) {
            if (value == null || value.length() == 0) {
                return null;
            }
            System.out.println(component.getClientId());
            System.out.println(component.getId());
            ProductoController controller = (ProductoController) facesContext.getApplication().getELResolver().
                    getValue(facesContext.getELContext(), null, "productoController");
            return controller.ejbMarca.find(getKey(value));

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

        @Override
        public String getAsString(FacesContext facesContext, UIComponent component, Object object) {
            if (object == null) {
                return null;
            }
            if (object instanceof Marca) {
                Marca o = (Marca) object;
                return getStringKey(o.getId());
            } else {
                throw new IllegalArgumentException("object " + object + " is of type " + object.getClass().getName() + "; expected type: " + ProvinciaController.class.getName());
            }
        }
    }

    @FacesConverter(forClass = Color.class)
    public static class ColorControllerConverter implements Converter {

        @Override
        public Object getAsObject(FacesContext facesContext, UIComponent component, String value) {
            if (value == null || value.length() == 0) {
                return null;
            }
            System.out.println(component.getClientId());
            System.out.println(component.getId());
            ProductoController controller = (ProductoController) facesContext.getApplication().getELResolver().
                    getValue(facesContext.getELContext(), null, "productoController");
            return controller.ejbColor.find(getKey(value));

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

        @Override
        public String getAsString(FacesContext facesContext, UIComponent component, Object object) {
            if (object == null) {
                return null;
            }
            if (object instanceof Color) {
                Color o = (Color) object;
                return getStringKey(o.getId());
            } else {
                throw new IllegalArgumentException("object " + object + " is of type " + object.getClass().getName() + "; expected type: " + ProvinciaController.class.getName());
            }
        }
    }

    @FacesConverter(forClass = Tamano.class)
    public static class TamanoControllerConverter implements Converter {

        @Override
        public Object getAsObject(FacesContext facesContext, UIComponent component, String value) {
            if (value == null || value.length() == 0) {
                return null;
            }
            System.out.println(component.getClientId());
            System.out.println(component.getId());
            ProductoController controller = (ProductoController) facesContext.getApplication().getELResolver().
                    getValue(facesContext.getELContext(), null, "productoController");
            return controller.ejbTamano.find(getKey(value));

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

        @Override
        public String getAsString(FacesContext facesContext, UIComponent component, Object object) {
            if (object == null) {
                return null;
            }
            if (object instanceof Tamano) {
                Tamano o = (Tamano) object;
                return getStringKey(o.getId());
            } else {
                throw new IllegalArgumentException("object " + object + " is of type " + object.getClass().getName() + "; expected type: " + ProvinciaController.class.getName());
            }
        }
    }

    @FacesConverter(forClass = Modelo.class)
    public static class ModeloControllerConverter implements Converter {

        @Override
        public Object getAsObject(FacesContext facesContext, UIComponent component, String value) {
            if (value == null || value.length() == 0) {
                return null;
            }
            System.out.println(component.getClientId());
            System.out.println(component.getId());
            ProductoController controller = (ProductoController) facesContext.getApplication().getELResolver().
                    getValue(facesContext.getELContext(), null, "productoController");
            return controller.ejbModelo.find(getKey(value));

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

        @Override
        public String getAsString(FacesContext facesContext, UIComponent component, Object object) {
            if (object == null) {
                return null;
            }
            if (object instanceof Modelo) {
                Modelo o = (Modelo) object;
                return getStringKey(o.getId());
            } else {
                throw new IllegalArgumentException("object " + object + " is of type " + object.getClass().getName() + "; expected type: " + ProvinciaController.class.getName());
            }
        }
    }
}
