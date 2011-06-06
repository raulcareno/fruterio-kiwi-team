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
import org.pentaho.platform.uifoundation.chart.FlashChartHelper;
import org.pentaho.platform.engine.services.solution.SolutionHelper;
import org.pentaho.platform.web.http.PentahoHttpSessionHelper;

public final class SampleFlashDashboard_jsp extends org.apache.jasper.runtime.HttpJspBase
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
 * @author James Dixon
 */

	response.setCharacterEncoding(LocaleHelper.getSystemEncoding()); 
	String baseUrl = PentahoSystem.getApplicationContext().getBaseUrl();

	IPentahoSession userSession = PentahoHttpSessionHelper.getPentahoSession( request );
	HttpRequestParameterProvider requestParameters = new HttpRequestParameterProvider( request );
	HttpSessionParameterProvider sessionParameters = new HttpSessionParameterProvider( userSession );


      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("\t<head>\r\n");
      out.write("\t\t<title>Pentaho Territory Dashboard</title>\r\n");
      out.write("\t</head>\r\n");
      out.write("\t<body>\r\n");



// Take a look to see if we have a region parameter
String productline = request.getParameter("productline");
String title = "Sales for All Territories";
String territory = request.getParameter("territory");
String categoryName = request.getParameter("categoryName");
if( "territory".equals( categoryName ) ) {
	territory = request.getParameter("category");
}
if( "productline".equals( categoryName ) ) {
	productline = request.getParameter("category");
}
if( productline != null ) {
	title = "Sales for " + territory + ", " + productline;
} 
else if ( territory != null ) {
	title = "Sales for " + territory;
}



      out.write("\r\n");
      out.write("\r\n");
      out.write("  \t<table  background=\"/sw-style/active/banner.png\">\n");
      out.write("  \t\t<tr>\r\n");
      out.write("  \t\t\t<td width=\"800\" height=\"40\" align=\"center\" valign=\"middle\" style=\"font-family:Arial;font-weight:bold\" border=\"0\"/>");
      out.print( title );
      out.write("</td>\n");
      out.write("  \t\t</tr>\t\t\n");
      out.write("  \t</table>\t\r\n");
      out.write("  \t<table class=\"homeDashboard\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" >\r\n");
      out.write("<table>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td valign=\"top\" style=\"font-family:Arial;font-weight:normal\">Click on a Territory</br>\r\n");

        ArrayList messages = new ArrayList();
        SimpleParameterProvider parameters = new SimpleParameterProvider();
        parameters.setParameter( "drill-url", "SampleFlashDashboard?prochart=true&amp;categoryName=territory" );
        parameters.setParameter( "inner-param", "TERRITORY"); //$NON-NLS-1$ //$NON-NLS-2$
        parameters.setParameter( "image-width", "370"); //$NON-NLS-1$ //$NON-NLS-2$
        parameters.setParameter( "image-height", "275"); //$NON-NLS-1$ //$NON-NLS-2$
				StringBuffer content = new StringBuffer(); 
        FlashChartHelper.doFlashChart( "steel-wheels", "dashboards", "territory.flashwidget.xml", parameters, content, userSession, messages, null ); //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$

      out.write('\r');
      out.write('\n');
      out.print( content.toString() );
      out.write("\r\n");
      out.write("\t\t</td>\t\r\n");
      out.write("\t\t\t<td valign=\"top\" style=\"font-family:Arial;font-weight:normal\">\r\n");

	if( territory != null ) {

      out.write("\r\n");
      out.write("\t\tClick on a Product Line</br>\r\n");

        	messages = new ArrayList();
        	parameters = new SimpleParameterProvider();
        	parameters.setParameter( "image-width", "430"); //$NON-NLS-1$ //$NON-NLS-2$
        	parameters.setParameter( "image-height", "275"); //$NON-NLS-1$ //$NON-NLS-2$
		parameters.setParameter( "connection", "SampleData" );
		parameters.setParameter( "query", "SELECT PRODUCTS.PRODUCTLINE, SUM(ORDERDETAILS.QUANTITYORDERED*ORDERDETAILS.PRICEEACH) REVENUE FROM ORDERS INNER JOIN ORDERDETAILS ON ORDERS.ORDERNUMBER = ORDERDETAILS.ORDERNUMBER INNER JOIN PRODUCTS ON ORDERDETAILS.PRODUCTCODE =PRODUCTS.PRODUCTCODE  INNER JOIN CUSTOMERS ON ORDERS.CUSTOMERNUMBER =CUSTOMERS.CUSTOMERNUMBER  INNER JOIN EMPLOYEES ON CUSTOMERS.SALESREPEMPLOYEENUMBER = EMPLOYEES.EMPLOYEENUMBER INNER JOIN OFFICES ON EMPLOYEES.OFFICECODE=OFFICES.OFFICECODE WHERE TERRITORY='{TERRITORY}' GROUP BY PRODUCTS.PRODUCTLINE ORDER BY 2 DESC" );
		parameters.setParameter( "TERRITORY", territory );
		parameters.setParameter( "outer-params", "TERRITORY" );
        	parameters.setParameter( "drill-url", "SampleFlashDashboard?prochart=true&amp;territory="+territory+"&amp;categoryName=productline" );
		content = new StringBuffer(); 
        	FlashChartHelper.doFlashChart( "steel-wheels", "dashboards", "productline.flashwidget.xml", parameters, content, userSession, messages, null ); //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$

      out.write('\r');
      out.write('\n');
      out.print( content.toString() );
      out.write('\r');
      out.write('\n');

	}

      out.write("\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td colspan=\"2\" valign=\"top\" style=\"font-family:Arial;font-weight:bold\"><hr size=\"1\"/>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td valign=\"top\" align=\"center\" style=\"font-family:Arial;font-weight:bold\">\r\n");

	if( productline != null ) {

		Date now = new Date();
		int seconds = now.getSeconds();
		long dialValue = Math.round((seconds/60.0)*100.0);
		
        messages = new ArrayList();
        parameters = new SimpleParameterProvider();
        parameters.setParameter( "image-width", "250"); //$NON-NLS-1$ //$NON-NLS-2$
        parameters.setParameter( "image-height", "250"); //$NON-NLS-1$ //$NON-NLS-2$
		parameters.setParameter( "value", Long.toString( dialValue ) );
		content = new StringBuffer();
        FlashChartHelper.doFlashDial( "steel-wheels", "dashboards", "flashdial.widget.xml", parameters, content, userSession, messages, null ); //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$

      out.write('\r');
      out.write('\n');
      out.print( content.toString() );
      out.write('\r');
      out.write('\n');

	}

      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t</td>\r\n");
      out.write("\t\t<td align=\"center\" valign=\"middle\" style=\"font-family:Arial;font-weight:bold\">\r\n");
      out.write("\r\n");

	if( productline != null ) {

        	messages = new ArrayList();
        	parameters = new SimpleParameterProvider();
		parameters.setParameter( "TERRITORY", territory );
		parameters.setParameter( "PRODUCTLINE", productline );
		content = new StringBuffer(); 
		ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
        	SolutionHelper.doAction( "steel-wheels", "dashboards/jsp", "Sales_by_Employee.xaction", "SampleFlashDashboard", parameters, outputStream , userSession, messages, null ); //$NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
		out.write( outputStream.toString() );
	}

      out.write("\r\n");
      out.write("\t\t</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
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
