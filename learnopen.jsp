<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/temp.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>课程目录界面</title>
<!-- InstanceEndEditable -->
<!-- InstanceBeginEditable name="head" -->
<style type="text/css">
.learn—title {
	font-family: "微软雅黑";
	font-size: 30px;
	color: #FFF;
	font-weight: bold;
}
.learn—title2 {
	font-family: "微软雅黑";
	color: #F5F5F5;
	font-size: 14px;
}
.learn—title3 {
	font-family: "微软雅黑";
	color: #F5F5F5;
	font-size: 16px;
}
.learn—简介 {
	font-family: "微软雅黑";
	font-size: 14px;
}
.learn-jiangshi {
	font-family: "微软雅黑";
	font-size: 16px;
}
.learn--zhangjie {
	font-family: "黑体";
	font-size: 18px;
}
.learn--daoshi {
	font-family: "微软雅黑";
}
.dijizhang {
	font-family: "微软雅黑";
	font-weight: bold;
	font-size: 20px;
}
</style>
<script src="Scripts/swfobject_modified.js" type="text/javascript"></script>
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

<body onload="MM_preloadImages('images/收藏1.png')" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-27" data-genuitec-path="/Ngers/WebRoot/learnopen.jsp">
<% 
	String lesson=request.getParameter("url");  
	PreparedStatement pstmt = null;
		ResultSet rs = null;
		String url = "jdbc:sqlserver://localhost:1433;DatabaseName=web;";
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

     	Connection conn = DriverManager.getConnection(url, "sa", "20163488");//登录JDBC链接数据库

   		Statement stmt = conn.createStatement();//从数据库里面取东西对比    
    	String sql ="SELECT * FROM lesson WHERE url='"+lesson+"'";
    	pstmt = conn.prepareStatement(sql);
    	rs = pstmt.executeQuery();
    	String name=null;
    	String teacher=null;
    	String intro=null;
    	while(rs.next()) ////判断是否有记录
    	{
    		
    		name=rs.getString("name");
    		teacher=rs.getString("teacher");
    		intro=rs.getString("intro");
    	}
		

 %>
