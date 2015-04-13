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
<sf:form method="post" modelAttribute="userVary">
<table width="1000" height="800" align="center" border="1">
	<tr>
	<td>uid:</td><td>${userVary.uid }<sf:hidden path="uid" /></td>
	</tr>
	<tr>
	<td>exp:</td><td><sf:input path="exp"/></td>
	</tr>
	<tr>
	<td>age:</td><td><sf:input path="age"/></td>
	</tr>
	<tr>
	<td>gold:</td><td><sf:input path="gold"/></td>
	</tr>
	<tr>
	<td>diamond:</td><td><sf:input path="diamond"/></td>
	</tr>
	<tr>
	<td>strength:</td><td><sf:input path="strength"/></td>
	</tr>
	<tr>
	<td>bone:</td><td><sf:input path="bone"/></td>
	</tr>
	<tr>
	<td>cup:</td><td><sf:input path="cup"/></td>
	</tr>
	<tr>
	<td>cuplevel:</td><td><sf:input path="cuplevel"/></td>
	</tr>
	<td>runcount:</td><td><sf:input path="runcount"/></td>
	</tr>
	<tr>
	<td>challengecount:</td><td><sf:input path="challengecount"/></td>
	</tr>
	<tr>
	<td>getgold:</td><td><sf:input path="getgold"/></td>
	</tr>
	<tr>
	<td>bosscount:</td><td><sf:input path="bosscount"/></td>
	<tr>
	<td colspan="2">
		<input type="submit" value="更新"/>
	</td>
	</tr>
</table>
</sf:form>
</body>
</html>