<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script>
function clickBtn(page){
	// 値を取得
	document.getElementById("page").setAttribute("value",page);
}
</script>
<body>
<form action="Menu" method="post" target="frame3">
	<input type="hidden" name="page" id="page" value=""></input>
	<input type="image" src="<%= request.getContextPath() + "/images/home/lhomeIcon.png" %>"  alt="home" onclick="clickBtn('/page/Home/home.jsp')" height="80"></input>
</form>
</body>
</html>