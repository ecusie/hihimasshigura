<?xml version="1.0" encoding="UTF-8" ?>
<%@page import="com.sun.org.apache.xpath.internal.operations.Bool"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="guide.*" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
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
	String radio;
	if (request.getAttribute("optionsRadios") != null){
		radio = request.getAttribute("optionsRadios").toString();
	}else{
		radio = "option2";
	}

	String r1 = "checked=\"\"";
	String r2 = "required";
	if (radio.equals("option2")){
		r1 = "checked";
		r2 = "";
	}else{
		r1 = "";
		r2 = "checked";
	}

%>
	<div class="col-md-6">
		<form role="form" target="frame3" action="/hihi_masshigura/GuideTop" method="post">
			<div class="form-group">
				<label class="radio">
					<input type="radio" data-toggle="radio" name="optionsRadios" id="optionsRadios1" value="option2" data-radiocheck-toggle="radio" <%= r1 %>>
						種類順
				</label>
				<label class="radio">
					<input type="radio" data-toggle="radio" name="optionsRadios" id="optionsRadios2" value="option1" data-radiocheck-toggle="radio" <%= r2 %>>
						属性順
				</label>
			</div>
			<button type="submit" class="btn btn-sm btn-primary">Submit</button>
		</form>
		<p/>
	</div>
	<form name="form_name" target="frame3" action="/hihi_masshigura/GuideListServlet" method="post">
		<input type="hidden" name="enemyID" id="enemyID" value=""></input>
		<input type="hidden" name="enemyName" id="enemyName" value=""></input>
		<input type="hidden" name="page" id="page" value=""></input>
<%
	Boolean bool = true;
	if (radio.equals("option1")){
		bool = false;
	}
	SortGuide o = new SortGuide(bool);
	ArrayList<ArrayList<String[]>> list = o.getList();
	for(int i = 0;i < list.size();i++){
		if (list.get(i).size() == 0){
			continue;
		}
%>
	<!-- 折り畳み展開ポインタ -->
	<div onclick="obj=document.getElementById('<%= "open" + i %>').style; obj.display=(obj.display=='none')?'block':'none';">
		<p>
			<button data-toggle="dropdown" class="btn btn-default dropdown-toggle" type="button"><%= o.getLabel(i) %> <span class="caret"></span></button>
		</p>
	</div>
	<!--// 折り畳み展開ポインタ -->

	<!-- 折り畳まれ部分 -->
	<div id="<%= "open" + i %>" style="display:none;clear:both;">
<%
		for(int j = 0;j < list.get(i).size();j++){
			String id = list.get(i).get(j)[0];
			String name = list.get(i).get(j)[1];
%>
			 	<button type="submit" class="btn btn-primary" onclick="clickBtn('<%= id %>', '<%= name %>', 'GuideList')"><%= name %></button>
<%
		}
%>
		<p/>
	</div>
<%
	}
%>
	</form>
	</div>
</body>
</html>