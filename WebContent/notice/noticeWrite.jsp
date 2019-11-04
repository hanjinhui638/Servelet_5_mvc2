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

<div class="container">
  <h2>Notice Write</h2>
  <form action="./noticeWrite.notice" method="post">
    <div class="form-group">
      <label for="title">TITLE:</label>
      <input type="text" class="form-control" id="title" placeholder="Enter title" name="title"> <!-- name은 parameter DBcloumn과 동일하게 -->
    </div>
    
    <div class="form-group">
      <label for="writer">WRITER:</label>
      <input type="text" class="form-control" id="writer" placeholder="Enter writer" name="writer" >
    </div>
      <label for="contents">CONTENTS:</label>
    <div class="form-group">    
      <textarea rows="10" cols="160" name = "contents"></textarea>
    </div>
        
    <button type="submit" class="btn btn-default">Submit</button>
  </form>
</div>

</body>
</html>
