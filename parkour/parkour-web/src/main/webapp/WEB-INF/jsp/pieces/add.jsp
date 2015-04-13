<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Piece户添加</title>
</head>
<body>
<sf:form method="post" modelAttribute="userPiece">
<table width="700" align="center" border="1">

	<%-- <sf:hidden path="mark" /> --%>
	<td>uid:</td><td><sf:input path="uid"/></td> 
	</tr>
	<tr>
	<td>id:</td><td><sf:input path="id"/></td>  
	</tr>
	<tr>
	<td>piece:</td><td><sf:input path="piece"/></td>
	</tr>
	<tr>
	<td colspan="2">
		<input type="submit" value="添加"/>
	</td>
	</tr>
</table>
</sf:form>
</body>
</html>