<%@ page contentType = "text/html; charset=utf-8" import = "java.sql.*"  %>

<html>

  <head>

  <script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"10253",secure:"10258"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>

<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-6" data-genuitec-path="/Ngers/WebRoot/checklogin.jsp">

<div style=text-align:center data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-6" data-genuitec-path="/Ngers/WebRoot/checklogin.jsp">

    <%
    String id = request.getParameter("id");

    session.setAttribute("id",id);

    String userpassword = request.getParameter("userpassword");
    if(id.equals("admin")&&userpassword.equals("admin"))
    {
    	 out.println("<script language = 'javaScript'> alert('登陆成功！欢迎管理员');</script>");
        response.setHeader("refresh","1;url = manage.jsp");
    }
    else{
	String url = "jdbc:sqlserver://localhost:1433;DatabaseName=web;";
	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

     Connection connect = DriverManager.getConnection(url, "sa", "20163488");//登录JDBC链接数据库

    Statement stmt = connect.createStatement();//从数据库里面取东西对比

    String sql = "select  *  from users where id='"+id+"'and password='"+userpassword+"'";
    ResultSet i = stmt.executeQuery(sql);
    if(i.next())

    {

        out.println("<script language = 'javaScript'> alert('登陆成功！');</script>");
        response.setHeader("refresh","1;url = per_page.jsp");

    }
    else
    {
       out.println("<script language = 'javaScript'> alert('输入错误，请重新输入用户名！');</script>");

        response.setHeader("refresh","1;url = login.html");

    }

    stmt.close();

    connect.close();

 
}
%>

</div>

  </body>

<html>
