<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="<%= request.getContextPath() + "/css/style.css" %>" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
<div id="wrapper">
		<div id="mainBanner">
			<img src="<%= request.getContextPath() + "/images/home/icon.jpg" %>" alt="ヒヒまっしぐら！！団アイコン"width="35%" height="35%">
	</div>

	<section class="content">
		<h3 class="heading">更新情報</h3>
		<article class="post">
			<p><img src="images/banners/sample.jpg" alt="" width="260" height="113" class="alignright" />ここに文章</p>
		</article>
	</section>
</div>
</body>
</html>