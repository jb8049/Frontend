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
	1값을 가지는 변수 cnt를 공유 영역에 등록(page)<br>
	
	<!--태그를 인식시켜주기 위해 태그 라이브러리 추가, 자기 자신이 시작/종료 태그로 할 수 있음 /(슬래쉬) -->
	<c:set var="cnt" value="1" /> <!--따로 scope를 써주지 않으면 자동으로  page 영역으로 인식-->
	
	공유 영역에 등록된 변수 cnt출력<br>
	cnt : ${ cnt }<br>
	
	cnt변수에 1을 더한 후 cnt값을 출력<br>
	<c:set var="cnt" value="${ cnt + 1 }" scope="request" /> <!--이럴 때 EL을 사용한다!  -->
	
	cnt : ${ cnt }<br>  <!--이렇게 출력하면, page영역에 있는 cnt가 나오겠지  -->
	request cnt : ${ requestScope.cnt }<br>
</body>
</html>

<!--
	jsp 공유 영역 = pageContex, request, session, application
	el 공유 영역 =pageScope, requestScope, sessionScope, applicationScope
	jstl 공유 영역= page, reaquest, session, application
  -->
