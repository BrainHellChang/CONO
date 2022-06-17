<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="item_following_list">
		<table id="following_list" style="width: 100%;">
			<c:forEach items="${followingList }" var="following">
				<tr>
					<td width="100px">${following.get('shop_idx') }</td>
					<td width="300px">${following.get('shop_img') }</td>
					<td width="100px">${following.get('shop_name') }</td>
					<td>${following.get('shop_content') }</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>