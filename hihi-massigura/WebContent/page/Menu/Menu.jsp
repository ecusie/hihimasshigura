<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
</head>
<script>
function clickBtn(page){
	// 値を取得
	document.getElementById("page").setAttribute("value",page);
}
</script>

<div class="container">
		<!-- 折り畳み展開ポインタ -->
		<div onclick="obj=document.getElementById('open1').style; obj.display=(obj.display=='none')?'block':'none';">
			<a style="cursor:pointer;"><strong>おすすめ</strong></a>
		</div>

		<div id="open1" style="display:none;clear:both;">
			<form name="form_name" action="Menu" method="post" target="frame3">
				<p>
					<input type="hidden" name="page" id="page" value=""></input>
					<input type="button" onclick="clickBtn('/page/Osusume/osusume.jsp')"/>
				</p>
			</form>
		</div>

</div>
</body>
</html>