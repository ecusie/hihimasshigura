<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>
<image src="image/osu.png" alt="おすすめ編成" height="200">
<!-- 折り畳み展開ポインタ -->
<div onclick="obj=document.getElementById('open1').style; obj.display=(obj.display=='none')?'block':'none';">
<input type="image" src="image/r.png" alt="home" width="200" vspace="2"></input>
</div>
<!--// 折り畳み展開ポインタ -->

<!-- 折り畳まれ部分 -->
<div id="open1" style="display:none;clear:both;">
<p>
　<image src="image/r1.png" alt="おすすめ編成" width="150"><br>
　<image src="image/r2.png" alt="おすすめ編成" width="150"><br>
　<image src="image/r3.png" alt="おすすめ編成" width="150"><br>
　<image src="image/r4.png" alt="おすすめ編成" width="150"><br>
　<image src="image/r5.png" alt="おすすめ編成" width="150"><br>
　<image src="image/r6.png" alt="おすすめ編成" width="150"><br>
</p>
</div>
<!--// 折り畳まれ部分 -->
<!-- 折り畳み展開ポインタ -->
<div onclick="obj=document.getElementById('open2').style; obj.display=(obj.display=='none')?'block':'none';">
<input type="image" src="image/k.png" alt="home" width="200" vspace="2"></input>
</div>
<!--// 折り畳み展開ポインタ -->

<!-- 折り畳まれ部分 -->
<div id="open2" style="display:none;clear:both;">
<p>
<form action="HenseiTop" method="post" target="frame2">
　<input type="image" src="image/k1.png" alt="おすすめ編成" width="150"><br>
</form>
　<image src="image/k2.png" alt="おすすめ編成" width="150"><br>
</p>
</div>
<!--// 折り畳まれ部分 -->

</body>
</html>