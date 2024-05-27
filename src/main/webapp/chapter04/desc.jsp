<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h3>[선언부(declaration)에 대한 예제]</h3>
	</center>
	<hr>
	<%!
		String str="안녕하세요!";
		int a=5,b=-5;
// 		abs 절대값
		public int abs(int n){
			if(n<0){
				n=-n;
			}
			return n;
		}
	%>
	<%
		out.print(str+"<br>");
		out.print(a+"의 절대값은 =>"+abs(a)+"<br>");
		out.print(b+"의 절대값은 =>"+abs(a)+"<br>");
		
	%>
</body>
</html>