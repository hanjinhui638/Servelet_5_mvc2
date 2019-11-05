<%@page import="com.jh.util.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.jh.notice.NoticeDAO"%>
<%@page import="com.jh.notice.NoticeDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--  <%
 	request.setCharacterEncoding("UTF-8");
 	response.setCharacterEncoding("UTF-8");
 	
 	int num = Integer.parseInt(request.getParameter("num"));
 	
 	NoticeDAO noticeDAO = new NoticeDAO();
 	
 	Connection con = DBConnector.getConnection();
 	
 	NoticeDTO noticeDTO = noticeDAO.noticeSelect(con, num);
 	
 	con.close();
 
 
 %>    --%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<%-- <%@ include file="../layout/nav.jsp" %> --%>
<%-- <%
	if(memberDTO == null && !memberDTO.getId().equals(noticeDTO.getWriter())){
		request.setAttribute("msg", "권한없음");
		request.setAttribute("path", "../index.jsp");
		RequestDispatcher view = request.getRequestDispatcher("../common/common_result.jsp");
		view.forward(request, response);
	}

%> --%>

<div class="container">
  <h2>Update Insert Page</h2>
  <form action="./noticeUpdate.notice" method="post">
    <div class="form-group">
      <input type="hidden" name="num" value = "${requestScope.noticeDTO.num}">
    </div>
    <div class="form-group">
    
      <label for="title">TITLE:</label>
      <input type="text" class="form-control" id="title"  name="title"
      value = "${requestScope.noticeDTO.title}">
    </div>
    
      <label for="contents">CONTENTS:</label>
    <div class="form-group">
    
      <textarea rows="10" cols="160" name="contents">${requestScope.noticeDTO.contents}</textarea>
    </div>
    
    <button type="submit" class="btn btn-default">Submit</button>
  </form>
</div>

</body>
</html>