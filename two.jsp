<%@ page language="java" import="java.util.*,java.sql.*"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!-- InstanceBegin template="/Templates/temp.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>课程页面</title>
<!-- InstanceEndEditable -->
<!-- InstanceBeginEditable name="head" -->
<style type="text/css">
.16hao {
	font-family: "微软雅黑";
}

.images {
	text-align: left;
}

.12hao {
	font-size: 12px;
	color: #333;
}

body, td, th {
	font-family: "微软雅黑 Light";
}

.jieshao {
	font-size: 16px;
}

.xiao {
	font-size: 14px;
	font-family: "微软雅黑";
	color: #666;
}

.da1 {
	font-size: 20px;
}

.xia1 {
	color: #FFF;
}

.lianjie {
	font-family: "微软雅黑";
	color: #FFF;
	background-color: #333;
}
</style>
<!-- InstanceEndEditable -->
<script type="text/javascript">
	function MM_preloadImages() { //v3.0
		var d = document;
		if (d.images) {
			if (!d.MM_p)
				d.MM_p = new Array();
			var i,
				j = d.MM_p.length,
				a = MM_preloadImages.arguments;
			for (i = 0; i < a.length; i++)
				if (a[i].indexOf("#") != 0) {
					d.MM_p[j] = new Image;
					d.MM_p[j++].src = a[i];
			}
		}
	}
</script>
<style type="text/css">
.ziti {
	font-family: "微软雅黑 Light";
}

