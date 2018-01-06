<%@ page contentType = "text/html; charset=utf-8" import = "java.sql.*"  %>

<html>

  <head>

  <script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"10253",secure:"10258"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script><script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"10253",secure:"10258"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>

<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc8-1" data-genuitec-path="/Ngersfirst/WebRoot/MyJspCheak.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-1" data-genuitec-path="/Ngers/WebRoot/MyJspcheak.jsp">

<div style=text-align:center data-genuitec-lp-enabled="false" data-genuitec-file-id="wc8-1" data-genuitec-path="/Ngersfirst/WebRoot/MyJspCheak.jsp" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-1" data-genuitec-path="/Ngers/WebRoot/MyJspcheak.jsp">

    <%
    if(session.getAttribute("id")!=null)
    {
        response.setHeader("refresh","1;url = per_page.jsp");
    }
    else
    {
       out.println("<script language = 'javaScript'> alert('您未登录，请登录');</script>");
        response.setHeader("refresh","1;url = login.html");
    }
%>

</div>

  </body>

<html>
