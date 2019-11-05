<%@page import="com.jh.notice.NoticeDTO"%>
<%@page import="com.jh.util.DBConnector"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.net.ConnectException"%>
<%@page import="com.jh.notice.NoticeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     
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
	NoticeDTO noticeDTO = (NoticeDTO)request.getAttribute("noticeDTO");

%>
 --%>


<div class="container">
  <h2>Notice Select Page</h2>
  <ul class="list-group">
    <li class="list-group-item">Title : ${requestScope.noticeDTO.title} </li>
    <li class="list-group-item">Writer : ${requestScope.noticeDTO.writer} </li>
    <li class="list-group-item">DATE : ${requestScope.noticeDTO.reg_date}</li>
    <li class="list-group-item">HIT : ${requestScope.noticeDTO.hit} </li>
  </ul>
   <p>CONTENTS: ${requestScope.noticeDTO.contents} </p>
	<div id="box">
		<a class = "btn btn-primary" href="./noticeUpdate.notice?num=${requestScope.noticeDTO.num}">Update</a>
		
	
	<%-- <%if(memberDTO !=null && memberDTO.getId().equals(noticeDTO.getWriter())) {%>
 	<a class = "btn btn-danger" href="./noticeDeleteResult.jsp?num=<%= noticeDTO.getNum()%>">삭제</a>
 	<% }%> --%>
 	
	</div>
</div>
</body>
</html>