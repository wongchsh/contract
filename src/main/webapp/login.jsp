<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="/page/main/taglibs.jsp" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
	<!--
		Charisma v1.0.0

		Copyright 2012 Muhammad Usman
		Licensed under the Apache License v2.0
		http://www.apache.org/licenses/LICENSE-2.0

		http://usman.it
		http://twitter.com/halalit_usman
	-->
	<meta charset="utf-8">
	<title>合同管理</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Charisma, a fully featured, responsive, HTML5, Bootstrap admin template.">
	<meta name="author" content="Muhammad Usman">

	<!-- The styles -->
	<link id="bs-css" href="css/bootstrap-cerulean.css" rel="stylesheet">
	<style type="text/css">
	  body {
		padding-bottom: 40px;
	  }
	  .sidebar-nav {
		padding: 9px 0;
	  }
	</style>
	<link href="css/bootstrap-responsive.css" rel="stylesheet">
	<link href="css/charisma-app.css" rel="stylesheet">
	<link href="css/jquery-ui-1.8.21.custom.css" rel="stylesheet">
	<link href='css/fullcalendar.css' rel='stylesheet'>
	<link href='css/fullcalendar.print.css' rel='stylesheet'  media='print'>
	<link href='css/chosen.css' rel='stylesheet'>
	<link href='css/uniform.default.css' rel='stylesheet'>
	<link href='css/colorbox.css' rel='stylesheet'>
	<link href='css/jquery.cleditor.css' rel='stylesheet'>
	<link href='css/jquery.noty.css' rel='stylesheet'>
	<link href='css/noty_theme_default.css' rel='stylesheet'>
	<link href='css/elfinder.min.css' rel='stylesheet'>
	<link href='css/elfinder.theme.css' rel='stylesheet'>
	<link href='css/jquery.iphone.toggle.css' rel='stylesheet'>
	<link href='css/opa-icons.css' rel='stylesheet'>
	<link href='css/uploadify.css' rel='stylesheet'>

	<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

	<!-- The fav icon -->
	<link rel="shortcut icon" href="img/favicon.ico">
		
</head>

<body>
		<div class="container-fluid">
		<div class="row-fluid">
		
			<div class="row-fluid">
				<div class="span12 center login-header">
					<h2>欢迎来到合同管理系统</h2>
				</div><!--/span-->
			</div><!--/row-->
			
			<div class="row-fluid">
				<div class="well span5 center login-box">
					<div class="alert alert-info">
						请输入用户名和密码.
					</div>
					<form class="form-horizontal" action="login" method="post">
						<fieldset>
							<div class="input-prepend" title="用户名" data-rel="tooltip">
								<span class="add-on"><i class="icon-user"></i></span><input autofocus class="input-large span10" name="userName" id="username" type="text" value="zm"/>
							</div>
							<div class="clearfix"></div>

							<div class="input-prepend" title="密码" data-rel="tooltip">
								<span class="add-on"><i class="icon-lock"></i></span><input class="input-large span10" name="password" id="password" type="password" value="zm" />
							</div>
							<div class="clearfix"></div>
							
							<div class="input-prepend" title="验证码" data-rel="tooltip">
								<span class="add-on"><i class="icon-info-sign"></i></span><input class="input-small span3" name="checkCode" id="checkCode"/>&nbsp<img id="checkCodeImg" src="pictureCheckCode" style="border:0;height:28px;vertical-align:middle;width:85px;margin-right:1px" onclick="changeCode(this)"/>
							</div>
							<div class="clearfix"></div>
							<div class="input-prepend">
							<label class="remember" for="remember"><input type="checkbox" id="remember" />记住我</label>
							</div>
							<div class="clearfix"></div>
							<div class="alert fade in" id="errMsg"><button type="button" class="close" data-dismiss="alert">×</button><p><s:property value="errMsg"/></p></div>
							<p class="center span5">
							<button type="submit" class="btn btn-primary">登陆</button>
							</p>
						</fieldset>
					</form>
				</div><!--/span-->
			</div><!--/row-->
				</div><!--/fluid-row-->
		
	</div><!--/.fluid-container-->

	<!-- external javascript
	================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->

	<%@ include file="/page/main/metas.jsp"%>
	<s:if test="errMsg != null">
		<script type="text/javascript">
			$("#errMsg").show();
			$(".alert").alert();
		</script>
	</s:if><s:else>
		<script type="text/javascript">
			$("#errMsg").hide();
		</script>
	</s:else>
	<script type="text/javascript">
		var changeCode = function(obj){
			var timenow = new Date().getTime();
			obj.src = "pictureCheckCode?d=" + timenow;
			//alert("Hello");
		};
	</script>
</body>
</html>