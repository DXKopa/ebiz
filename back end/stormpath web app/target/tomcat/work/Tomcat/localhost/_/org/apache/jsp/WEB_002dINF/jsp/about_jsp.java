/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2016-02-11 03:48:31 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class about_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/WEB-INF/tags/page.tag", Long.valueOf(1455062793652L));
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
    java.lang.String _jspx_temp0 = "About Converge";
    // /WEB-INF/jsp/about.jsp(6,0) null
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
      out.write("\t\t\t<!--Header:-->\r\n");
      out.write("\r\n");
      out.write("\t\t\t<h1>Converge is a nationally-renowned luxury banquet hall service, catering to thousands of people across 54 different locations.</h1>\r\n");
      out.write("\r\n");
      out.write("\t\t\t<!--Body:-->\r\n");
      out.write("\r\n");
      out.write("\t\t\t<br><p>Our elegant venues support an enormous variety of activities for all ages and demographics. Extravagant parties, formal business meetings, or dazzling weddings — we are committed to providing our valued customers with the highest grade of services.</p>\r\n");
      out.write("\r\n");
      out.write("\t\t\t<p>Converge Incorperation was founded in 2015 by Darren Kopa, Daniel Lin and Forest Yang with the sole purpose of building a banquet hall service with the integration of an e-commerce website. Today, the company's fundamental goals and ideals have remained unchanged, continuing its mission to provide its patrons with services of the highest quality.</p>\r\n");
      out.write("\r\n");
      out.write("\t\t\t<p>We offer unprecedented services to our customers, including an irresistable assortment of hors d'oeuvre and drinks, a 50-foot ballroom and world-class attendents ready to address your needs and wants. Our most distinuishing feature to date, however, is our widely acclaimed website, which gives customers a chance to reserve their event in advance without the hassle of picking up the phone or filling out convoluted paperwork. Converge wanted to give its customers a quick and easy process for creating reservations, so its founders built a powerful, no-frills website to complete just that.</p>\r\n");
      out.write("\r\n");
      out.write("\t\t\t<br><h3>Our Mission:</h3>\r\n");
      out.write("\r\n");
      out.write("\t\t\t<p>Our trail starts with our mission, which we uphold with the greatest care and passion. It declares our objective as a company and serves as the standard for our actions and choices.</p>\r\n");
      out.write("\t\t\t<ul>\r\n");
      out.write("\t\t\t\t<li>To bring people of all demographics together</li>\r\n");
      out.write("\t\t\t\t<li>To adhere to the utmost standards of hospitality</li>\r\n");
      out.write("\t\t\t\t<li>To create an environment which cultivates happiness and optimism</li>\r\n");
      out.write("\t\t\t</ul>\r\n");
      out.write("\r\n");
      out.write("\t\t\t<br><button type=\"button\" class=\"btn btn-primary\">Request a digital sales kit</button></br>\r\n");
      out.write("\r\n");
      out.write("\t\t\t<br><h3>Contact Us</h4>\r\n");
      out.write("\t\t\t<h4>Phone:</h4>\r\n");
      out.write("\t\t\t<p>(800) CON-VERGE</p>\r\n");
      out.write("\t\t\t<h4>Email:</h4>\r\n");
      out.write("\t\t\t<p>convergeincorporated@gmail.com</p>\r\n");
      out.write("\t\t\t<h4>Mail:</h4>\r\n");
      out.write("\t\t\t<p>Converge Incorporated</p>\r\n");
      out.write("\t\t\t<p>P.O. Box 29402-2BW</p>\r\n");
      out.write("\t\t\t<p>Ontario, CA 91764</p>\r\n");
      out.write("\r\n");
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
