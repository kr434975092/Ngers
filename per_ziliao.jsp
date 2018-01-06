<%@ page contentType = "text/html; charset=utf-8" import = "java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/temp.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>个人资料</title>
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
.change {
	height: 25px;
	border: 1px solid #d3d3d3;
	width: 290px;
}
.z1 {
	font-family: "微软雅黑";
	font-size: 18px;
}
.baocun {
	background-color: #333333;
	height: 40px;
	width: 100px;
	border: 1px solid #d3d3d3;
	font-size: 18px;
	color: #FFF;
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

<body data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-32" data-genuitec-path="/Ngers/WebRoot/per_ziliao.jsp">
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

<table width="100%" border="0" cellpadding="0" cellspacing="0" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-32" data-genuitec-path="/Ngers/WebRoot/per_ziliao.jsp">
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
     <form id="form1" name="form1" method="post" action="ziliao.jsp">
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
                  <td rowspan="3"><a href="per_page.html"><img src="images/头像0.png" width="90" /></a></td>
                  <td width="20" height="40">&nbsp;</td>
                  <td width="650" height="40"><span class="da"></span></td>
                  <td width="100" rowspan="3"><a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image4','','../homepage/images/未标题-2.png',1)"><img src="images/未标题-1.png" name="Image4" width="100" height="30" border="0" id="Image4" /></a></td>
                  <td rowspan="3">&nbsp;</td>
                </tr>
                <tr>
                  <td class="xiao">&nbsp;</td>
                  <td class="xiao">&nbsp;&nbsp;&nbsp;</td>
                </tr>
                <tr>
                  <td class="zhong">&nbsp;</td>
                  <td class="zhong"></td>
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
                  <td width="90" height="40" nowrap="nowrap" bgcolor="#333333" class="a1"><span class="a2">个人资料</span></td>
                  <td width="90" nowrap="nowrap" bgcolor="#E2E2E2" class="a1">&nbsp;</td>
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
                  <td colspan="4"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td>&nbsp;</td>
                      <td height="45" align="right" class="z1">头像</td>
                      <td height="45" align="right">&nbsp;</td>
                      <td width="450" height="45"><img src="images/头像0.png" alt="" width="60" /></td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td height="45" align="right" valign="middle" class="z1">昵称</td>
                      <td height="45" align="right" valign="middle">&nbsp;</td>
                      <td width="450" height="45" valign="middle"><input name="username" type="text" class="change" id="textfield" />
                      </td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td height="45" align="right" valign="middle" class="z1">真实姓名</td>
                      <td height="45" align="right" valign="middle">&nbsp;</td>
                      <td width="450" height="45" valign="middle" class="xiao"><input name="textfield2" type="text" class="change" id="textfield2" /> 
                        此内容仅自己可见</td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td height="45" align="right" valign="middle" class="z1">性别</td>
                      <td height="45" align="right" valign="middle">&nbsp;</td>
                      <td width="450" height="45" valign="middle"><select name="sex" size="1" class="change" id="select">
                          <option>男</option>
                          <option>女</option>
                          <option selected="selected">保密</option>
                          </select>
                        <label for="select"></label>
                      </td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td height="45" align="right" valign="middle" class="z1">现居住地</td>
                      <td height="45" align="right" valign="middle">&nbsp;</td>
                      <td width="450" height="45" valign="middle"><input name="address" type="text" class="change" id="textfield4" /></td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td height="45" align="right" valign="middle" class="z1">生日</td>
                      <td height="45" align="right" valign="middle">&nbsp;</td>
                      <td width="450" height="45" valign="middle">
                        <label for="select2"></label>
                        <select name="select2" id="select2">
                          <option selected="selected">1</option>
                          <option>2</option>
                          <option>3</option>
                          <option>4</option>
                          <option>5</option>
                          <option>6</option>
                          <option>7</option>
                          <option>8</option>
                          <option>9</option>
                          <option>10</option>
                          <option>11</option>
                          <option>12</option>
                        </select>
                        <label for="select3"></label>
                        <select name="select3" id="select3">
                          <option selected="selected">1</option>
                          <option>2</option>
                          <option>3</option>
                          <option>4</option>
                          <option>5</option>
                          <option>6</option>
                          <option>7</option>
                          <option>8</option>
                          <option>9</option>
                          <option>10</option>
                          <option>11</option>
                          <option>12</option>
                          <option>13</option>
                          <option>14</option>
                          <option>15</option>
                          <option>16</option>
                          <option>17</option>
                          <option>18</option>
                          <option>19</option>
                          <option>20</option>
                          <option>21</option>
                          <option>22</option>
                          <option>23</option>
                          <option>24</option>
                          <option>25</option>
                          <option>26</option>
                          <option>27</option>
                          <option>28</option>
                          <option>29</option>
                          <option>30</option>
                          <option>31</option>
                        </select>
                      </td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td height="45" align="right" valign="middle" class="z1">个性签名</td>
                      <td height="45" valign="middle">&nbsp;</td>
                      <td width="450" height="45" valign="middle"><strong>
                        <input name="geqian" type="text" class="change" id="textfield3" value="好好学习，天天向上。要做一个大学霸。" />
                      </strong></td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td colspan="3" align="center">&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td colspan="3" align="center">
                        <input name="button" type="submit" class="baocun" id="button" value="保存" /></td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td colspan="2">&nbsp;</td>
                      <td width="450">&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td colspan="2">&nbsp;</td>
                      <td width="450">&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td colspan="2">&nbsp;</td>
                      <td>&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                  </table></td>
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
      </form>
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
