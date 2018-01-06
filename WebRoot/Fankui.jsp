<%@ page contentType = "text/html; charset=utf-8" import = "java.sql.*"%>
<!DOCTYPE html>
<html>
  <head>
    <title>作者反馈</title>
	
    <meta name="keywords" content="keyword1,keyword2,keyword3">
    <meta name="description" content="this is my page">
    <meta name="content-type" content="text/html; charset=UTF-8">
    
    <!--<link rel="stylesheet" type="text/css" href="./styles.css">-->

  </head>
  
  <body>
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
    	response.setHeader("refresh","1;url = fankui.html");
    %>  
  </body>
</html>
