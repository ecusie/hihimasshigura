<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="com.sun.org.apache.xpath.internal.operations.Bool"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link href="<%= request.getContextPath() + "/css/style.css" %>" rel="stylesheet">
<meta charset="UTF-8">
<title>ヒヒまっしぐら!!</title>
</head>
<script>
function clickBtn(page){
	// 値を取得
	document.getElementById("page").setAttribute("value",page);
}
</script>
<body>
<header id="header" role="banner">
                <h1>騎空団ヒヒまっしぐら！！のサイトです</h1>
		<div class="logo">
			<a href="index.html" title="ヒヒまっしぐら！！" rel="home">ヒヒまっしぐら！！<span>リアル優先団イベそれなり</span></a>
		</div>
		<div class="info">
			<p class="name"><span><b>団長:</b></span><b> かませ犬</b></p>
			<p class="id"><b>GID:24687369</b></p>
		</div>
</header>

<form name="form_name" target="frame3" action="/hihi_masshigura/MenuServlet" method="post">
	<nav id="mainNav">
		<div class="inner">
			<a class="menu" id="menu"><span>MENU</span></a>
			<div class="panel">
				<ul>
					<input type="hidden" name="page" id="page" value=""></input>
					<li class="current-menu-item"><a href="javascript:form_name.submit()" onclick="clickBtn('/page/Home/home.jsp')"><strong>ホーム</strong><span>Home</span></a></li>
					<li><a href="javascript:form_name.submit()" onclick="clickBtn('/page/Home/None.jsp')"><strong>お知らせ</strong><span>News</span></a>
					<li><a href="javascript:form_name.submit()" onclick="clickBtn('/page/Home/None.jsp')"><strong>団方針</strong><span>Policy</span></a></li>
					<li><a href="javascript:form_name.submit()" onclick="clickBtn('/page/Guide/GuideTop.jsp')"><strong>おすすめ編成</strong><span>Organization</span></a>
					<li><a href="javascript:form_name.submit()" onclick="clickBtn('/page/Home/None.jsp')"><strong>ヒヒカウンター</strong><span>Counter</span></a>
					<li><a href="javascript:form_name.submit()" onclick="clickBtn('/page/Home/None.jsp')"><strong>日課リスト</strong><span>Daily routine</span></a>
					<li><a href="javascript:form_name.submit()" onclick="clickBtn('/page/Home/None.jsp')"><strong>古戦場戦歴</strong><span>Old battlefield</span></a>
					<li><a href="javascript:form_name.submit()" onclick="clickBtn('/page/Home/None.jsp')"><strong>掲示板</strong><span>Bulletin board</span></a>
					<li><a href="javascript:form_name.submit()" onclick="clickBtn('/page/Home/None.jsp')"><strong>アンケート</strong><span>questionnaire</span></a>
					<li><a href="javascript:form_name.submit()" onclick="clickBtn('/page/Home/None.jsp')"><strong>リンク集</strong><span>Link collection</span></a>
					<li><a href="javascript:form_name.submit()" onclick="clickBtn('/page/Home/None.jsp')"><strong>その他</strong><span>Other</span></a>
					<li><a href="javascript:form_name.submit()" onclick="clickBtn('/page/Home/None.jsp')"><strong>問い合わせ</strong><span>Contact</span></a>

						</ul>
					</li>
				</ul>
			</div>
		</div>
	</nav>
</form>
</body>
</html>