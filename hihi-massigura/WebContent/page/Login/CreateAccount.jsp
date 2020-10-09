<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<body>
<div class="container">
	<div class="login">
		<div class="login-screen">
			<div class="login-icon">
				<img src="<%= request.getContextPath() + "/images/login/homeIcon.png" %>" alt="Welcome to Mail App" />
				<h4>Welcome to <small>ヒヒまっしぐら</small></h4>
			</div>

			<div class="login-form">
				<div class="form-group">
				<input type="text" class="form-control login-field" value="" placeholder="Enter your name" id="login-name" />
				<label class="login-field-icon fui-user" for="login-name"></label>
			</div>

			<div class="form-group">
				<input type="password" class="form-control login-field" value="" placeholder="Password" id="login-pass" />
				<label class="login-field-icon fui-lock" for="login-pass"></label>
			</div>
				<form name="form_name"action="LoginServlrt" method="post">
					<a class="btn btn-primary btn-lg btn-block" href="javascript:form_name.submit()">Log in</a>
					<a class="login-link" href="javascript:form_name.submit()">Lost your password?</a>
				</form>
			</div>
		</div>
	</div>
</div>
</body>
</html>