<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body topmargin="0">
	<sf:form method="post" modelAttribute="notice">
		<table height="300" width="1000" align="center" border="1"
			cellpadding="0" cellspacing="0" margin=0 padding=0>
			<tr>
				<th colspan="2" width="200">
					type:<sf:input path="type" />
				</th>
				<th colspan="2" width="300">
					<input type="submit" value="公告查询" />
				</th>
			</tr>
			<tr>
				<td width="10">content</td>
				<td width="10">type</td>
				<td width="10">time</td>
				<td width="10">操作</td>
			</tr>
			<c:forEach items="${list}" var="u">
				<tr>
					<td width="20" align="left">${u.content }</td>
					<td width="10">${u.type }</td>
					<td width="10"><fmt:formatDate value="${u.time}" pattern="yyyy-MM-dd HH:mm:ss"/> </td>
					<td width="30"><a href="${u.type }/update">更新</a></td>
				</tr>
			</c:forEach>
		</table>
	</sf:form>
</body>
</html>