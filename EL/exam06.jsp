<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="kr.ac.kopo.board.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	
	List<String> names = new ArrayList<String>();
	names.add("홍길동");
	names.add("강길동");
	names.add("고길동");
	
	
	pageContext.setAttribute("names", names);
	
	
	
%>
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	첫 번째 이름 : <%= names.get(0) %><br> <!--list에 접근  -->
	두 번째 이름 : <%= names.get(1) %><br> 
	세 번째 이름 : <%= names.get(2) %><br>
	<%-- 네 번째 이름 : <%= names.get(3) %><br> 당연 에러 발생, 필요한 공간만큼만 만드는 list--%>
	<hr>
	첫 번째 이름 : ${ names[0] }<br>
	두 번째 이름 : ${ names[1] }<br>
	세 번째 이름 : ${ names[2] }<br>
	네 번째 이름 : ${ names[3] }<br> <!--el에서는 empty로 나옴  -->
	
	
</body>
</html>