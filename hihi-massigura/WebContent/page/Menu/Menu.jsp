<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<script>
function clickBtn(page){
	// 値を取得
	document.getElementById("page").setAttribute("value",page);
}
</script>
<body>
	<form action="Menu" method="post" target="frame2">
		<input type="hidden" name="page" id="page" value=""></input>
		<input type="image" src="<%= request.getContextPath() + "/image/homeIcon.png" %>"  alt="home" onclick="clickBtn('/page/Home/home.jsp')" width="190" vspace="2"></input>
		<input type="image" src="<%= request.getContextPath() + "/image/osusume.png" %>"   alt="home" onclick="clickBtn('/page/Osusume/osusume.jsp')" width="190" vspace="2"></input>
		<input type="image" src="<%= request.getContextPath() + "/image/counter.png" %>"   alt="home" onclick="clickBtn('/page/Counter/hihicounter.jsp')" width="190" vspace="2"></input>
		<input type="image" src="<%= request.getContextPath() + "/image/btn057_05.png" %>" alt="home" onclick="clickBtn()" width="190" vspace="2"></input>
		<input type="image" src="<%= request.getContextPath() + "/image/btn057_05.png" %>" alt="home" onclick="clickBtn()" width="190" vspace="2"></input>
		<input type="image" src="<%= request.getContextPath() + "/image/btn057_05.png" %>" alt="home" onclick="clickBtn()" width="190" vspace="2"></input>
	</form>
</body>
</html>