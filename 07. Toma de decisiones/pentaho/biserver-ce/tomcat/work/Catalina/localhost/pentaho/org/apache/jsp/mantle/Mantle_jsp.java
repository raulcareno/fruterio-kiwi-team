package org.apache.jsp.mantle;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Locale;
import org.apache.commons.lang.StringUtils;
import org.pentaho.platform.util.messages.LocaleHelper;
import java.net.URLClassLoader;
import java.net.URL;
import java.util.ResourceBundle;
import java.io.File;

public final class Mantle_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

  Locale effectiveLocale = request.getLocale(); 
  if (!StringUtils.isEmpty(request.getParameter("locale"))) {
    effectiveLocale = new Locale(request.getParameter("locale"));
    request.getSession().setAttribute("locale_override", request.getParameter("locale"));
    LocaleHelper.setLocaleOverride(effectiveLocale);
  }

  URLClassLoader loader = new URLClassLoader(new URL[] {application.getResource("/mantle/messages/")});
  ResourceBundle properties = ResourceBundle.getBundle("messages", request.getLocale(), loader); 

      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("\t<head>\r\n");
      out.write("\t\t<title>Pentaho User -Console</title>\r\n");
      out.write("\t\t<meta name=\"gwt:property\" content=\"locale=");
      out.print(effectiveLocale);
      out.write("\">\r\n");
      out.write("\t\t<link rel=\"shortcut icon\" href=\"/pentaho-style/favicon.ico\" />\r\n");
      out.write("\t\t<link rel='stylesheet' href='mantle/MantleStyle.css'/>\r\n");
      out.write("    <script type=\"text/javascript\" src=\"mantle/pngfix.js\"></script>\r\n");
      out.write("    <script type=\"text/javascript\">\r\n");
      out.write("      if(window.opener && window.opener.reportWindowOpened != undefined){\r\n");
      out.write("        window.opener.reportWindowOpened();\r\n");
      out.write("      }\r\n");
      out.write("      PngFix.baseURL = window.location.href.substring(0,window.location.href.lastIndexOf(\"/\"))+\"/mantle/\";\r\n");
      out.write("      PngFix.spacerURL = PngFix.baseURL+\"images/spacer.gif\";\r\n");
      out.write("      \r\n");
      out.write("    </script>\r\n");
      out.write("\t</head>\r\n");
      out.write("\r\n");
      out.write("\t<body oncontextmenu=\"return false;\">\r\n");
      out.write("\r\n");
      out.write("\t<div id=\"loading\">\r\n");
      out.write("    \t\t<div class=\"loading-indicator\">\r\n");
      out.write("    \t\t\t<img src=\"mantle/large-loading.gif\" width=\"32\" height=\"32\"/>");
      out.print( properties.getString("loadingConsole") );
      out.write("<a href=\"http://www.pentaho.com\"></a><br/>\r\n");
      out.write("    \t\t\t<span id=\"loading-msg\">");
      out.print( properties.getString("pleaseWait") );
      out.write("</span>\r\n");
      out.write("    \t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\t\r\n");
      out.write("\t<!-- OPTIONAL: include this if you want history support -->\r\n");
      out.write("\t<iframe id=\"__gwt_historyFrame\" style=\"width:0;height:0;border:0\"></iframe>\r\n");
      out.write("\r\n");
      out.write("\t</body>\r\n");
      out.write("\r\n");
      out.write("\t<script language='javascript' src='mantle/mantle.nocache.js'></script>\r\n");
      out.write("\t\t<script language='javascript' >\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t</script>\r\n");
      out.write("\r\n");
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
