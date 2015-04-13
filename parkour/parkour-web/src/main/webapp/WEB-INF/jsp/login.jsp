<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>mvc权限登陆login</title>
<script type="text/javascript">
	function validate() {
		var username = document.forms[0].username.value;
		var password = document.forms[0].password.value;

		if (username.length <= 0)
			alert("用户名不能为空！");
		else if (password <= 0)
			alert("密码不能为空！");

		else if (username.length < 6)
			alert("用户名不能小于6位！");
		else if (username != "parkour" && password != "mars")
			alert("用户名或密码错误");
		else {
			/* alert("验证通过，表单可以提交！"); */
			document.forms[0].submit();
		}
	}
</script>

<style type="text/css" media="screen">
.center {
	position: absolute;
	left: 50%;
	top: 50%;
	margin: -60px 0px 0px -60px;
}
</style>
</head>
<body>
	<form action="/parkour/logins/submit" method="post">
		<!-- 记录重定向的url -->
		<input type="hidden" name="redirectURL" value="${redirectURL}" />
		<div class="center">
			<table align="center" border="0" cellpadding="0" cellspacing="0">
				<tr>
					<th colspan="2" align="center">修改用户数据登录入口</th>
				</tr>
				<tr>
					<td>账号</td>
					<td><input type="text" name="username" maxlength="16" /></td>
					<td>密码</td>
					<td><input type="password" name="password" maxlength="16" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit" value="登陆"
						onClick="validate()" /></td>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>