<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean class="question.TwoArray" id="arr"></jsp:useBean>
<jsp:setProperty property="num" name="arr"/>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		out.print(arr.getNum()+"*"+arr.getNum()+"는<br>"
							  +arr.process()
								);
	%>
</body>
</html>