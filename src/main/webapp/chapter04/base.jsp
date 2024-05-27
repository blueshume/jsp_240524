<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%! String name="홍길동"; %>
	<% String addr="서울시 송파구 석촌동"; %>
	<br>
<!-- 	출력 2종류 -->
	이름 : 
	<%= name %>
	<br>
	주소 :
	<% out.print(addr); %>
	<br>
<%-- 	<jsp:include page="age.jsp"></jsp:include> age.jsp의 내용을 포함시킴 가져옴--%>
	<jsp:include page="age.jsp"></jsp:include>
</body>
</html>