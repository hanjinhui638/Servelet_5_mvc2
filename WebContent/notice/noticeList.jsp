
<%@page import="com.jh.notice.NoticeDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>	
<%-- <%@ taglib prefix="fnt" uri ="http://java.sun.com/jsp/jstl/fnt"%>
<%@ taglib prefix="sql" uri ="http://java.sun.com.jsp/sql"%> --%>
	
<!-- 
  	MemberDTO memberDTO = (MemberDTO)session.getAttribute("member");  nav 중복*/

// 쿠키 발행 
//쿠키 생성시 생성자에 키와 밸류 입력 	
//Cookie cookie = new Cookie("name","iu"); /* 디폴트 생성자 없음 */
	
//쿠키가 적용되는 Path 설정 : 보통 context path 적용 
//cookie.setPath(request.getContextPath());

//쿠키의 유효시간 
//단위 초단위 
//설정을 하지 않으면 웹브라우저가 종료되면 같이 종료 됨. 
	//cookie.setMaxAge(60*60);

	//쿠키를 클라이언트로 전송 
	//response.addCookie(cookie);// -->
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

<!-- 출력하는 곳 -->
<%-- <%@ include file="../layout/nav.jsp" %> --%>
<c:import url="../layout/nav.jsp"></c:import> <!-- 실행후 가져오기 -->

	<div class="container">
		<h2>Notice List</h2>
		<table class="table">
			<thead>
				<tr>
					<th>NUM</th>
					<th>TITLE</th>
					<th>WRIGHT</th>
					<th>DATE</th>
					<th>HIT</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${requestScope.list}" var = "dto" varStatus="st"> 
					
				<tr>
					<td>${pageScope.dto.num}</td>
					<td><a href = "./noticeSelect.notice?num=${pageScope.dto.num}">${pageScope.dto.title}</a></td>
					<td>${pageScope.dto.writer}</td>
					<td>${pageScope.dto.reg_date}</td>
					<td>${pageScope.dto.hit}: st ${st.last}</td>
				</tr>
				</c:forEach>
			
			</tbody>
		</table>
		
			<div>
				<c:forEach begin="1" end = "10" var = "i" varStatus="st">	<!-- 역으로는 안됨 10 9 8 ...  10포함-->
						${pageScope.i} : ${st.begin} 
				</c:forEach>
		
			</div>
			<!-- session member, memberDTO -->
			<c:if test="${empty sessionScope.member}">
				<a href = "./noticeWrite.notice" >Write</a>
			</c:if>
			
			<c:choose> 
				<c:when test=""></c:when>
				<c:when test=""></c:when>
				<c:otherwise></c:otherwise>
			</c:choose>
		
		
	</div>





	</body>
</html>