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
function clickBtn(){
	// 値を取得
	document.getElementById("count").value++;
}
</script>
<body>
<p>カウンター</p>
<p><input type="text" name="count" id="count" value="0"></input></p>
<input type="image" src="image/blob.jpg" alt="home" onclick="clickBtn()" width="300" vspace="2"></input>
</body>
</html>