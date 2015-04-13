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
	<sf:form method="post" modelAttribute="userInfo">
		<table height="300" width="800" align="center" border="1"
			cellpadding="0" cellspacing="0" margin=0 padding=0>
			<tr>
				<th colspan="5" >
					<a href=add>用户添加</a>
				</th>
			</tr>
			<tr>
				<td>
				ID:
				</td>
				<td>
				<sf:input path="id" />
				</td>
				<td>
				Account:
				</td>
				<td>
				<sf:input path="account" />
				</td>
				<td colspan="3" >
				<input type="submit" value="用户查询" />
				</td>
			</tr>
			<tr>
				<td>用户ID</td>
				<td>用户账号</td>
				<td>用户密码</td>
				<td>用户昵称</td>
				<td>操作</td>
			</tr>
			<c:forEach items="${list}" var="u">
				<tr>
					<td style="width: 800; height: 10">${u.id }</td>
					<td>${u.account }</td>
					<td>${u.password }</td>
					<td>${u.rolename }</td>
					<td><a href="${u.id }/update">更新</a>&nbsp;<a
						href="${u.id }/delete">删除</a></td>
				</tr>
			</c:forEach>
		</table>
	</sf:form>
</body>
</html>