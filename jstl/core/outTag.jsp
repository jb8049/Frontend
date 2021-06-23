<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- <c:out var="msg" value="hello!" /> <!--영역 따로 지정안하면  page 공유영역에 저장  --> --%>

	value 속성만 지정 : <c:out value="hello world" /><br>
	msg변수 미설정 : <c:out value="${ msg }" default="msg를 찾을 수 없습니다." /><br> <!--empty제어-->
	
	value 속성에 태그가 들어있는 경우(escapeXml=true)<br>
	
	<c:out value="<h1>Hello</h1>" />
	
	value 속성에 태그가 들어있는 경우(escapeXml=false) <br>
	<c:out value="<h1>Hello</h1>" escapeXml="false" /> <!--h1태그가 먹힌다!  -->
</body>
</html>