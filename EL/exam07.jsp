<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="kr.ac.kopo.board.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
		
	BoardVO board = new BoardVO();
	

	/* // 1. 자바빈즈클래스 + 콜렉션.. 가장 일반적인 방식임! 이거는 확실히 알자
	
	BoardVO board = new BoardVO();
	board.setTitle("성공");
	
	List<BoardVO> boardList = new ArrayList<BoardVO>();
	
	boardList.add(board);
	
	/*아.. 공유 영역에 왜 저장안함??? jsp를 공유 영역에 저장해야 EL로 표현할 수 있지..  */
	
	/* pageContext.setAttribute("boardList", boardList); */ 
	 
	/* // 2. 자바빈즈클래스 + 배열
	BoardVO board = new BoardVO();
	board.setTitle("성공");
	BoardVO[] boardList = new BoardVO[]{board};
	
	
	pageContext.setAttribute("boardList", boardList); */
	
	
	// 3. 맵 객체 + 배열
	
	/* Map<String, String> board = new HashMap<>(); /*맵에서는 .은 키 값을 의미함  */
//	board.put("title","성공"); /* 키 value 삽입   */	
	
//	Map[] boardList = {board};
//	pageContext.setAttribute("boardList", boardList);
	
	
// 4. 맵 객체 + 콜렉션
	
	Map<String, String> board = new HashMap<>();
	board.put("title","성공");
	List<Map<String,String>> boardList = new ArrayList<>();
	boardList.add(board);
	
	pageContext.setAttribute("boardList", boardList);
	
	

%>
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	성공/ 실패 ? : ${boardList[0].title} <br> <!--성공이 나오도록 함  -->
	
</body>
</html>