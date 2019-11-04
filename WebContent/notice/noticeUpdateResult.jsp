<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.jh.point.PointDAO"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.jh.util.DBConnector"%>
<%@page import="com.jh.notice.NoticeDAO"%>
<%@page import="com.jh.notice.NoticeDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");

	NoticeDTO noticeDTO = new NoticeDTO();
	
	noticeDTO.setNum(Integer.parseInt(request.getParameter("num")));
	noticeDTO.setTitle(request.getParameter("title"));
	noticeDTO.setContents(request.getParameter("contents"));
	
	
	NoticeDAO noticeDAO = new NoticeDAO();
	Connection con = DBConnector.getConnection();
	int result = noticeDAO.noticeUpdate(con, noticeDTO);
	
	con.close();
	
	String message = "Update Fail List";
	if(result>0){
		message = "List";
	}
	
	request.setAttribute("msg", message);
	request.setAttribute("path", "./noticeList.jsp");
	
	RequestDispatcher view = request.getRequestDispatcher("../common/common_result.jsp");
	view.forward(request, response);
	
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