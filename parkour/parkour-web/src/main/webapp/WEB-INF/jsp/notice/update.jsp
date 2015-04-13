<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Vary数据更新</title>
</head>
<body>
<sf:form method="post" modelAttribute="notice">
<table width="1000" height="800" align="center" border="1">
	<tr>
	<td>content:</td><td><sf:textarea path="content" rows="30" cols="100"/></td>
	</tr>
	<tr>
	<td>
		<input type="submit" value="更新"/>
	</td>
	</tr>
</table>
</sf:form>
</body>
</html>