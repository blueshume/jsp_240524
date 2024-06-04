<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean class="question.Asterisk2" id="as"></jsp:useBean>
<jsp:setProperty property="num" name="as"/>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		out.print("입력된 정수가"+as.getNum()+"는 <br>"+as.process());
	%>
</body>
</html>