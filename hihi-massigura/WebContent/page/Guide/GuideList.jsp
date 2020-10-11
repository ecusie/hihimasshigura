<%@page import="java.sql.ResultSet"%>
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
function clickBtn(id, name, page){
	// 値を取得
	document.getElementById("enemyID").setAttribute("value",id);
	document.getElementById("enemyName").setAttribute("value",name);
	document.getElementById("page").setAttribute("value",page);
}
</script>
<body>
<div class="container">
<%
	String enemyID = request.getAttribute("enemyID").toString();
	String enemyName = request.getAttribute("enemyName").toString();
	DBOperation db = new DBOperation();
	String sql = "SELECT * FROM `guide` WHERE enemy_id=" + enemyID;
	ResultSet result = db.getSQL(sql);
%>
<p>
	<%= enemyName %>
</p>
<%
	while(result.next()){
		String[] str = new String[2];
		try{
			String[] str2 = { result.getString(0), result.getString(5) };
			str = str2;
		}catch(Exception e){
		}
%>
	<p>
		<button type="submit" class="btn btn-primary" onclick="clickBtn('<%= str[0] %>', '<%= str[1] %>')"><%= str[1] %></button>
	</p>
<%
	}
%>
<form role="form" target="frame3" action="/hihi_masshigura/GuideListServlet" method="post">
	<input type="hidden" name="enemyID" id="enemyID" value=""></input>
	<input type="hidden" name="enemyName" id="enemyName" value=""></input>
	<input type="hidden" name="page" id="page" value=""></input>
	<button type="submit" class="btn btn-primary" onclick="clickBtn('<%= enemyID %>', '<%= enemyName %>', 'AddGuide')">新規作成</button>
</form>

</div>
</body>
</html>