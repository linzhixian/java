<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Pet更新</title>
</head>
<body>
<sf:form method="post" modelAttribute="userPet">
<table width="700" align="center" border="1">
	<tr>
	<td>uid:</td><td>${userPet.uid }<sf:hidden path="uid"/></td>
	</tr>
	<tr>
	<td>id:</td><td><sf:input path="id"/></td>
	</tr>
	<tr>
	<td>level:</td><td><sf:input path="level"/></td>
	</tr>
	<tr>
	<td colspan="2">
		<input type="submit" value="更新"/>
	</td>
	</tr>
</table>
</sf:form>
</body>
</html>