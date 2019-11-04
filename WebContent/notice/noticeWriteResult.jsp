
<%@page import="com.jh.util.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.net.ConnectException"%>
<%@page import="com.jh.notice.NoticeDAO"%>
<%@page import="com.jh.notice.NoticeDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <!--  프론트 백엔드 연결 parameter를 DAO로/  데이터가 넘어왔는지 network로 Test 1 input에 이름을 안 붙였을때 (name) 2.getParameter(오타) -->
   <!-- parameter DAO return 연결  -->
 <%
 	request.setCharacterEncoding("UTF-8");
 	response.setCharacterEncoding("UTF-8");
 	NoticeDTO noticeDTO = new NoticeDTO();
 	
 	noticeDTO.setTitle(request.getParameter("title"));
 	noticeDTO.setWriter(request.getParameter("writer"));
 	noticeDTO.setContents(request.getParameter("contents"));
 	
 	NoticeDAO noticeDAO = new NoticeDAO();
 	Connection con = DBConnector.getConnection();
 	
 	int result = noticeDAO.noticeWrite(con, noticeDTO);
 	
 	con.close();
 	
 	/* int result=0; 실패시 test*/
 			
 	if(result>0){
 		response.sendRedirect("./noticeList.jsp");
 	}else{
 		
 		request.setAttribute("msg", "Write Fail");
 		request.setAttribute("path", "./noticeList.jsp");
 		RequestDispatcher view = request.getRequestDispatcher("../common/common_result.jsp");
 		view.forward(request, response);
 		
 	}		
 
 
 %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>