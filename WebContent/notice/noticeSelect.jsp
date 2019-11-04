<%@page import="com.jh.notice.NoticeDTO"%>
<%@page import="com.jh.util.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.net.ConnectException"%>
<%@page import="com.jh.notice.NoticeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 <% 
 
 	NoticeDTO noticeDTO = (NoticeDTO)request.getAttribute("noticeDTO");
 
 %>   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- <%@ include file="../layout/nav.jsp" %> --%>
<div class="container">
  <h2>Notice Select Page</h2>
  <ul class="list-group">
    <li class="list-group-item">Title : <%= noticeDTO.getTitle() %></li>
    <li class="list-group-item">Writer : <%= noticeDTO.getWriter() %></li>
    <li class="list-group-item">DATE : <%= noticeDTO.getReg_date() %></li>
    <li class="list-group-item">HIT : <%= noticeDTO.getHit() %></li>
  </ul>
   <p>CONTENTS: <%= noticeDTO.getContents() %></p>
	<div id="box">
	
	<%-- <%if(memberDTO !=null && memberDTO.getId().equals(noticeDTO.getWriter())) {%>
	<a class = "btn btn-primary" href="./noticeUpdate.jsp?num=<%= noticeDTO.getNum()%>">수정</a>
 	<a class = "btn btn-danger" href="./noticeDeleteResult.jsp?num=<%= noticeDTO.getNum()%>">삭제</a>
 	<% }%> --%>
 	
	</div>
</div>
</body>
</html>

	

</body>
</html>