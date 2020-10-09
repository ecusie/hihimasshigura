<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<%
	String jsp = request.getParameter("menubtn");
	if (jsp == null){
		jsp = "page/Home/home.jsp";
	}
%>
<frameset rows="100,*" frameborder="0">
		<frame src="page/Menu/Top.jsp" name="frame1" title="上フレーム" noresize>
		<frameset cols="200,*" frameborder="0">
			<frame src="page/Menu/Menu.jsp" name="frame2" title="左フレーム" noresize>
			<frame src="<%= jsp %>" name="frame3" title="右フレーム">
		</frameset>
</frameset>
<body>

</body>
</html>