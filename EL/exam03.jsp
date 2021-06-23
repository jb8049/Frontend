<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	//	객체등록 : 공유영역명.setAttribute(이름, 값) 어떤 값을 어떤 이름으로 등록
	//  객체조회 : 공유영역명.getAttribute(이름)
	//	공유영역 4가지 : pageContext, rquest, session, application
	
	
		pageContext.setAttribute("msg", "pageContext영역에 등록");
	
		String message = (String) pageContext.getAttribute("msg");  /*객체를 조회한 값이 object임  */
	
	// request 영역에 id라는 이름으로 hong값을 등록
		request.setAttribute("id","hong");
		
		request.setAttribute("msg","request영역에 객체 등록");
		
	%>
	empty msg : ${empty msg}<br> <!--등록된 객체가 비어있는지 확인  -->
	
	msg : <%= message %><br>
	msg : <%= pageContext.getAttribute("msg") %><br>
	
	
	el msg : ${ msg }<br>
	
	
	<!-- el에서의 공유영역은 pageScope, requestScope, sessionScope, applicationScope  -->
	<!-- 현재 msg가 두 군데 있음, 내가 원하는 위치에 있는 msg에 접근 -->
	
	request msg : ${requestScope.msg}<br>
		
	id : ${ id }<br>
	
</body>
</html>