body, td, th {
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

<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-38" data-genuitec-path="/Ngers/WebRoot/two.jsp">
	<table width="100%" border="0" cellpadding="0" cellspacing="0" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-38" data-genuitec-path="/Ngers/WebRoot/two.jsp">
		<tr bgcolor="#333333">
			<td><table width="1300" border="0" align="center"
					cellpadding="0" cellspacing="0">
					<tr>
						<td bgcolor="#333333">&nbsp;</td>
						<td width="60" rowspan="5" bgcolor="#333333"><a
							href="index.html"><img src="../images/logo2.png" width="120" /></a></td>
						<td colspan="7" bgcolor="#333333">&nbsp;</td>
					</tr>
					<tr>
						<td width="200" bgcolor="#333333">&nbsp;</td>
						<td colspan="7" bgcolor="#333333">&nbsp;</td>
					</tr>
					<tr>
						<td width="175" height="20" bgcolor="#333333">&nbsp;</td>
						<td height="20" bgcolor="#333333">&nbsp;</td>
						<td width="100" height="20" align="center" bgcolor="#333333"><span
							class="baise"><a href="first.html" style="color:white">课程</a></span></td>
						<td width="110" height="20" align="center" bgcolor="#333333"
							class="baise"><a href="bianyiqi.html" style="color:white">在线编程</td>
						<td width="110" height="20" align="center" bgcolor="#333333"
							class="baise"><a href="MyJspcheak.jsp" style="color:white">我的</a></td>
						<td width="110" height="20" align="center" bgcolor="#333333"
							class="baise"><a href="yijianfankui.html"
							style="color:white">作者反馈</a></td>
						<td width="110" height="20" align="center" bgcolor="#333333"
							class="baise"><a href="login.html" style="color:white">登录/注册</a></td>
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
			<td valign="middle">
				<!-- InstanceBeginEditable name="EditRegion3" -->
				<table width="1300" border="0" align="center" cellpadding="0"
					cellspacing="0">
					<tr>

					</tr>
					<tr>
						<td width="100" rowspan="2">&nbsp;</td>
						<td width="40"><h4>分类:</h4></td>
						<td width="40" rowspan="3">&nbsp;</td>
						<td colspan="4"><span class="lianjie"><a
								href="first.html" style="color:white">全部</a></span><span class="16hao">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								HTML/CSS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;JavaScript&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Html5&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;CSS3&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Java&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Python
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WebApp
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ios
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Android&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;C&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								C++ &nbsp;</span></td>
						<td width="100" rowspan="3" class="16hao">&nbsp;</td>
					</tr>
					<tr>


					</tr>
					<tr>
						<td width="100">&nbsp;</td>
						<td>&nbsp;</td>
						<td colspan="4" class="16hao">C#
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;大数据&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							云计算&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							Linux&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							Ps&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Flash
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;设计工具&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							设计基础</td>
					</tr>
					<tr>
						<td width="100">&nbsp;</td>
						<td colspan="6"><hr /></td>
						<td width="100">&nbsp;</td>
					</tr>
					<tr>
						<td width="100">&nbsp;</td>
						<td width="40"><h4>类型:</h4></td>
						<td>&nbsp;</td>
						<td colspan="4"><span class="lianjie"><a
								href="first.html" style="color:white">全部</a></span><span class="16hao">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								基础入门&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								高级进阶&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								设计案例&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 工具</span></td>
						<td width="100">&nbsp;</td>
					</tr>
					<tr>
						<td width="100">&nbsp;</td>
						<td colspan="6"><hr /></td>
						<td width="100">&nbsp;</td>

					</tr>
                   
				</table>
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
				
					<tr>
						<td bgcolor="#F5F5F5"><table width="1100" border="0" align="center">
						  <tr>
						   <%
									PreparedStatement pstmt = null;
									ResultSet rs = null;
									String name = null;
									String lesson = null;
									String teacher = null;
									String intro= null;
									String img=null;
									request.setCharacterEncoding("utf-8");
									String url = "jdbc:sqlserver://localhost:1433;DatabaseName=web;";
									Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

									Connection conn = DriverManager.getConnection(url, "sa", "20163488");//登录JDBC链接数据库

									Statement stmt = conn.createStatement();//从数据库里面取东西对比    
									String sql = "select  *  from lesson";
									pstmt = conn.prepareStatement(sql);
									rs = pstmt.executeQuery();
									while (rs.next()) ////判断是否有记录
									{
										name = rs.getString("name");
										lesson = rs.getString("url");
										intro= rs.getString("intro");
										teacher= rs.getString("teacher");
										img=rs.getString("img");
										
								%>
						    <td width="273"><p><a href="learnopen.jsp?url=<%=lesson%>"><img src="vedio/<%=img %>" alt=""
												width="190" /></a> </p>
                              <h4 class="da1"><%=name %></h4>
                              <p class="xiao"> <%=intro %> </p>
                            <p>主讲人：<%=teacher %></p></td>
                            <%
                            
                            } 
                            %>
						
					      </tr>
						  </table>
						  <table width="1300" border="0"
								align="center" cellpadding="0" cellspacing="0">
								<tr>
									<td bgcolor="#F5F5F5">&nbsp;</td>
									<td colspan="2" bgcolor="#F5F5F5">&nbsp;</td>
									<td colspan="2" bgcolor="#F5F5F5">&nbsp;</td>
									<td colspan="6" bgcolor="#F5F5F5">&nbsp;</td>
									<td colspan="2" bgcolor="#F5F5F5">&nbsp;</td>
									<td bgcolor="#F5F5F5">&nbsp;</td>
									<td bgcolor="#F5F5F5">&nbsp;</td>
							</tr>
								<tr>
								  <td bgcolor="#F5F5F5">&nbsp;</td>
								  <td colspan="2" bgcolor="#F5F5F5">&nbsp;</td>
								  <td colspan="2" bgcolor="#F5F5F5">&nbsp;</td>
								  <td colspan="6" bgcolor="#F5F5F5">&nbsp;</td>
								  <td colspan="2" bgcolor="#F5F5F5">&nbsp;</td>
								  <td bgcolor="#F5F5F5">&nbsp;</td>
								  <td bgcolor="#F5F5F5">&nbsp;</td>
						  </tr>
								<tr>
									<td bgcolor="#F5F5F5">&nbsp;</td>
									<td colspan="2" bgcolor="#F5F5F5">&nbsp;</td>
									<td colspan="2" bgcolor="#F5F5F5">&nbsp;</td>
									<td colspan="6" bgcolor="#F5F5F5">&nbsp;</td>
									<td colspan="2" bgcolor="#F5F5F5">&nbsp;</td>
									<td bgcolor="#F5F5F5">&nbsp;</td>
									<td bgcolor="#F5F5F5">&nbsp;</td>
								</tr>
								
								<tr>
									
								</tr>
								<tr>

								</tr>
								<tr>
									<td width="116" bgcolor="#F5F5F5">&nbsp;</td>
									<td width="134" bgcolor="#F5F5F5">&nbsp;</td>
									<td width="130" bgcolor="#F5F5F5">&nbsp;</td>
									<td width="241" bgcolor="#F5F5F5">&nbsp;&nbsp;<a
										href="first.html">首页</a></td>
									<td width="59" bgcolor="#F5F5F5"><a href="first.html">上一页</a>&nbsp;&nbsp;</td>
									<td width="23" align="center" valign="middle"
										bgcolor="#F5F5F5"><a href="first.html">1</a></td>
									<td width="18" align="center" valign="middle" bgcolor="#333333"><a
										href="second.html" style="color:white">2</a></td>
									<td width="18" align="center" valign="middle" bgcolor="#F5F5F5"><a
										href="third.html">3</a></td>
									<td width="18" align="center" valign="middle" bgcolor="#F5F5F5"><a
										href="four.html">4</a></td>
									<td width="18" align="center" valign="middle" bgcolor="#F5F5F5"><a
										href="five.html">5</a></td>
									<td width="19" align="center" valign="middle" bgcolor="#F5F5F5">&nbsp;<a
										href="six.html">6</a></td>
									<td width="166" bgcolor="#F5F5F5"><a href="third.html">下一页</a></td>
									<td width="85" bgcolor="#F5F5F5"><a href="six.html">尾页</a></td>
									<td width="165" bgcolor="#F5F5F5">&nbsp;</td>
									<td width="90" bgcolor="#F5F5F5">&nbsp;</td>
								</tr>
								<tr>
									<td width="116" bgcolor="#F5F5F5">&nbsp;</td>
									<td width="134" bgcolor="#F5F5F5">&nbsp;</td>
									<td width="130" bgcolor="#F5F5F5">&nbsp;</td>
									<td colspan="2" bgcolor="#F5F5F5">&nbsp;</td>
									<td colspan="6" bgcolor="#F5F5F5">&nbsp;</td>
									<td colspan="2" bgcolor="#F5F5F5">&nbsp;</td>
									<td width="165" bgcolor="#F5F5F5">&nbsp;</td>
									<td width="90" bgcolor="#F5F5F5">&nbsp;</td>
								</tr>
					  </table></td>
					</tr>
				</table> <!-- InstanceEndEditable -->
			</td>
		</tr>
		<tr>
			<td bgcolor="#FFFFFF"><table width="100%" border="0"
					cellpadding="0" cellspacing="0">
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
						<td width="170" bgcolor="#333333"><img
							src="../images/logo2.png" alt="1" width="120" /></td>
						<td width="170" bgcolor="#333333" class="end">&nbsp;</td>
						<td width="170" bgcolor="#333333" class="end">&nbsp;</td>
						<td width="170" bgcolor="#333333" class="end">&nbsp;</td>
						<td width="170" bgcolor="#333333" class="end"><img
							src="../images/1481623628.png" alt="1" width="100" /></td>
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
						<td colspan="6" bgcolor="#333333"><hr /></td>
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
						<td width="170" bgcolor="#333333" class="end"><a
							href="team.html" style="color:white">团队介绍</a></td>
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
<!-- InstanceEnd -->
</html>
