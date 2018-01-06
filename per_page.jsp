<%@ page contentType = "text/html; charset=utf-8" import = "java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/temp.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>个人主页</title>
<script type="text/javascript">
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
</script>
<!-- InstanceEndEditable -->
<!-- InstanceBeginEditable name="head" -->
<style type="text/css">
.xiao {
	font-size: 12px;
	color: #666;
}
.zhong {
	font-size: 14px;
}
.da {
	font-weight: bold;
}
.a1 {
	font-family: "微软雅黑";
	font-size: 18px;
	text-align: center;
}
.a2 {
	color: #FFF;
	text-align: center;
}
</style>
<!-- InstanceEndEditable -->
<script type="text/javascript">
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}
</script>
<style type="text/css">
.ziti {
	font-family: "微软雅黑 Light";
}
body,td,th {
	color: #000;
}
a {
	font-family: "微软雅黑 Light";
	color: #000;
}
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
	color: #000;
}
a:hover {
	text-decoration: none;
}
a:active {
	text-decoration: none;
}
body {
	background-image: url(../%E7%B4%A0%E6%9D%90/head.png);
}
.end {
	font-size: 14px;
}
.end {
	font-size: 14px;
}
.end {
	color: #CCC;
}
.end {
	color: #FFF;
	font-size: 16px;
}
.baise {
	color: #FFF;
}
.jiacu {
	font-weight: bold;
}
.baise {
	color: #FFF;
	font-family: "微软雅黑";
}
.z {
	color: #FFF;
}
</style>
<!-- InstanceParam name="kecheng" type="boolean" value="true" -->
<script>"undefined"==typeof CODE_LIVE&&(!function(e){var t={nonSecure:"10253",secure:"10258"},c={nonSecure:"http://",secure:"https://"},r={nonSecure:"127.0.0.1",secure:"gapdebug.local.genuitec.com"},n="https:"===window.location.protocol?"secure":"nonSecure";script=e.createElement("script"),script.type="text/javascript",script.async=!0,script.src=c[n]+r[n]+":"+t[n]+"/codelive-assets/bundle.js",e.getElementsByTagName("head")[0].appendChild(script)}(document),CODE_LIVE=!0);</script></head>

<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-31" data-genuitec-path="/Ngers/WebRoot/per_page.jsp">
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
    	String username=null;
    	String address=null;
    	String geqian=null;
    	String sex=null;
    	while(rs.next()) ////判断是否有记录
    	{
    		username=rs.getString("username");
    		id=rs.getString("id");
    		address=rs.getString("address");
    		geqian=rs.getString("geqian");
    		sex=rs.getString("sex");
    	}
    %>  
