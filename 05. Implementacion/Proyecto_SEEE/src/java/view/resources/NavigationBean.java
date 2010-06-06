/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package view.resources;

import java.awt.event.ActionEvent;
import java.io.Serializable;
import java.util.Map;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;

/**
 *
 * @author wasaaa
 */
@ManagedBean(name="navigationBean")
@SessionScoped

public class NavigationBean implements  Serializable{
    private String path = "/WEB-INF/content/ventas/registrarCliente.xhtml";

    public NavigationBean() {

    }

    public String getSelectedIncludePath() {
        FacesContext context = FacesContext.getCurrentInstance();
        Map map = context.getExternalContext().getRequestParameterMap();
        String requestedPath = (String) map.get("includePath");
        if ((requestedPath != null) && (requestedPath.length() > 0))  {
            path = requestedPath;
        }

        return path;
    }


    public void setSelectedIncludePath(String selectedIncludePath) {
        path = selectedIncludePath;
    }


    public void navigationPathChange(ActionEvent event){
        FacesContext context = FacesContext.getCurrentInstance();
        Map map = context.getExternalContext().getRequestParameterMap();
        path = (String) map.get("includePath");
    }


}