/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2016-02-13 04:30:43 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class reserve_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/WEB-INF/tags/page.tag", Long.valueOf(1455334140545L));
  }

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, false, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      if (_jspx_meth_t_005fpage_005f0(_jspx_page_context))
        return;
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_t_005fpage_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  t:page
    org.apache.jsp.tag.webpage_tag _jspx_th_t_005fpage_005f0 = (new org.apache.jsp.tag.webpage_tag());
    _jsp_instancemanager.newInstance(_jspx_th_t_005fpage_005f0);
    _jspx_th_t_005fpage_005f0.setJspContext(_jspx_page_context);
    java.lang.String _jspx_temp0 = "Reserve";
    // /WEB-INF/jsp/reserve.jsp(6,0) null
    _jspx_th_t_005fpage_005f0.setTitle(_jspx_temp0);
    _jspx_th_t_005fpage_005f0.setJspBody(new Helper( 0, _jspx_page_context, _jspx_th_t_005fpage_005f0, null));
    _jspx_th_t_005fpage_005f0.doTag();
    _jsp_instancemanager.destroyInstance(_jspx_th_t_005fpage_005f0);
    return false;
  }

  private class Helper
      extends org.apache.jasper.runtime.JspFragmentHelper
  {
    private javax.servlet.jsp.tagext.JspTag _jspx_parent;
    private int[] _jspx_push_body_count;

    public Helper( int discriminator, javax.servlet.jsp.JspContext jspContext, javax.servlet.jsp.tagext.JspTag _jspx_parent, int[] _jspx_push_body_count ) {
      super( discriminator, jspContext, _jspx_parent );
      this._jspx_parent = _jspx_parent;
      this._jspx_push_body_count = _jspx_push_body_count;
    }
    public boolean invoke0( javax.servlet.jsp.JspWriter out ) 
      throws java.lang.Throwable
    {
      out.write("\r\n");
      out.write("        <h1>Reservations</h1><br>\r\n");
      out.write("\r\n");
      out.write("        <iframe src=\"https://calendar.google.com/calendar/embed?showTitle=0&amp;showPrint=0&amp;showTabs=0&amp;showCalendars=0&amp;height=600&amp;wkst=1&amp;bgcolor=%23FFFFFF&amp;src=convergeincorporated%40gmail.com&amp;color=%23711616&amp;ctz=America%2FLos_Angeles\" style=\"border-width:0\" width=\"1000\" height=\"600\" frameborder=\"0\" scrolling=\"no\"></iframe>\r\n");
      out.write("\r\n");
      out.write("        <form method=\"post\" class=\"form-horizontal\" role=\"form\" action=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/reserved\">\r\n");
      out.write("            <br><h3>Reservation Information</h3><br>\r\n");
      out.write("            <h4>Dates</h4>\r\n");
      out.write("            <p>If you'd only like to book one day, simply enter the same day for both 'Start' and 'End'.</p>\r\n");
      out.write("            <div class=\"form-group\">\r\n");
      out.write("                <label for=\"startDate\" class=\"col-md-1 control-label\">Start</label>\r\n");
      out.write("                <div class=\"col-md-2\">\r\n");
      out.write("                    <input type=\"text\" class=\"form-control\" id=\"startDate\" name=\"startDate\" placeholder=\"mm/dd/yyyy\" required>\r\n");
      out.write("                </div>\r\n");
      out.write("                <label for=\"endDate\" class=\"col-md-1 control-label\">End</label>\r\n");
      out.write("                <div class=\"col-md-2\">\r\n");
      out.write("                  <input type=\"text\" class=\"form-control\" id=\"endDate\" name=\"endDate\" placeholder=\"mm/dd/yyyy\" required>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            \r\n");
      out.write("            <br><h4>Service Package</h4>\r\n");
      out.write("            <div class=\"form-group\">\r\n");
      out.write("            \t<div class=\"col-md-4\">\r\n");
      out.write("            \t\t<label class=\"control-label\"><input type=\"radio\" id=\"servicePackage\" name=\"servicePackage\" value=\"wedding\" required> Wedding</label> \r\n");
      out.write("            \t</div>\r\n");
      out.write("            \t<div class=\"col-md-4\">\r\n");
      out.write("      \t\t\t\t\t<label class=\"control-label\"><input type=\"radio\" id=\"servicePackage\" name=\"servicePackage\" value=\"business meeting\"> Business Meeting</label>\r\n");
      out.write("      \t\t\t\t</div>\r\n");
      out.write("              <div class=\"col-md-4\">\r\n");
      out.write("                <label class=\"control-label\"><input type=\"radio\" id=\"servicePackage\" name=\"servicePackage\" value=\"celebrations\"> Celebrations</label>\r\n");
      out.write("              </div>\r\n");
      out.write("      \t\t\t</div><br>\r\n");
      out.write("\r\n");
      out.write("  \t\t\t    \r\n");
      out.write("          \t<h3>Billing Information</h3><br>\r\n");
      out.write("            <div class=\"form-group\">\r\n");
      out.write("            \t  <label class=\"control-label col-md-2\" for=\"phone\">Phone</label>\r\n");
      out.write("                <div class=\"col-md-2\">\r\n");
      out.write("              \t\t<input type=\"text\" class=\"form-control\" id=\"phone\" name=\"phone\" placeholder=\"(123) 456-7890\" required>\r\n");
      out.write("              \t</div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"form-group\">\r\n");
      out.write("              <label class=\"control-label col-md-2\" for=\"address\">Address</label>\r\n");
      out.write("                <div class=\"col-md-2\">\r\n");
      out.write("                  <input type=\"text\" class=\"form-control\" id=\"address\" name=\"address\" required>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("              <label class=\"control-label col-md-1\" for=\"city\">City</label>\r\n");
      out.write("              <div class=\"col-md-2\">\r\n");
      out.write("                <input type=\"text\" class=\"form-control\" id=\"city\" name=\"address\" required>\r\n");
      out.write("              </div>\r\n");
      out.write("\r\n");
      out.write("              <label class=\"control-label col-md-1\" for=\"state\">State</label>\r\n");
      out.write("              <div class=\"col-md-1\">\r\n");
      out.write("                <input type=\"text\" class=\"form-control\" id=\"state\" name=\"state\" required>\r\n");
      out.write("              </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"form-group\">\r\n");
      out.write("              <label class=\"control-label col-md-2\" for=\"cardNum\">Credit Card Number</label>\r\n");
      out.write("              <div class=\"col-md-3\">\r\n");
      out.write("                <input type=\"text\" class=\"form-control\" id=\"cardNum\" name=\"cardNum\" placeholder=\"•••• •••• •••• ••••\" required>\r\n");
      out.write("              </div>\r\n");
      out.write("\r\n");
      out.write("              <label class=\"control-label col-md-1\" for=\"cardType\">Card Type</label>\r\n");
      out.write("              <div class=\"col-md-1\">\r\n");
      out.write("                <input type=\"radio\" id=\"cardType\" name=\"cardType\" value=\"visa\" required> <img src=\"..\\..\\assets\\png\\visa.png\" alt=\"Visa\">\r\n");
      out.write("              </div>\r\n");
      out.write("              <div class=\"col-md-1\">\r\n");
      out.write("                <input type=\"radio\" id=\"cardType\" name=\"cardType\" value=\"amex\"> <img src=\"..\\..\\assets\\png\\amex.png\" alt=\"American Express\">\r\n");
      out.write("              </div>\r\n");
      out.write("              <div class=\"col-md-1\">\r\n");
      out.write("                <input type=\"radio\" id=\"cardType\" name=\"cardType\" value=\"mastercard\"> <img src=\"..\\..\\assets\\png\\mastercard.png\" alt=\"MasterCard\">\r\n");
      out.write("              </div>\r\n");
      out.write("              <div class=\"col-md-1\">\r\n");
      out.write("                <input type=\"radio\" id=\"cardType\" name=\"cardType\" value=\"discover\"> <img src=\"..\\..\\assets\\png\\discover.png\" alt=\"Discover\">\r\n");
      out.write("              </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"form-group\">\r\n");
      out.write("              <label class=\"control-label col-md-2\" for=\"securityCode\">Security Code</label>\r\n");
      out.write("              <div class=\"col-md-1\">\r\n");
      out.write("                <input type=\"text\" class=\"form-control\" id=\"securityCode\" name=\"securityCode\" required>\r\n");
      out.write("              </div>\r\n");
      out.write("\r\n");
      out.write("              <label class=\"control-label col-md-2\" for=\"expiry\">Expiry Date</label>\r\n");
      out.write("              <div class=\"col-md-1\">\r\n");
      out.write("                <input type=\"text\" class=\"form-control\" id=\"expiry\" name=\"expiry\"  placeholder=\"mm/yy\" required>\r\n");
      out.write("              </div>\r\n");
      out.write("  \t\t\t    </div><br>\r\n");
      out.write("\r\n");
      out.write("            <br><br><div class=\"form-group\">\r\n");
      out.write("                <div class=\"col-md-offset-2 col-md-1\">\r\n");
      out.write("                    <button type=\"submit\" class=\"btn btn-primary\">Reserve My Event</button>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("            <br><br><br>\r\n");
      out.write("        </form>\r\n");
      out.write("\t");
      return false;
    }
    public void invoke( java.io.Writer writer )
      throws javax.servlet.jsp.JspException
    {
      javax.servlet.jsp.JspWriter out = null;
      if( writer != null ) {
        out = this.jspContext.pushBody(writer);
      } else {
        out = this.jspContext.getOut();
      }
      try {
        Object _jspx_saved_JspContext = this.jspContext.getELContext().getContext(javax.servlet.jsp.JspContext.class);
        this.jspContext.getELContext().putContext(javax.servlet.jsp.JspContext.class,this.jspContext);
        switch( this.discriminator ) {
          case 0:
            invoke0( out );
            break;
        }
        jspContext.getELContext().putContext(javax.servlet.jsp.JspContext.class,_jspx_saved_JspContext);
      }
      catch( java.lang.Throwable e ) {
        if (e instanceof javax.servlet.jsp.SkipPageException)
            throw (javax.servlet.jsp.SkipPageException) e;
        throw new javax.servlet.jsp.JspException( e );
      }
      finally {
        if( writer != null ) {
          this.jspContext.popBody();
        }
      }
    }
  }
}
