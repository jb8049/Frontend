<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="kr.ac.kopo.board.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	
	String[] names = {"홍길동","강길동","고길동","윤길동"};

	pageContext.setAttribute("names", names) ; /*namse 객체를 "names"라는 이름으로 저장  */
	
	
	
	
%>
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	첫 번째 이름 : <%= names[0] %><br>
	두 번째 이름 : <%= names[1] %><br>
	세 번째 이름 : <%= names[2] %><br>
	네 번째 이름 : <%= names[3] %><br>
	<%-- 다섯 번째 이름 : <%= names[4] %><br> indexoutfo bounds 에러 발생--%>
	
	<hr> 
	첫 번째 이름 : ${ names[0] }<br>
	두 번째 이름 : ${ names[1] }<br>
	세 번째 이름 : ${ names[2] }<br>
	네 번째 이름 : ${ names[3] }<br>
	다섯 번째 이름 : ${ names[4] }<br> <!-- EL은 유연하게 움직일 수 있다..!  -->
	
	
</body>
</html>