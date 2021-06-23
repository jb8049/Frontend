<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 
 

<%
	pageContext.setAttribute("msg", "pageContext 영역에 등록함");

	String message = (String) pageContext.getAttribute("msg");
	
	request.setAttribute("id", "hong");
	
	request.setAttribute("msg", "request영역에 객체 등록");

%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	empty msg : ${empty msg }<br>
	
	el msg : ${ msg }<br>
	page msg : ${pageScope.msg}<br>
	request msg : ${requestScope.msg}<br>
	
	id : ${ pageScope.id }<br>
</body>
</html>