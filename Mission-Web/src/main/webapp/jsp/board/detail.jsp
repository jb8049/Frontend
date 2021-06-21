<%@page import="java.sql.ResultSet"%>
<%@page import="com.sun.net.httpserver.Authenticator.Result"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="kr.ac.kopo.util.ConnectionFactory"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!--
  http://localhost:9999/Mission-Web/jsp/board/detail.jsp?no=2
-->

<!-- 
1. 내가 조회하려고하는 게시물 번호를 추출, request
2. 추출된 게시물 번호를 통해서 DB에가서 추출한 번호에 해당하는 값을 가져와야함 
3. 조회된 게시물 데이터를 화면에 출력
-->

<%
	//1. 게시물 번호 추출, getParameter 리턴값은 int형
	int boardNo = Integer.parseInt(request.getParameter("no"));

	//2. DB t_board 테이블에서 해당 게시물 조회
	Connection conn = new ConnectionFactory().getConnection();
	StringBuilder sql = new StringBuilder();
	
	sql.append(" select no,title, writer, content, view_cnt ");
	sql.append("  , to_char(reg_date, 'yyyy-mm-dd') as reg_date ");
	sql.append(" from t_board ");
	sql.append(" where no = ? ");
	
	PreparedStatement pstmt = conn.prepareStatement(sql.toString());
	
	pstmt.setInt(1, boardNo);
	
	ResultSet rs = pstmt.executeQuery(); /*rs 최소 1개 최대 1개 행임 */
	
	rs.next(); /*이렇게 하면 rs가 추출한 하나의 행을 가지고 있음*/
	
	
	
%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<hr width="80%">
		<h2>게시판 상세</h2>
		<hr width="80%">
		
		<br>
		<table border ="1" style="width: 80%">
			<tr>
				<th width="25%">번호</th> 
				<td><%= rs.getInt("no") %></td>  <!-- no 컬럼이 가지고 있는 값을 넣자  -->
			</tr>
			<tr>
				<th width="25%">제목</th> 
				<td><%= rs.getString("title") %></td>
			</tr>
			<tr>
				<th width="25%">작성자</th> 
				<td><%= rs.getString("writer") %></td>
			</tr>
			<tr>
				<th width="25%">내용</th> 
				<td><%= rs.getString("content") %></td>
			</tr>
			<tr>
				<th width="25%">조회수</th> 
				<td><%= rs.getInt("view_cnt") %></td>
			</tr>
			<tr>
				<th width="25%">등록일</th> 
				<td><%= rs.getString("reg_date") %></td>
			</tr>
		
		</table>
		
	</div>
</body>
</html>