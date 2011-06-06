package org.apache.jsp.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import java.util.Date;
import java.io.ByteArrayOutputStream;
import org.pentaho.platform.util.web.SimpleUrlFactory;
import org.pentaho.platform.web.jsp.messages.Messages;
import org.pentaho.platform.engine.core.system.PentahoSystem;
import org.pentaho.platform.uifoundation.chart.DashboardWidgetComponent;
import org.pentaho.platform.web.http.request.HttpRequestParameterProvider;
import org.pentaho.platform.web.http.session.HttpSessionParameterProvider;
import org.pentaho.platform.api.engine.IPentahoSession;
import org.pentaho.platform.web.http.WebTemplateHelper;
import org.pentaho.platform.util.VersionHelper;
import org.pentaho.platform.util.messages.LocaleHelper;
import org.pentaho.platform.engine.core.solution.SimpleParameterProvider;
import org.pentaho.platform.uifoundation.chart.ChartHelper;
import org.pentaho.platform.web.http.PentahoHttpSessionHelper;

public final class SWDashboard_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static java.util.List _jspx_dependants;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    JspFactory _jspxFactory = null;
    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      _jspxFactory = JspFactory.getDefaultFactory();
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;



/*
 * Copyright 2006 Pentaho Corporation.  All rights reserved. 
 * This software was developed by Pentaho Corporation and is provided under the terms 
 * of the Mozilla Public License, Version 1.1, or any later version. You may not use 
 * this file except in compliance with the license. If you need a copy of the license, 
 * please go to http://www.mozilla.org/MPL/MPL-1.1.txt. The Original Code is the Pentaho 
 * BI Platform.  The Initial Developer is Pentaho Corporation.
 *
 * Software distributed under the Mozilla Public License is distributed on an "AS IS" 
 * basis, WITHOUT WARRANTY OF ANY KIND, either express or  implied. Please refer to 
 * the license for the specific language governing your rights and limitations.
 *
 * Created Feb 16, 2006 
 * @author James Dixon  modified by Kurtis Cruzada
 */

