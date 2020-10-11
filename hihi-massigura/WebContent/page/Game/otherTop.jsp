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
<form name="form_name" target="frame3" action="/hihi_masshigura/MenuServlet" method="post">
	<input type="hidden" name="page" id="page" value=""></input>
	<button type="submit" class="btn btn-primary" onclick="clickBtn('/page/Game/RBB.jsp')">RRB</button>
</form>
</body>
</html>