<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="<%= request.getContextPath() + "/css/style.css" %>" rel="stylesheet">
<title>Insert title here</title>
</head>
<script>

//今日の日付データを変数hidukeに格納
var hiduke=new Date();

//年・月・日・曜日を取得する
var year = hiduke.getFullYear();
var month = hiduke.getMonth()+1;
var week = hiduke.getDay();
var day = hiduke.getDate();

var yobi= new Array("日","月","火","水","木","金","土");

document.write(year+"年"+month+"月"+day+"日 "+yobi[week]+"曜日");

</script>
<body>
<image src="<%= request.getContextPath() + "/images/schedule/schedule10.jpg" %>" width="400">
</body>
</html>