/*
 * This JSP is an example of how to use Pentaho components to build a dashboard.
 * The script in this file controls the layout and content generation of the dashboard.
 * See the document 'Dashboard Builder Guide' for more details
 */

	// set the character encoding e.g. UFT-8
	response.setCharacterEncoding(LocaleHelper.getSystemEncoding()); 

	// create a new Pentaho session 
	IPentahoSession userSession = PentahoHttpSessionHelper.getPentahoSession( request );
	
      out.write("\t\r\n");
      out.write("\t");

	// See if we have a 'territory' parameter
	String territory = request.getParameter("territory");
	// See if we have a 'productline' parameter
	String productline = request.getParameter("productline");

	// Create the title for the top of the page
	String title = "Revenue Analysis";
	if( productline != null ) {
		title = "Sales for " + territory + ", " + productline;
	} 
	else if ( territory != null ) {
		title = "Sales for " + territory;
	}
	
      out.write("\r\n");
      out.write("\t<html>\n");
      out.write("\t<head>\r\n");
      out.write("\t\t<title>Steel Wheels - Revenue Analysis</title>\r\n");
      out.write("\t</head>\r\n");
      out.write("\t<body>\r\n");
      out.write("  \t<table  background=\"/sw-style/active/logo_backup.png\">\n");
      out.write("  \t\t<tr>\r\n");
      out.write("  \t\t\t<td width=\"750\" height=\"40\" align=\"right\" valign=\"middle\" style=\"font-family:Arial;font-weight:bold\" border=\"0\"/>");
      out.print( title );
      out.write("</td>\n");
      out.write("  \t\t</tr>\t\t\n");
      out.write("  \t</table>\t\r\n");
      out.write("  \t<table class=\"homeDashboard\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" >\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td valign=\"top\" align=\"center\">\r\n");
      out.write("\t");

		// Make a pie chart showing the territories
		// create the parameres for the pie chart
	        SimpleParameterProvider parameters = new SimpleParameterProvider();
		// define the click url template
	        parameters.setParameter( "drill-url", "SWDashboard?territory={TERRITORY}" );
		// define the slices of the pie chart
	        parameters.setParameter( "inner-param", "TERRITORY"); //$NON-NLS-1$ //$NON-NLS-2$
		// set the width and the height
	        parameters.setParameter( "image-width", "350"); //$NON-NLS-1$ //$NON-NLS-2$
        	parameters.setParameter( "image-height", "200"); //$NON-NLS-1$ //$NON-NLS-2$
		StringBuffer content = new StringBuffer(); 
	        ArrayList messages = new ArrayList();
		// call the chart helper to generate the pie chart image and to get the HTML content
		// use the chart definition in 'steel-wheels/dashboard/territory.widget.xml'
        	ChartHelper.doPieChart( "steel-wheels", "dashboards", "territory.widget.xml", parameters, content, userSession, messages, null ); 
	
      out.write("\r\n");
      out.write("\t\t");
      out.print( content.toString() );
      out.write("\r\n");
      out.write("\t\t</td>\t\t\t\r\n");
      out.write("\t\t<td valign=\"top\" align=\"center\">\r\n");
      out.write("\t");

			if( territory == null ) {
			// if the user has clicked on a slice of the pie chart we should have a territory to work with
	
      out.write("\t\t\t\r\n");
      out.write("\t");

			// Make a bar chart showing the department 
			// create the parameres for the bar chart
			parameters = new SimpleParameterProvider();
			// define the click url template
			parameters.setParameter( "drill-url", "SWDashboard?territory="+territory+"&amp;productline={SERIES}" );
			parameters.setParameter( "TERRITORY", territory );
			parameters.setParameter( "outer-params", "TERRITORY" );
			// define the category axis of the bar chart
			parameters.setParameter( "inner-param", "TERRITORY"); //$NON-NLS-1$ //$NON-NLS-2$
			parameters.setParameter( "inner-param", "PRODUCTLINE"); //$NON-NLS-1$ //$NON-NLS-2$
			// set the width and the height
			parameters.setParameter( "image-width", "400"); //$NON-NLS-1$ //$NON-NLS-2$
			parameters.setParameter( "image-height", "200"); //$NON-NLS-1$ //$NON-NLS-2$
			content = new StringBuffer(); 
			messages = new ArrayList();
			// call the chart helper to generate the pie chart image and to get the HTML content
			// use the chart definition in 'steel-wheels/dashboard/productline.widget.xml'
			ChartHelper.doChart( "steel-wheels", "dashboards", "productline_all.widget.xml", parameters, content, userSession, messages, null ); 
		
      out.write("\t\t\r\n");
      out.write("\t\t");
      out.print( content.toString() );
      out.write("\r\n");
      out.write("\t\t");

			}
		
      out.write('\r');
      out.write('\n');
      out.write('	');

		if( territory != null ) {
			// if the user has clicked on a slice of the pie chart we should have a territory to work with
	
      out.write("\t\t\t\r\n");
      out.write("\t");

			// Make a bar chart showing the department 
			// create the parameres for the bar chart
	        	parameters = new SimpleParameterProvider();
			// define the click url template
	        	parameters.setParameter( "drill-url", "SWDashboard?territory="+territory+"&amp;productline={SERIES}" );
			parameters.setParameter( "TERRITORY", territory );
			parameters.setParameter( "outer-params", "TERRITORY" );
			// define the category axis of the bar chart
			    parameters.setParameter( "inner-param", "TERRITORY"); //$NON-NLS-1$ //$NON-NLS-2$
        		parameters.setParameter( "inner-param", "PRODUCTLINE"); //$NON-NLS-1$ //$NON-NLS-2$
			// set the width and the height
        		parameters.setParameter( "image-width", "400"); //$NON-NLS-1$ //$NON-NLS-2$
        		parameters.setParameter( "image-height", "200"); //$NON-NLS-1$ //$NON-NLS-2$
			content = new StringBuffer(); 
        		messages = new ArrayList();
			// call the chart helper to generate the pie chart image and to get the HTML content
			// use the chart definition in 'steel-wheels/dashboard/productline.widget.xml'
	        	ChartHelper.doChart( "steel-wheels", "dashboards", "productline.widget.xml", parameters, content, userSession, messages, null ); 
	
      out.write("\r\n");
      out.write("\t\t\t");
      out.print( content.toString() );
      out.write('\r');
      out.write('\n');
      out.write('	');

		}
	
      out.write("\r\n");
      out.write("\t\t</td>\r\n");
      out.write("\t</tr> \t\r\n");
      out.write("    </table>\n");
      out.write("  \t<table class=\"homeDashboard\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" >\n");
      out.write("  \t<tr>\r\n");
      out.write("  \t\t<td valign=\"top\" align=\"center\"> \t  \t\t\t\t\r\n");
      out.write("  \t");

  				if( productline != null ) {
  				
  				// if the user has clicked on a bar of the bar chart we should have a territory and productline to work with
  				
  				// create a dial and supply a value we create from the current time
  				// create the parameters for the line chart
  				parameters = new SimpleParameterProvider();
  				parameters.setParameter( "TERRITORY", territory );
  				parameters.setParameter( "outer-params", "TERRITORY" );
  				parameters.setParameter( "PRODUCTLINE", productline );
  				parameters.setParameter( "outer-params", "PRODUCTLINE" );
  				// define the category axis of the bar chart
  				parameters.setParameter( "inner-param", "PRODUCTLINE"); //$NON-NLS-1$ //$NON-NLS-2$
  				// set the width and the height
  				parameters.setParameter( "image-width", "750"); //$NON-NLS-1$ //$NON-NLS-2$
  				parameters.setParameter( "image-height", "200"); //$NON-NLS-1$ //$NON-NLS-2$
  				content = new StringBuffer(); 
  				messages = new ArrayList();
  				// call the chart helper to generate the pie chart image and to get the HTML content
  				// use the chart definition in 'steel-wheels/dashboard/regions.widget.xml'
  				ChartHelper.doChart( "steel-wheels", "dashboards", "SalesOvertime.widget.xml", parameters, content, userSession, messages, null ); 
  	
      out.write("\r\n");
      out.write("  \t");
      out.print( content.toString() );
      out.write("\r\n");
      out.write("  \t");

  		}
  	
      out.write("\r\n");
      out.write(" \t");

  				if( productline == null ) { 		
		  		// if the user has clicked on a bar of the bar chart we should have a territory and productline to work with 		
  				// create a dial and supply a value we create from the current time
  				// create the parameters for the line chart
  				parameters = new SimpleParameterProvider();
  				parameters.setParameter( "TERRITORY", territory );
  				parameters.setParameter( "outer-params", "TERRITORY" );			
  				// define the category axis of the bar chart
  				parameters.setParameter( "inner-param", "PRODUCTLINE"); //$NON-NLS-1$ //$NON-NLS-2$
  				// set the width and the height
  				parameters.setParameter( "image-width", "750"); //$NON-NLS-1$ //$NON-NLS-2$
  				parameters.setParameter( "image-height", "200"); //$NON-NLS-1$ //$NON-NLS-2$
  				content = new StringBuffer(); 
  				messages = new ArrayList();
  				// call the chart helper to generate the pie chart image and to get the HTML content
  				// use the chart definition in 'steel-wheels/dashboard/regions.widget.xml'
  				ChartHelper.doChart( "steel-wheels", "dashboards", "SalesOvertime_All.widget.xml", parameters, content, userSession, messages, null ); 
  	
      out.write("  \t\t\r\n");
      out.write("  \t\t");
      out.print( content.toString() );
      out.write("\r\n");
      out.write("  \t");

  		}
  	
      out.write("\t\r\n");
      out.write("  \t\t</td>\r\n");
      out.write("  \t</tr>\r\n");
      out.write("  </table>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      if (_jspxFactory != null) _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
