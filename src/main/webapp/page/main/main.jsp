<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/page/main/taglibs.jsp" %>
<%@ include file="/page/main/metas.jsp"%>
<html>
	<head>
		<title>Bisness</title>
		<meta charset="utf-8">
		<link rel="stylesheet" type="text/css" href="${ctxPath}/css/style.css"/>
	</head>
	<body>
		<div class="float">
			<div class="header">
			<div class="top_image"><img src="${ctxPath}/Img/Bisness.jpg"></div>
			<div class="navigation">
				<ul>
					<li><a href="">Home</a></li>
					<li><a href="">About</a></li>
					<li><a href="">Services</a></li>
					<li><a href="">Solutions</a></li>
					<li><a href="">Support</a></li>
					<li><a href="">Clients</a></li>
					<li><a href="">Contacts</a></li>
				</ul>
			</div>
			<img src="${ctxPath}/Img/main_image.jpg">
			</div>
			<div id="content">
                    <decorator:body/>
            </div>
			<div class="footer">
				<div class="Business">
					Business co.&copy; 2009-2010 
						<div class="PP">Collect from <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a>
						</div><!--VisibleLinks-->

				</div>   	
			</div>
		</div>
	</body>
</html>
