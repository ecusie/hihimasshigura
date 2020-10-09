<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
<script>
function clickBtn(page){
	// 値を取得
	document.getElementById("page").setAttribute("value",page);
}
</script>
<!-- Loading Bootstrap -->
 <link href="<%= request.getContextPath() + "/css/vendor/bootstrap.min.css" %>" rel="stylesheet">

<!-- Loading Flat UI -->
<link href="<%= request.getContextPath() + "/css/flat-ui.css" %>" rel="stylesheet">
</head>
<body>
<div class="container">
	<div class="login">
		<div class="login-screen">
			<form name="form_name"action="LoginServlrt" method="post">
			<div class="login-icon">
				<img src="<%= request.getContextPath() + "/images/login/homeIcon.png" %>" alt="Welcome to Mail App" />
				<h4>Welcome to <small>ヒヒまっしぐら</small></h4>
			</div>

			<div class="login-form">
				<div class="form-group">
				<input type="text" class="form-control login-field" value="" placeholder="Enter your name" id="login-name" name="name"/>
				<label class="login-field-icon fui-user" for="login-name"></label>
			</div>

			<div class="form-group">
				<input type="password" class="form-control login-field" value="" placeholder="Password" id="login-pass" name="pass"/>
				<label class="login-field-icon fui-lock" for="login-pass"></label>
			</div>

					<input type="hidden" name="page" id="page" value=""></input>
					<a class="btn btn-primary btn-lg btn-block" href="javascript:form_name.submit()">Log in</a>
					<a class="login-link" href="javascript:form_name.submit()">CreateAccount</a>
					<submit ></submit>
			</div>
			</form>
		</div>
	</div>
</div>
</body>
</html>