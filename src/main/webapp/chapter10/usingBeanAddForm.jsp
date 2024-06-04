<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean class="magic.MemberBean" id="memBean"></jsp:useBean>
<!-- property="id":넘어오는 name="id"를 받아주고, jsp:setProperty 일때 setter로 저장 -->
<%-- <jsp:setProperty property="id" name="memBean" /> --%>
<%-- <jsp:setProperty value="azaz" property="id" name="memBean"/>//value값을 넣어버리면 뒤의 값 무시 --%>
<%-- <jsp:setProperty property="name" name="memBean"/> --%>
<jsp:setProperty property="*" name="memBean"/> <%-- 항목전부 불러옴//property="*" :한번에 매핑적용하려면 넘어오는 name과  프로퍼티가 동일해야함 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	당신이 입력한 정보입니다.
	<hr>
	아 이 디:
	<!-- 	getter로 동작 -->
	<jsp:getProperty property="id" name="memBean"/>
	<br>이름:
	<jsp:getProperty property="name" name="memBean"/>
	<br>회원구분:
	<%
		if(memBean.getMclass()==1){
			out.print("일반회원");
		}else{
			out.print("교수님");
		}
	%>
	<br>전화번호:
	<jsp:getProperty property="phone1" name="memBean" />-
	<jsp:getProperty property="phone2" name="memBean" />-
	<jsp:getProperty property="phone3" name="memBean" />
	
</body>
</html>