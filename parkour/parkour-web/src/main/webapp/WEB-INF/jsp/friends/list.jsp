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
<body margin:0>
<sf:form method="post" modelAttribute="userFriend">
	<div>
		<table height="800" width="600" align="center" border="1"
			cellpadding="0" cellspacing="0">
			<tr>
				<th width="10" height="10" colspan="3">
					<a href=list>Friend查询</a>
				</th>
			</tr>
			<tr>
				<td width="10" height="10">UID</td>
				<td width="10" height="10">fuid</td>
				<td width="10" height="10">操作</td>
			</tr>
			<c:forEach items="${list}" var="u">
				<tr>
					<td width="10" height="10">${u.uid }</td>
					<td width="10" height="10">${u.fuid }</td>
					<td width="10" height="10"> <a href="${u.uid },${u.fuid }/delete">删除</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	</sf:form>
</body>
</html>