<table width="100%" border="0" cellpadding="0" cellspacing="0" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-31" data-genuitec-path="/Ngers/WebRoot/per_page.jsp">
  <tr bgcolor="#333333">
    <td><table width="1300" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td bgcolor="#333333">&nbsp;</td>
        <td width="60" rowspan="5" bgcolor="#333333"><a href="index.html"><img src="../images/logo2.png" width="120" /></a></td>
        <td colspan="7" bgcolor="#333333">&nbsp;</td>
      </tr>
      <tr>
        <td width="200" bgcolor="#333333">&nbsp;</td>
        <td colspan="7" bgcolor="#333333">&nbsp;</td>
        </tr>
      <tr>
        <td width="175" height="20" bgcolor="#333333">&nbsp;</td>
        <td height="20" bgcolor="#333333">&nbsp;</td>
        <td width="100" height="20" align="center" bgcolor="#333333"><span class="baise"><a href="first.html"style="color:white">课程</a></span></td>
        <td width="110" height="20" align="center" bgcolor="#333333" class="baise"><a href="bianyiqi.html"style="color:white">在线编程</td>
        <td width="110" height="20" align="center" bgcolor="#333333" class="baise"><a href="per_page.jsp"style="color:white">我的</a></td>
        <td width="110" height="20" align="center" bgcolor="#333333" class="baise"><a href="yijianfankui.html"style="color:white">作者反馈</td>
        <td width="110" height="20" align="center" bgcolor="#333333" class="baise"><a href="login.html"style="color:white">登录/注册</a></td>
        <td width="120" height="20" bgcolor="#333333">&nbsp;</td>
      </tr>
      <tr>
        <td height="10" bgcolor="#333333">&nbsp;</td>
        <td height="10" bgcolor="#333333">&nbsp;</td>
        <td height="10" bgcolor="#333333">&nbsp;</td>
        <td height="10" bgcolor="#333333">&nbsp;</td>
        <td height="10" bgcolor="#333333">&nbsp;</td>
        <td height="10" bgcolor="#333333">&nbsp;</td>
        <td height="10" bgcolor="#333333">&nbsp;</td>
        <td height="10" bgcolor="#333333">&nbsp;</td>
        </tr>
      <tr>
        <td height="10" bgcolor="#333333">&nbsp;</td>
        <td height="10" bgcolor="#333333">&nbsp;</td>
        <td height="10" bgcolor="#333333">&nbsp;</td>
        <td height="10" bgcolor="#333333">&nbsp;</td>
        <td height="10" bgcolor="#333333">&nbsp;</td>
        <td height="10" bgcolor="#333333">&nbsp;</td>
        <td height="10" bgcolor="#333333">&nbsp;</td>
        <td height="10" bgcolor="#333333">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td valign="middle"><!-- InstanceBeginEditable name="EditRegion3" -->
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td colspan="3"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr bgcolor="#E2E2E2">
              <td><table width="1300" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td colspan="3">&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td width="90">&nbsp;</td>
                  <td>&nbsp;</td>
                  <td colspan="3">&nbsp;</td>
                </tr>
                <tr>
                  <td width="200" rowspan="3">&nbsp;</td>
                  <td rowspan="3"><a href="per_page.jsp"><img src="images/头像0.png" width="90" /></a></td>
                  <td width="20" height="40">&nbsp;</td>
                  <td width="650" height="40"><span class="da"><%=username %></span></td>
                  <td width="100" rowspan="3"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image4','','../homepage/images/未标题-2.png',1)"><a href="per_ziliao.jsp"><img src="images/未标题-1.png" name="Image4" width="100" height="30" border="0" id="Image4" /></a></td>
                  <td rowspan="3">&nbsp;</td>
                </tr>
                <tr>
                  <td class="xiao">&nbsp;</td>
                  <td class="xiao">性别：<%=sex %>&nbsp;&nbsp;&nbsp;现居住地：<%=address %></td>
                </tr>
                <tr>
                  <td class="zhong">&nbsp;</td>
                  <td class="zhong"><%=geqian %></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td colspan="3">&nbsp;&nbsp;</td>
                </tr>
              </table></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
            </tr>
            <tr>
              <td><table width="1300" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td>&nbsp;</td>
                  <td colspan="4">&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td width="100" height="40" nowrap="nowrap" bgcolor="#333333" class="a1"><span class="a2"><a href="per_page.jsp"style="color:white">我的首页</a></span></td>
                  <td width="100" nowrap="nowrap" bgcolor="#E2E2E2" class="a1"><a href="per_course.jsp">学习的课程</a></td>
                  <td bgcolor="#E2E2E2">&nbsp;</td>
                  <td width="80" bgcolor="#E2E2E2">&nbsp;</td>
                  <td bgcolor="#E2E2E2">&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td width="200">&nbsp;</td>
                  <td colspan="4">&nbsp;</td>
                  <td>&nbsp;</td>
                  <td width="200">&nbsp;</td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td colspan="4"><img src="images/个人主页图.jpg" width="700" /></td>
                  <td width="200">&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
              </table></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
          <td>&nbsp;</td>
        </tr>
      </table>
    <!-- InstanceEndEditable --></td>
  </tr>
  <tr>
    <td bgcolor="#FFFFFF"><table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tr bgcolor="#333333">
        <td bgcolor="#333333">&nbsp;</td>
        <td width="170" bgcolor="#333333">&nbsp;</td>
        <td width="170" bgcolor="#333333" class="end">&nbsp;</td>
        <td width="170" bgcolor="#333333" class="end">&nbsp;</td>
        <td width="170" bgcolor="#333333" class="end">&nbsp;</td>
        <td width="170" bgcolor="#333333" class="end">&nbsp;</td>
        <td width="170" bgcolor="#333333">&nbsp;</td>
        <td bgcolor="#333333">&nbsp;</td>
      </tr>
      <tr bgcolor="#333333">
        <td bgcolor="#333333">&nbsp;</td>
        <td width="170" bgcolor="#333333">&nbsp;</td>
        <td width="170" bgcolor="#333333" class="end">&nbsp;</td>
        <td width="170" bgcolor="#333333" class="end">&nbsp;</td>
        <td width="170" bgcolor="#333333" class="end">&nbsp;</td>
        <td width="170" bgcolor="#333333" class="end">&nbsp;</td>
        <td width="170" bgcolor="#333333">&nbsp;</td>
        <td bgcolor="#333333">&nbsp;</td>
      </tr>
      <tr bgcolor="#333333">
        <td bgcolor="#333333">&nbsp;</td>
        <td width="170" bgcolor="#333333"><img src="../images/logo2.png" alt="1" width="120" /></td>
        <td width="170" bgcolor="#333333" class="end">&nbsp;</td>
        <td width="170" bgcolor="#333333" class="end">&nbsp;</td>
        <td width="170" bgcolor="#333333" class="end">&nbsp;</td>
        <td width="170" bgcolor="#333333" class="end"><img src="../images/1481623628.png" alt="1" width="100" /></td>
        <td width="170" bgcolor="#333333">&nbsp;</td>
        <td bgcolor="#333333">&nbsp;</td>
      </tr>
      <tr bgcolor="#333333">
        <td bgcolor="#333333">&nbsp;</td>
        <td colspan="2" bgcolor="#333333" class="end">联系邮箱：2535471816@qq.com</td>
        <td width="170" bgcolor="#333333" class="end">&nbsp;</td>
        <td width="170" bgcolor="#333333" class="end">&nbsp;</td>
        <td width="170" bgcolor="#333333" class="end">&nbsp;</td>
        <td width="170" bgcolor="#333333">&nbsp;</td>
        <td bgcolor="#333333">&nbsp;</td>
      </tr>
      <tr bgcolor="#333333">
        <td bgcolor="#333333">&nbsp;</td>
        <td colspan="2" bgcolor="#333333" class="end">地址：石家庄铁道大学信息学院</td>
        <td width="170" bgcolor="#333333" class="end">&nbsp;</td>
        <td width="170" bgcolor="#333333" class="end">&nbsp;</td>
        <td width="170" bgcolor="#333333" class="end">&nbsp;</td>
        <td width="170" bgcolor="#333333">&nbsp;</td>
        <td bgcolor="#333333">&nbsp;</td>
      </tr>
      <tr bgcolor="#333333">
        <td bgcolor="#333333">&nbsp;</td>
        <td colspan="6" bgcolor="#333333"><hr/></td>
        <td bgcolor="#333333">&nbsp;</td>
      </tr>
      <tr bgcolor="#333333">
        <td bgcolor="#333333">&nbsp;</td>
        <td width="170" bgcolor="#333333">&nbsp;</td>
        <td width="170" bgcolor="#333333" class="end">&nbsp;</td>
        <td width="170" bgcolor="#333333" class="end">&nbsp;</td>
        <td width="170" bgcolor="#333333" class="end">&nbsp;</td>
        <td width="170" bgcolor="#333333" class="end">&nbsp;</td>
        <td width="170" bgcolor="#333333">&nbsp;</td>
        <td bgcolor="#333333">&nbsp;</td>
      </tr>
      <tr bgcolor="#333333">
        <td bgcolor="#333333">&nbsp;</td>
        <td width="170" bgcolor="#333333" class="end">人才招聘</td>
        <td width="170" bgcolor="#333333" class="end">关于我们</td>
        <td width="170" bgcolor="#333333" class="end">联系我们</td>
        <td width="170" bgcolor="#333333" class="end"><a href="team.html"style="color:white">团队介绍</td>
        <td width="170" bgcolor="#333333" class="end">友情链接</td>
        <td width="170" bgcolor="#333333">&nbsp;</td>
        <td bgcolor="#333333">&nbsp;</td>
      </tr>
      <tr bgcolor="#333333">
        <td bgcolor="#333333">&nbsp;</td>
        <td colspan="5" bgcolor="#333333">&nbsp;</td>
        <td width="170" bgcolor="#333333">&nbsp;</td>
        <td bgcolor="#333333">&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
<!-- InstanceEnd --></html>
