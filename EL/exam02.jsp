<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
		http://locallhost:9999/Lecture-Web/jsp/EL/exam02.jsp?id=aaa&name=bbb 요청했을 때의 id,name의 값을 추출
		http://locallhost:9999/Lecture-Web/jsp/EL/exam02.jsp?id=aaa&name=bbb&hobby=music&hobby=movie
	 --%>
	 
	 <%
	 	String id = request.getParameter("id");
	 	String[] hobbies = request.getParameterValues("hobby");
	 
	 	if(hobbies == null){  /* 아무값도 입력하지 않으면, 500에러가 발생했는데.. 아래 hobbies[0] 표현식, null을 가르키고 있어서 에러발생 */
	 						  /* 반면에 el은 이렇게 할 필요가 없음 */
	 		hobbies = new String[]{"파라미터 없음"};
	 	}
	 
	 %>
	
	id : <%= id %><br>
	id : <%= request.getParameter("id") %><br>
	
	id : ${ param.id }<br>
	
	name : <%= request.getParameter("name") %><br>
	el name = ${param.name }<br>  <!-- el은.. 인자를 전달안해주면 null이 아니라, 아무것도 안나옴(empty), 이런면에서 el이 좋은것이다..  -->
	
	hobby : <%= hobbies[0] %><br>  <!-- 500에러를 발생시킴, 위에서 null처리함 -->
	
	el hobby_first = ${ paramValues.hobby[0]}<br>
	el hobby_second = ${ paramValues.hobby[1]}<br>
</body>
</html>