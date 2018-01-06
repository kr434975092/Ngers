<%@ page language="java" import="java.sql.*" contentType="text/html;charset=utf-8"%>  
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
  
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">  
<html>  
  <head>  
    <base href="<%=basePath%>">  
      
    <title>检验注册页面</title>  
    <meta http-equiv="pragma" content="no-cache">  
    <meta http-equiv="cache-control" content="no-cache">  
    <meta http-equiv="expires" content="0">      
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">  
    <meta http-equiv="description" content="This is my page">  
    <!--  
    <link rel="stylesheet" type="text/css" href="styles.css">  
    -->  
  
  <script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"10253",secure:"10258"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>  
    
  <body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc8-2" data-genuitec-path="/Ngersfirst/WebRoot/check2.jsp">  
    <br data-genuitec-lp-enabled="false" data-genuitec-file-id="wc8-2" data-genuitec-path="/Ngersfirst/WebRoot/check2.jsp">  
   <%  
   request.setCharacterEncoding("utf-8");  
   String id=request.getParameter("id");  
   String users=request.getParameter("username");  
   String email=request.getParameter("email");  
   String password=request.getParameter("password");  
   session.setAttribute("id",id);
   %>  
   <%   
    String userpassword = request.getParameter("userpassword");
	String url = "jdbc:sqlserver://localhost:1433;DatabaseName=web;";
	Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

     Connection conn = DriverManager.getConnection(url, "sa", "20163488");//登录JDBC链接数据库

    Statement stmt = conn.createStatement();//从数据库里面取东西对比    
    PreparedStatement sql =conn.prepareStatement("insert into users(username,id,password,email)values(?,?,?,?)");  
    sql.setString(1,users);  
    sql.setString(2,id);  
    sql.setString(3,password);  
    sql.setString(4,email);   
    int rtn=sql.executeUpdate();  
    sql.close();  
    conn.close();  
     response.setHeader("refresh","1;url = per_ziliao.jsp");
    %>  
      
  </body>  
</html>  