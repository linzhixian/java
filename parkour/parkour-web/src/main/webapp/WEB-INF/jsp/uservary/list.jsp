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
	<sf:form method="post" modelAttribute="userVary">
		<table height="300" width="1000" align="center" border="1"
			cellpadding="0" cellspacing="0" margin=0 padding=0>
			<tr>
				<th colspan="4" width="100">
					UID:
				</th>
				<th colspan="5" width="200">
					<sf:input path="uid" />
				</th>
				<th colspan="5" width="300">
					<input type="submit" value="用户查询" />
				</th>
			</tr>
			<tr>
				<td width="10">uid</td>
				<td width="10">exp</td>
				<td width="10">age</td>
				<td width="10">gold</td>
				<td width="10">diamond</td>
				<td width="10">strength</td>
				<td width="10">bone</td>
				<td width="10">cup</td>
				<td width="10">cuplevel</td>
				<td width="10">runcount</td>
				<td width="10">challengecount</td>
				<td width="10">getgold</td>
				<td width="10">bosscount</td>
				<td width="10">操作</td>
			</tr>
			<c:forEach items="${list}" var="u">
				<tr>
					<td width="20">${u.uid }</td>
					<td width="10">${u.exp }</td>
					<td width="10">${u.age }</td>
					<td width="10">${u.gold }</td>
					<td width="10">${u.diamond }</td>
					<td width="10">${u.strength }</td>
					<td width="10">${u.bone }</td>
					<td width="10">${u.cup }</td>
					<td width="10">${u.cuplevel }</td>
					<td width="10">${u.runcount }</td>
					<td width="10">${u.challengecount }</td>
					<td width="10">${u.getgold }</td>
					<td width="10">${u.bosscount }</td>
					<td width="30"><a href="${u.uid }/update">更新</a></td>
				</tr>
			</c:forEach>
		</table>
	</sf:form>
</body>
</html>