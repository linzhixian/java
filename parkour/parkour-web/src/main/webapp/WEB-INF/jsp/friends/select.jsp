<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body topmargin="0">
	<sf:form method="post" modelAttribute="userFriend">
		<table align="center" border="1"
			cellpadding="0" cellspacing="0" width="600" height="400">
			<tr>
				<th colspan="2"><a href=add>Friend添加</a></th>
			</tr>
			<tr>
				<td>UID:</td>
				<td><sf:input path="uid" /></td>
			</tr>
			<tr>
				<td>FUID:</td>
				<td><sf:input path="fuid" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="查询" /></td>
			</tr>
		</table>
	</sf:form>
</body>
</html>