<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="comon.*" %>
<%@page import="java.sql.ResultSet"%>
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
<body>
<%
	String enemyID = request.getAttribute("enemyID").toString();
	String enemyName = request.getAttribute("enemyName").toString();
	int count = Integer.parseInt(request.getAttribute("count").toString());
	DBOperation db = new DBOperation();
	String sql = "SELECT * FROM `guide` WHERE enemy_id=" + enemyID;
	ResultSet result = db.getSQL(sql);
%>
<p>
	<%= enemyName %>
</p>
<form role="form" target="frame3" action="/hihi_masshigura/GuideListServlet" method="post">
<%
	String chat = "";
	for (int i = 0; i < count; i++){
		result.next();
	}
		String chat_id = "";
		String image_id = "";
		String title = "";
		String url = "";
		try{
			chat_id = result.getString("chat_id");
			image_id = result.getString("image_id");
			title = result.getString("title");
			url = result.getString("url");
			String sql2 = "SELECT * FROM `chat` WHERE chat_id=" + chat_id;
			ResultSet result2 = db.getSQL(sql2);
			result2.next();
			chat = result2.getString("text");
		}catch(Exception e){
			%>
			asdasdasdasd
			<%
		}
%>
	<p>
		<h4>タイトル</h4>
		<h5><%= title %></h5>
		<h4>本文</h4>
		<h5><%= chat %></h5>
<%
		if(!image_id.equals("0")){
%>
		<h4>画像</h4>
<%
			try{
				String sql3 = "SELECT * FROM `image` WHERE image_id=" + image_id;
				ResultSet result3 = db.getSQL(sql);
				while(result.next()){
%>
					<img src="<%= result3.getString(2) %>">
<%
				}
			}catch(Exception e){

			}
		}
%>
<%
		if(!url.equals("0")){
%>
		<h4>URL</h4>
		<a href="<%= url %>"><h3><%= url %></h3></a>
	</p>
<%
	}
%>
</body>
</html>