<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean class="question.Alphabet" id="alpha"></jsp:useBean>
<jsp:setProperty property="alpha" name="alpha"/>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		out.print("입력된 알파벳이"+alpha.getAlpha()+"은"+alpha.process());
	%>
</body>
</html>