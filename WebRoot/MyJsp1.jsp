<%@ page contentType = "text/html; charset=utf-8" import = "java.sql.*"%>
<!DOCTYPE html>
<html>
  <head>
    <title>MyHtml1.html</title>
	
    <meta name="keywords" content="keyword1,keyword2,keyword3">
    <meta name="description" content="this is my page">
    <meta name="content-type" content="text/html; charset=UTF-8">
    
    <!--<link rel="stylesheet" type="text/css" href="./styles.css">-->

  <script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"10253",secure:"10258"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>
  
  <body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc8-0" data-genuitec-path="/Ngersfirst/WebRoot/MyJsp1.jsp">
   <%  
   
   		 request.setCharacterEncoding("utf-8");  
  		 String id1=(String)session.getAttribute("id");
   %>
   <%   
 	 	 PreparedStatement pstmt = null;
		ResultSet rs = null;
		String url = "jdbc:sqlserver://localhost:1433;DatabaseName=web;";
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

     	Connection conn = DriverManager.getConnection(url, "sa", "20163488");//登录JDBC链接数据库

   		Statement stmt = conn.createStatement();//从数据库里面取东西对比    
    	String sql ="SELECT * FROM users WHERE id='"+id1+"'";
    	pstmt = conn.prepareStatement(sql);
    	rs = pstmt.executeQuery();
    	String id=null;
    	while(rs.next()) ////判断是否有记录
    	{
    		id=rs.getString("id");
    		System.out.println(rs.getString("id")+ "\t" + rs.getString("username") + "\t"+ rs.getString("email") + "\t");
    	}
    %>  

   <%=id %>
  </body>
</html>
