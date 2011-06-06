package org.apache.jsp.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import org.pentaho.platform.engine.core.system.PentahoSystem;
import org.pentaho.platform.api.engine.IPentahoSession;
import org.pentaho.platform.web.jsp.messages.Messages;
import org.pentaho.platform.web.http.WebTemplateHelper;
import org.pentaho.platform.api.engine.IUITemplater;
import org.pentaho.platform.util.messages.LocaleHelper;
import org.pentaho.platform.util.VersionHelper;
import org.pentaho.platform.api.ui.INavigationComponent;
import org.pentaho.platform.uifoundation.component.HtmlComponent;
import org.pentaho.platform.util.web.SimpleUrlFactory;
import org.pentaho.platform.engine.core.solution.SimpleParameterProvider;
import org.pentaho.platform.uifoundation.chart.ChartHelper;
import org.pentaho.platform.web.http.PentahoHttpSessionHelper;

public final class OldHome_jsp extends org.apache.jasper.runtime.HttpJspBase
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
 * @created Jul 23, 2005 
 * @author James Dixon
 * 
 */
 
	response.setCharacterEncoding(LocaleHelper.getSystemEncoding());
 	String baseUrl = PentahoSystem.getApplicationContext().getBaseUrl();
 
	String path = request.getContextPath();

	IPentahoSession userSession = PentahoHttpSessionHelper.getPentahoSession( request );


      out.write("\r\n");
      out.write("\t\r\n");

	// See if we have a 'territory' parameter
	String territory = request.getParameter("territory");
	// See if we have a 'productline' parameter
	String productline = request.getParameter("productline");

	// Create the title for the top of the page
	String title = "Top Ten Customers";
	if( territory == null && productline != null) {
		title = "Top Ten for " + productline;
	} 
	else if ( territory != null && productline == null) {
		title = "Top Ten for " + territory;
	}
	else if ( territory == null && productline == null) {
		title = "Top Ten Customers";
	}
	else  {
		title = "Top Ten for " + territory + ", " + productline;
	}
	
	String pie1 = "";
	String pie2 = "";
	String chart = "";

	SimpleParameterProvider parameters = new SimpleParameterProvider();
	parameters.setParameter( "drill-url", "PreviousHome?territory={territory}" );
	parameters.setParameter( "inner-param", "territory"); //$NON-NLS-1$ //$NON-NLS-2$
	parameters.setParameter( "image-width", "350"); //$NON-NLS-1$ //$NON-NLS-2$
	parameters.setParameter( "image-height", "200"); //$NON-NLS-1$ //$NON-NLS-2$
	StringBuffer content = new StringBuffer(); 
	ArrayList messages = new ArrayList();
	ChartHelper.doPieChart( "steel-wheels", "homeDashboard", "territory.widget.xml", parameters, content, userSession, messages, null ); 

	pie1 = content.toString();
	 
	parameters = new SimpleParameterProvider();

	if( territory == null ) {
	parameters.setParameter( "drill-url", "PreviousHome?productline={productline}" );
	} else {
	parameters.setParameter( "drill-url", "PreviousHome?territory="+territory+"&amp;productline={productline}" );
	}
	
	parameters.setParameter( "territory", territory );
	parameters.setParameter( "productline", productline );
	parameters.setParameter( "inner-param", "territory"); //$NON-NLS-1$ //$NON-NLS-2$
	parameters.setParameter( "inner-param", "productline"); //$NON-NLS-1$ //$NON-NLS-2$
	parameters.setParameter( "image-width", "350"); //$NON-NLS-1$ //$NON-NLS-2$
	parameters.setParameter( "image-height", "200"); //$NON-NLS-1$ //$NON-NLS-2$
	content = new StringBuffer(); 
	messages = new ArrayList();
    ChartHelper.doPieChart( "steel-wheels", "homeDashboard", "productline.widget.xml", parameters, content, userSession, messages, null ); 
	pie2 = content.toString();
	
	parameters = new SimpleParameterProvider();
	parameters.setParameter( "image-width", "400"); //$NON-NLS-1$ //$NON-NLS-2$
	parameters.setParameter( "image-height", "400"); //$NON-NLS-1$ //$NON-NLS-2$
	parameters.setParameter( "territory", territory );
	parameters.setParameter( "productline", productline );  			
	parameters.setParameter( "inner-param", "territory"); //$NON-NLS-1$ //$NON-NLS-2$
	parameters.setParameter( "inner-param", "productline"); //$NON-NLS-1$ //$NON-NLS-2$

	content = new StringBuffer(); 
	messages = new ArrayList();
	ChartHelper.doChart( "steel-wheels", "homeDashboard", "customer.widget.xml", parameters, content, userSession, messages, null ); 
	chart = content.toString();

	
      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("\t<head>\r\n");
      out.write("\t\t<title>Steel Wheels - Top Ten</title>\r\n");
      out.write("\t</head>\r\n");
      out.write("\t<body>\r\n");
      out.write("  \t<table  background=\"/sw-style/active/logo_backup.png\">\n");
      out.write("  \t\t<tr>\r\n");
      out.write("  \t\t\t<td width=\"750\" height=\"40\" align=\"right\" valign=\"middle\" style=\"font-family:Arial;font-weight:bold\" border=\"0\"/>");
      out.print( title );
      out.write("</td>\n");
      out.write("  \t\t</tr>\t\t\n");
      out.write("  \t</table>\t\r\n");
      out.write("  \t\t<table class=\"homeDashboard\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" >\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td valign=\"top\" align=\"center\">");
      out.print( pie1 );
      out.write("</td>\r\n");
      out.write("\t\t\t\t<td rowspan=\"2\" valign=\"top\">\r\n");
      out.write("\t\t\t\t\t");
      out.print( chart );
      out.write("\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td valign=\"top\" align=\"center\">\r\n");
      out.write("\t\t\t\t\t");
      out.print( pie2 );
      out.write("\r\n");
      out.write("\t\t\t\t</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write(" \t\t</table>\r\n");
      out.write("</body>\r\n");
      out.write("</html>\t\r\n");
      out.write("\t\r\n");
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
