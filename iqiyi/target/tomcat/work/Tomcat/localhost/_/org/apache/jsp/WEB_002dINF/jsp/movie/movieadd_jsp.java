/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2021-09-16 00:39:02 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.jsp.movie;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class movieadd_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

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
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!doctype html>\r\n");
      out.write("<html>\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"utf-8\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("    <title>爱电影后台项目</title>\r\n");
      out.write("    <meta name=\"description\" content=\"这是一个 index 页面\">\r\n");
      out.write("    <meta name=\"keywords\" content=\"index\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("    <meta name=\"renderer\" content=\"webkit\">\r\n");
      out.write("    <meta http-equiv=\"Cache-Control\" content=\"no-siteapp\"/>\r\n");
      out.write("    <link rel=\"icon\" type=\"image/png\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/i/favicon.png\">\r\n");
      out.write("    <link rel=\"apple-touch-icon-precomposed\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/i/app-icon72x72@2x.png\">\r\n");
      out.write("    <meta name=\"apple-mobile-web-app-title\" content=\"Amaze UI\"/>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/css/amazeui.min.css\"/>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/css/admin.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/css/app.css\">\r\n");
      out.write("    <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/js/echarts.min.js\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body data-type=\"index\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write('\r');
      out.write('\n');
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/WEB-INF/jsp/nav/header.jsp", out, false);
      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("\r\n");
      out.write('\r');
      out.write('\n');
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/WEB-INF/jsp/nav/left.jsp", out, false);
      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"tpl-page-container tpl-page-header-fixed\">\r\n");
      out.write("\r\n");
      out.write("    <div class=\"tpl-content-wrapper\">\r\n");
      out.write("        <div class=\"tpl-content-page-title\">\r\n");
      out.write("            新增电影录入\r\n");
      out.write("        </div>\r\n");
      out.write("        <ol class=\"am-breadcrumb\">\r\n");
      out.write("            <li><a href=\"\" class=\"am-icon-home\">电影信息</a></li>\r\n");
      out.write("\r\n");
      out.write("            <li class=\"am-active\">电影录入</li>\r\n");
      out.write("        </ol>\r\n");
      out.write("        <div class=\"tpl-portlet-components\">\r\n");
      out.write("\r\n");
      out.write("            <div class=\"tpl-block\">\r\n");
      out.write("\r\n");
      out.write("                <div class=\"am-g\">\r\n");
      out.write("                    <div class=\"tpl-form-body tpl-form-line\">\r\n");
      out.write("                        <form class=\"am-form tpl-form-line-form\" action=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/movie/add-movie\" method=\"post\" enctype=\"multipart/form-data\">\r\n");
      out.write("                            <!-- 这是一个input开始 -->\r\n");
      out.write("                            <div class=\"am-form-group\">\r\n");
      out.write("                                <label for=\"user-name\" class=\"am-u-sm-3 am-form-label\">电影名称 <span class=\"tpl-form-line-small-title\">Name</span></label>\r\n");
      out.write("                                <div class=\"am-u-sm-9\">\r\n");
      out.write("                                    <input name=\"moviename\" type=\"text\" class=\"tpl-form-input\" id=\"user-name\" placeholder=\"请输入电影名称\">\r\n");
      out.write("                                    <small></small>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <!-- 这是一个input结束 -->\r\n");
      out.write("\r\n");
      out.write("                            <div class=\"am-form-group\">\r\n");
      out.write("                                <label class=\"am-u-sm-3 am-form-label\">时长 <span class=\"tpl-form-line-small-title\">Time</span></label>\r\n");
      out.write("                                <div class=\"am-u-sm-9\">\r\n");
      out.write("                                    <input name=\"time\" type=\"text\" class=\"am-form-field tpl-form-no-bg\" placeholder=\"电影时长\" data-am-datepicker=\"\"/>\r\n");
      out.write("                                    <small></small>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("\r\n");
      out.write("                            <!-- 这是一个input开始 -->\r\n");
      out.write("                            <div class=\"am-form-group\">\r\n");
      out.write("                                <label for=\"user-name\" class=\"am-u-sm-3 am-form-label\">电影播放路径 <span class=\"tpl-form-line-small-title\">Url</span></label>\r\n");
      out.write("                                <div class=\"am-u-sm-9\">\r\n");
      out.write("                                    <input name=\"url\" type=\"text\" class=\"tpl-form-input\" id=\"url\" placeholder=\"请输入电影播放路径\">\r\n");
      out.write("                                    <small></small>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <!-- 这是一个input开始 -->\r\n");
      out.write("                            <div class=\"am-form-group\">\r\n");
      out.write("                                <label for=\"user-name\" class=\"am-u-sm-3 am-form-label\">图片路径 <span class=\"tpl-form-line-small-title\">ImagePath</span></label>\r\n");
      out.write("                                <div class=\"am-u-sm-9\">\r\n");
      out.write("                                    <input name=\"imagepath\" type=\"text\" class=\"tpl-form-input\" id=\"imagepath\" placeholder=\"请输入电影图片路径\">\r\n");
      out.write("                                    <small></small>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("\r\n");
      out.write("                            <div class=\"am-form-group\">\r\n");
      out.write("                                <label class=\"am-u-sm-3 am-form-label\">导演 <span class=\"tpl-form-line-small-title\">Director</span></label>\r\n");
      out.write("                                <div class=\"am-u-sm-9\">\r\n");
      out.write("                                    <input name=\"director\" type=\"text\" placeholder=\"输入导演名字\">\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("\r\n");
      out.write("                            <!--这是一个file控件开始-->\r\n");
      out.write("                            <div class=\"am-form-group\">\r\n");
      out.write("                                <label for=\"user-weibo\" class=\"am-u-sm-3 am-form-label\">电影封面图 <span class=\"tpl-form-line-small-title\">Images</span></label>\r\n");
      out.write("                                <div class=\"am-u-sm-9\">\r\n");
      out.write("                                    <div class=\"am-form-group\">\r\n");
      out.write("                                        <input name=\"files\" id=\"doc-form-file\" type=\"file\" class=\"am-btn am-btn-sm\">\r\n");
      out.write("                                    </div>\r\n");
      out.write("\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <!--这是一个file控件结束-->\r\n");
      out.write("\r\n");
      out.write("                            <div class=\"am-form-group\">\r\n");
      out.write("                                <label class=\"am-u-sm-3 am-form-label\">评分 <span class=\"tpl-form-line-small-title\">Score</span></label>\r\n");
      out.write("                                <div class=\"am-u-sm-9\">\r\n");
      out.write("                                    <input name=\"score\" type=\"text\" placeholder=\"输入评分\">\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("\r\n");
      out.write("                            <div class=\"am-form-group\">\r\n");
      out.write("                                <label class=\"am-u-sm-3 am-form-label\">关键字 <span class=\"tpl-form-line-small-title\">Keyword</span></label>\r\n");
      out.write("                                <div class=\"am-u-sm-9\">\r\n");
      out.write("                                    <textarea name=\"keyword\" class=\"\" rows=\"10\" id=\"keyword\" placeholder=\"请输入关键字\"></textarea>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("\r\n");
      out.write("                            <div class=\"am-form-group\">\r\n");
      out.write("                                <label for=\"user-weibo\" class=\"am-u-sm-3 am-form-label\">添加分类 <span class=\"tpl-form-line-small-title\">Categroy</span></label>\r\n");
      out.write("                                <div class=\"am-u-sm-9\">\r\n");
      out.write("                                    <input name=\"categroy\" type=\"text\" id=\"user-weibo\" placeholder=\"请添加分类用点号隔开\">\r\n");
      out.write("                                    <div>\r\n");
      out.write("\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("\r\n");
      out.write("                            <div class=\"am-form-group\">\r\n");
      out.write("                                <label for=\"user-intro\" class=\"am-u-sm-3 am-form-label\">电影描述</label>\r\n");
      out.write("                                <div class=\"am-u-sm-9\">\r\n");
      out.write("                                    <textarea name=\"des\" class=\"\" rows=\"10\" id=\"user-intro\" placeholder=\"请输入描述内容\"></textarea>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("\r\n");
      out.write("                            <div class=\"am-form-group\">\r\n");
      out.write("                                <div class=\"am-u-sm-9 am-u-sm-push-3\">\r\n");
      out.write("                                    <button type=\"submit\" class=\"am-btn am-btn-primary tpl-btn-bg-color-success \">提交</button>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </form>\r\n");
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/js/jquery.min.js\"></script>\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/js/amazeui.min.js\"></script>\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/js/iscroll.js\"></script>\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/assets/js/app.js\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>\r\n");
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
}
