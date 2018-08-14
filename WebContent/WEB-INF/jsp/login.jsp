<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<style>
			body{background-color: black;}
			.container{text-align:center;}
			
			
		</style>
		<meta charset="utf-8" />
		<title></title>
	</head>
	<body >
		<div class="container">
		<form class="form-horizontal" action="success" method="post">
						<div class="form-group">
							<label for="username" class="col-sm-2 control-label">用户名</label>
							<div class="col-sm-6">
								<input name="uid" type="text" class="form-control" 
									placeholder="请输入用户名">
							</div>
						</div>
						<div class="form-group">
							<label for="inputPassword3" class="col-sm-2 control-label">密码</label>
							<div class="col-sm-6">
								<input name="password" type="password" class="form-control" 
									placeholder="请输入密码">
							</div>
						</div>
						
						
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10">
								<input type="submit" width="100" value="登录" name="submit"
									color: white;">
							</div>
						</div>
					</form>
		</div>
	</body>
</html>
