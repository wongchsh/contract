<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/page/main/taglibs.jsp" %>
<%@ include file="/page/main/metas.jsp"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登陆</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="style.css" rel="stylesheet" type="text/css" />
  </head>
  
  <body>
  <h1>欢迎进入合同管理系统</h1>
  <div style="algin:center">
  	<table width="237" height="156" style="height: 180px; width: 237px;">
  		<tr>
  			<td width="30px"><font face="Microsoft YaHei UI"><label align="right">用户名:</label></font></td><td><input name="userName"/></td>
  		</tr>
  		<tr>
  			<td><font face="Microsoft YaHei UI"><label>密码</label></font></td><td><input name="password"/></td>
  		<tr>
  			<td><font face="Microsoft YaHei UI"><label>验证码</label></font></td><td><input name="checkCode" size=4/>&nbsp;&nbsp;<img src="pictureCheckCode" align="absmiddle" width="88" height="22"/></td>
  		</tr>
  		 <tr style="height: 20px">
  			<td></td><td><font face="Microsoft YaHei UI"><input type="submit" value="登陆" style="width:80px; background:url(${ctxPath}/img/templet_ButBg.gif) no-repeat 0 -96px; border:0; align:center;"></font></td>
  		</tr>
  		
  	</table>
  </div>
  </body>
</html>
