<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<!-- Loading Bootstrap -->
 <link href="<%= request.getContextPath() + "/css/vendor/bootstrap.min.css" %>" rel="stylesheet">

<!-- Loading Flat UI -->
<link href="<%= request.getContextPath() + "/css/flat-ui.css" %>" rel="stylesheet">
</head>
<script>
function clickBtn(page){
	// 値を取得
	document.getElementById("page").setAttribute("value",page);
}
</script>

<div class="container">
<nav role="navigation" class="navbar navbar-default">
        <div class="navbar-header">
          <button data-target="#bs-example-navbar-collapse-10" data-toggle="collapse" class="navbar-toggle" type="button">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a href="#" class="navbar-brand">項目</a>
        </div>
        <div id="bs-example-navbar-collapse-10" class="collapse navbar-collapse">
        <form name="form_name" action="Menu" method="post" target="frame3">
        	<input type="hidden" name="page" id="page" value=""></input>
          <a href="javascript:form_name.submit()"><p class="navbar-text">おすすめ編成</p></a>
          </form>
        </div>
</nav>

		<!-- 折り畳み展開ポインタ>
		<div onclick="obj=document.getElementById('open1').style; obj.display=(obj.display=='none')?'block':'none';">
			<a style="cursor:pointer;"><strong>おすすめ</strong></a>
		</div>

		<div id="open1" style="display:none;clear:both;">
			<form name="form_name" action="Menu" method="post" target="frame3">
				<p>
					<input type="hidden" name="page" id="page" value=""></input>
					<a onclick="clickBtn('/page/Osusume/osusume.jsp')" href="javascript:form_name.submit()"><em>おすすめ編成</em></a><br/>
					<a onclick="clickBtn('/page/Counter/hihicounter.jsp')" href="javascript:form_name.submit()"><em>ヒヒカウンター</em></a><br/>
				</p>
			</form>
		</div>
		<-->

</div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>

    <!-- Bootstrap 4 requires Popper.js -->
    <script src="https://unpkg.com/popper.js@1.14.1/dist/umd/popper.min.js" crossorigin="anonymous"></script>

    <script src="<%= request.getContextPath() + "/js/flat-ui.js" %>"></script>

    <script src="<%= request.getContextPath() + "/js/application.js" %>"></script>
</body>
</html>