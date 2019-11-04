<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	String	msg= (String)request.getAttribute("msg"); /* string으로 형변환 */
 	String path = (String)request.getAttribute("path");
 
 
 %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	
	alert("<%= msg %>");
	location.href="<%= path %>";
	
	
	//location.href="";
	//request에 담아서 foward 
	
	
	
</script>
</head>
<body>

</body>
</html>