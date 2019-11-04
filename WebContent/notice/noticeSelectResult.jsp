<%@page import="com.jh.member.MemberDTO"%>
<%@page import="com.jh.notice.NoticeDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 
 	NoticeDTO noticeDTO = (NoticeDTO)request.getAttribute("dto");
 
 %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
   <script type="text/javascript">
  	<% if(noticeDTO == null){%>
  		alert(noticeDTO);
  		location.href ="./noticeList.jsp";
  	
  	<%}%>
  
  </script>
  <style type="text/css">
  #box{
  		
  		float: right; 
  }
  
  </style>
</head>
<body>
<%@ include file="../layout/nav.jsp" %>
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
	<%if(memberDTO !=null && memberDTO.getId().equals(noticeDTO.getWriter())) {%>
	<a class = "btn btn-primary" href="./noticeUpdate.jsp?num=<%= noticeDTO.getNum()%>">수정</a>
 	<a class = "btn btn-danger" href="./noticeDeleteResult.jsp?num=<%= noticeDTO.getNum()%>">삭제</a>
 	<% }%>
 	
	</div>
</div>
</body>
</html>






<%-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  
  <script type="text/javascript">
  	<% if(noticeDTO == null){%>
  		alert(noticeDTO);
  		location.href ="./noticeList.jsp";
  	
  	<%}%>
  
  </script>
</head>
<body>

<div class="container">
  <div class="jumbotron">
    <h1>Notice Select Page</h1> 
    <ul>    
    <li>TITLE : <%= noticeDTO.getTitle() %></li>
    <li>WRITE : <%= noticeDTO.getWriter() %><li>
    <li>DATE  : <%= noticeDTO.getReg_date() %></li>
    <li>HIT	 : <%= noticeDTO.getHit() %></li>  
    </ul>
    <p>CONTENTS: <%= noticeDTO.getContents() %></p>
  </div>
 	<a class = "btn btn-danger" href="./noticeUpdate.jsp?num=<%= noticeDTO.getNum()%>">수정</a>
 	<a class = "btn btn-primary" href="./noticeDeleteResult.jsp?num=<%= noticeDTO.getNum()%>">삭제</a>
  
</div>

</body>
</html> --%>