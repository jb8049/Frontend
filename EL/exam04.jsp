<%@page import="kr.ac.kopo.board.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	BoardVO board = new BoardVO();
	board.setNo(1);
	board.setTitle("test");
	
	
	//공유영역 pageContext영역에 등록 => boardVO, 값: 생성된 BoardVO 객체
	
	pageContext.setAttribute("boardVO", board);   /*board는 BoardVO의 인스턴스 객체임  */
			
			
%>
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	no : <%= board.getNo()  %><br>
	no : <%= ((BoardVO)pageContext.getAttribute("boardVO")).getNo() %><br> <!--get의 리턴타입이 object형임!! 형변환 필요  -->
	
	
	title : <%= board.getTitle() %><br>
	title : <%= ((BoardVO)pageContext.getAttribute("boardVO")).getTitle() %><br>
	
	el no : ${ boardVO.no }<br>
	el title : ${ boardVO.title }<br>  <!--왜 getter 메소드를 호출할 수 있을까? => 저 점이 getter메소드를 의미한다! 이건 약속이다-->
	
	el title : ${ boardVO['title'] } <!-- 배열하고 리스트일 때 이런식으로 많이 쓰지만, 자바빈스 객체도 가능함 -->
	
	
	<%-- el aaa : ${ boardVO.aaa} --%>  <!--자바빈즈에서는.. 500에러뜬다.. empty가 아니고!, .aaa는 결국 get메소드를 호출하는거니까  -->

	

</body>
</html>