<table width="100%" border="0" cellpadding="0" cellspacing="0" data-genuitec-lp-enabled="false" data-genuitec-file-id="wc1-27" data-genuitec-path="/Ngers/WebRoot/learnopen.jsp">
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
        <td width="110" height="20" align="center" bgcolor="#333333" class="baise"><a href="MyJspcheak.jsp"style="color:white">我的</a></td>
        <td width="110" height="20" align="center" bgcolor="#333333" class="baise"><a href="yijianfankui.html" style="color:white">作者反馈</a></td>
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
      <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td><table width="100%" border="0" align="left" cellpadding="0" cellspacing="0">
                <tr>
                  <td><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td bgcolor="#666666">&nbsp;</td>
                      <td colspan="5" bgcolor="#666666" class="learn—title">&nbsp;</td>
                      <td width="193" bgcolor="#666666">&nbsp;</td>
                    </tr>
                    <tr>
                      <td width="147" bgcolor="#666666">&nbsp;</td>
                      <td colspan="5" bgcolor="#666666" class="learn—title"><%=name %></td>
                      <td bgcolor="#666666">&nbsp;</td>
                    </tr>
                    <tr>
                      <td bgcolor="#666666">&nbsp;</td>
                      <td bgcolor="#666666">&nbsp;</td>
                      <td bgcolor="#666666">&nbsp;</td>
                      <td bgcolor="#666666">&nbsp;</td>
                      <td bgcolor="#666666">&nbsp;</td>
                      <td width="298" bgcolor="#666666">&nbsp;</td>
                      <td bgcolor="#666666">&nbsp;</td>
                    </tr>
                    <tr>
                      <td width="147" bgcolor="#666666">&nbsp;</td>
                      <td width="132" bgcolor="#666666"><p class="learn—title2">主讲人</p>
                        <p class="learn—title3"><%=teacher %></p></td>
                      <td width="452" bgcolor="#666666"><p class="learn—title2">课程简介</p>
                        <p class="learn—title2"><%=intro %></p></td>
                      <td width="4" bgcolor="#666666">&nbsp;</td>
                      <td width="74" bgcolor="#666666"><p class="learn—title2">&nbsp;</p></td>
                      <td bgcolor="#666666" ><a href="vedio/<%=lesson%>"><img src="images/下载.png" width="200" height="60" /></a></td>
                      <td bgcolor="#666666">&nbsp;</td>
                    </tr>
                    <tr>
                      <td bgcolor="#666666">&nbsp;</td>
                      <td bgcolor="#666666">&nbsp;</td>
                      <td bgcolor="#666666">&nbsp;</td>
                      <td bgcolor="#666666">&nbsp;</td>
                      <td bgcolor="#666666">&nbsp;</td>
                      <td bgcolor="#666666">&nbsp;</td>
                      <td bgcolor="#666666">&nbsp;</td>
                    </tr>
                    <tr>
                      <td bgcolor="#FFFFFF">&nbsp;</td>
                      <td bgcolor="#FFFFFF">&nbsp;</td>
                      <td bgcolor="#FFFFFF">&nbsp;</td>
                      <td bgcolor="#FFFFFF">&nbsp;</td>
                      <td bgcolor="#FFFFFF">&nbsp;</td>
                      <td bgcolor="#FFFFFF">&nbsp;</td>
                      <td bgcolor="#FFFFFF">&nbsp;</td>
                    </tr>
                    <tr>
                      <td bgcolor="#FFFFFF">&nbsp;</td>
                      <td bgcolor="#FFFFFF">&nbsp;</td>
                      <td bgcolor="#FFFFFF">&nbsp;</td>
                      <td bgcolor="#FFFFFF">&nbsp;</td>
                      <td bgcolor="#FFFFFF">&nbsp;</td>
                      <td bgcolor="#FFFFFF">&nbsp;</td>
                      <td bgcolor="#FFFFFF">&nbsp;</td>
                    </tr>
                    <tr>
                      <td bgcolor="#000000">&nbsp;</td>
                      <td colspan="5" rowspan="2" align="center" bgcolor="#000000"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" width="960" height="720" id="FLVPlayer">
                        <param name="movie" value="FLVPlayer_Progressive.swf" />
                        <param name="quality" value="high" />
                        <param name="wmode" value="opaque" />
                        <param name="scale" value="noscale" />
                        <param name="salign" value="lt" />
                        <param name="FlashVars" value="&amp;MM_ComponentVersion=1&amp;skinName=Clear_Skin_3&amp;streamName=vedio/<%=lesson%>&amp;autoPlay=true&amp;autoRewind=false" />
                        <param name="swfversion" value="8,0,0,0" />
                        <!-- 此 param 标签提示使用 Flash Player 6.0 r65 和更高版本的用户下载最新版本的 Flash Player。如果您不想让用户看到该提示，请将其删除。 -->
                        <param name="expressinstall" value="Scripts/expressInstall.swf" />
                        <!-- 下一个对象标签用于非 IE 浏览器。所以使用 IECC 将其从 IE 隐藏。 -->
                        <!--[if !IE]>-->
                        <object type="application/x-shockwave-flash" data="FLVPlayer_Progressive.swf" width="960" height="720">
                          <!--<![endif]-->
                          <param name="quality" value="high" />
                          <param name="wmode" value="opaque" />
                          <param name="scale" value="noscale" />
                          <param name="salign" value="lt" />
                          <param name="FlashVars" value="&amp;MM_ComponentVersion=1&amp;skinName=Clear_Skin_3&amp;streamName=vedio/<%=lesson %>&amp;autoPlay=true&amp;autoRewind=false" />
                          <param name="swfversion" value="8,0,0,0" />
                          <param name="expressinstall" value="Scripts/expressInstall.swf" />
                          <!-- 浏览器将以下替代内容显示给使用 Flash Player 6.0 和更低版本的用户。 -->
                          <div>
                            <h4>此页面上的内容需要较新版本的 Adobe Flash Player。</h4>
                            <p><a href="http://www.adobe.com/go/getflashplayer"><img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif" alt="获取 Adobe Flash Player" /></a></p>
                          </div>
                          <!--[if !IE]>-->
                        </object>
                        <!--<![endif]-->
                      </object></td>
                      <td bgcolor="#000000">&nbsp;</td>
                    </tr>
                    <tr>
                      <td bgcolor="#000000">&nbsp;</td>
                      <td bgcolor="#000000">&nbsp;</td>
                    </tr>
                    <tr>
                      <td bgcolor="#FFFFFF">&nbsp;</td>
                      <td bgcolor="#FFFFFF">&nbsp;</td>
                      <td bgcolor="#FFFFFF">&nbsp;</td>
                      <td bgcolor="#FFFFFF">&nbsp;</td>
                      <td bgcolor="#FFFFFF">&nbsp;</td>
                      <td bgcolor="#FFFFFF">&nbsp;</td>
                      <td bgcolor="#FFFFFF">&nbsp;</td>
                    </tr>
                  </table></td>
                </tr>
              </table></td>
            </tr>
            <tr>
              <td><table width="1300" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td><table width="1300" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="150" rowspan="2">&nbsp;</td>
                      <td rowspan="2"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                          <td colspan="5" class="learn—简介">&nbsp;</td>
                        </tr>
                        <tr>
                          <td colspan="5" class="learn—简介">&nbsp;</td>
                        </tr>
                        
                      </table></td>
                      <td width="300" height="360"><table width="250" border="0" align="right" cellpadding="0" cellspacing="0">
                        
                      </table></td>
                      <td width="150" rowspan="2">&nbsp;</td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                    </tr>
                  </table></td>
                </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table>
      <script type="text/javascript">
swfobject.registerObject("FLVPlayer");
      </script>
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
        <td width="170" bgcolor="#333333" class="end"><a href="../other/team.html"style="color:white">团队介绍</a></td>
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
<%
		session.invalidate();

 %>
</body>
<!-- InstanceEnd --></html>
