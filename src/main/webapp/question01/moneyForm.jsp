<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean class="question.Money" id="num"></jsp:useBean>
<jsp:setProperty property="num" name="num"/>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		out.print("입력된 금액이"+num.getNum()+"는<br>"
		+num.process());
	%>
</body>
</html>