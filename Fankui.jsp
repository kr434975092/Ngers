<%@ page contentType = "text/html; charset=utf-8" import = "java.sql.*"%>
<!DOCTYPE html>
<html>
  <head>
    <title>作者反馈</title>
	
    <meta name="keywords" content="keyword1,keyword2,keyword3">
    <meta name="description" content="this is my page">
    <meta name="content-type" content="text/html; charset=UTF-8">
    
    <!--<link rel="stylesheet" type="text/css" href="./styles.css">-->

  <script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"10253",secure:"10258"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
  
  <body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-0" data-genuitec-path="/Ngers/WebRoot/Fankui.jsp">
   <%  
   
   		request.setCharacterEncoding("utf-8");  
  		
  		String name=request.getParameter("name");  
 		String detail=request.getParameter("detail"); 
 
   %>
   <%   
 	 	String userpassword = request.getParameter("userpassword");
		String url = "jdbc:sqlserver://localhost:1433;DatabaseName=web;";
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

     	Connection conn = DriverManager.getConnection(url, "sa", "20163488");//登录JDBC链接数据库

    	Statement stmt = conn.createStatement();//从数据库里面取东西对比    
    	PreparedStatement sql =conn.prepareStatement("insert into manage(name,detail)values(?,?)");  
    	sql.setString(1,name);  
    	sql.setString(2,detail);  
   
    	int rtn=sql.executeUpdate();  
    	sql.close();  
    	conn.close();  
    	out.println("<script language = 'javaScript'> alert('反馈成功！');</script>");
    	response.setHeader("refresh","1;url = yijianfankui.html");
    %>  
  </body>
</html>
