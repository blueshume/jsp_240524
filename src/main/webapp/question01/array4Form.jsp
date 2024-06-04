<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean class="question.Array4" id="array" ></jsp:useBean>
<hr>
<jsp:setProperty property="num" name="array"/>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		out.print("입력된 정수의 갯수는 "+array.getNum()
			+"는 <br>"+array.process(array.getNum()));
	%>
</body>
</html>