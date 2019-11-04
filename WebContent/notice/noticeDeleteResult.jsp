<%@page import="com.jh.notice.NoticeDAO"%>
<%@page import="com.jh.util.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.jh.point.PointDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	request.setCharacterEncoding("UTF-8");
 	response.setCharacterEncoding("UTF-8");
 	
 	int num =Integer.parseInt(request.getParameter("num"));
 	
 	NoticeDAO noticeDAO = new NoticeDAO();
 	Connection con = DBConnector.getConnection();
 	num = noticeDAO.noticeDelete(con, num);
 	
 	con.close();
 
 	String message = "Delete Fail List";
 	if(num>0){
 		message = "Delete Success List";
 		request.setAttribute("msg", message);
 		request.setAttribute("path", "./noticeList.jsp");
 		RequestDispatcher view = request.getRequestDispatcher("../common/common_result.jsp");
 		view.forward(request, response);
 		
 	}else{
 		response.sendRedirect("./noticeList.jsp");
 		
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