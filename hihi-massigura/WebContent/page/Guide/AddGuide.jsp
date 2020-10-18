<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="comon.*" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Loading Bootstrap -->
 <link href="<%= request.getContextPath() + "/css/vendor/bootstrap.min.css" %>" rel="stylesheet">

<!-- Loading Flat UI -->
<link href="<%= request.getContextPath() + "/css/flat-ui.css" %>" rel="stylesheet">
</head>
<script>
function clickBtn(id, name){
	// 値を取得
	document.getElementById("enemyID").setAttribute("value",id);
	document.getElementById("enemyName").setAttribute("value",name);
}
</script>
<body>
<div class="container">
<%
	String enemyID = request.getAttribute("enemyID").toString();
	String enemyName = request.getAttribute("enemyName").toString();
%>
<p>
	<%= enemyName %>
</p>
<div class="row">
	<div class="col-md-12">
		<form role="form" target="frame3" action="/hihi_masshigura/AddGuideServlet" method="post" enctype="multipart/form-data">
			<input type="hidden" name="enemyID" id="enemyID" value=""></input>
			<input type="hidden" name="enemyName" id="enemyName" value=""></input>
			<h4>タイトル</h4>
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Text input" name="title">
			</div>
			<h4>本文</h4>
			<div class="form-group">
				<textarea class="form-control" rows="3" name="massege"></textarea>
			</div>
			<h4>URL</h4>
			<div class="form-group">
				<input type="text" class="form-control" placeholder="Text input" name="url">
			</div>
			<button type="submit" class="btn btn-primary" onclick="clickBtn('<%= enemyID %>', '<%= enemyName %>')">新規作成</button>
		</form>
	</div>
</div>
</div>
</body>
</html>