<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! /* connection import 집어넣어야 오류 안남*/
	Connection conn = null;
	/* java.sql.Statement 집어넣어야 오류 안남*/
// 	쿼리문 이용을 위한 인터페이스
	Statement stmt = null;
	/*"java.sql.ResultSet*/
// 	쿼리 결과를 받기 위한 인터페이스
	ResultSet rs = null;
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
// 			데이터베이스 아이디
	String user = "scott";
// 			데이터베이스 비밀번호
	String password = "tiger";
//  		mysql 데이터
// 	String sql="select*from member2";
// 	위아래 데이터 둘다 같음
	String oracle="select*from member2";
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table width="400" border="1">
		<tr>
			<td>아이디</td>
			<td>이름</td>
			<td>등급</td>
			<td>전화번호</td>
		</tr>
<!-- 		쿼리의 결과를 가져오기 위해 사용 -->
<!-- 오류를 염려해 try{}catch{}finally{}사용 -->
		<% 
			try{
				Class.forName("oracle.jdbc.driver.OracleDriver");
//	 			getConnection 메소드로 데이터 베이스 정보를 통해서 db연결
				conn = DriverManager.getConnection(url, user, password);
// 				createStatement() 메소드 호출하여 쿼리 이용하는 statement 객체생성
				stmt = conn.createStatement();
// 				executeQuery 메소드로 select 쿼리 실행
// 				쿼리 결과는 resultset으로 닫는다.
				rs = stmt.executeQuery(oracle);
				
// 				next() : 쿼리결과가 있으면 참
				while(rs.next()){
					%>
					<tr>
<!-- 						getString 숫자타입의 컬럼값 받을때 사용 -->
						<td><%= rs.getString("id") %> </td>
						<td><%= rs.getString("name") %> </td>
<!-- 						getInt 숫자타입의 컬럼값 받을때 사용 -->
						<td>
						<%
							int n_class = rs.getInt("class");
							if(n_class==1){
								out.print("일반회원");
							}else{
								out.print("교수님");
							}
						%> 
						</td>
						<td><%= rs.getString("tel") %> </td>
					</tr>
					<%
				}
				out.print("데이터 베이스 연결이 성공했습니다.");
			}catch(SQLException ex){
				out.print("데이터 베이스 연결이 실패했습니다..");
				out.print(ex.getMessage());
			}finally{
				try{
					if(rs !=null){conn.close();}
					if(stmt !=null){conn.close();}					
					if(conn !=null){conn.close();}					
				}	catch(SQLException se){
						se.printStackTrace();
				}
			}
		%>
	</table>
</body>
</html>