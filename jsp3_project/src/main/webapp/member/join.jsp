<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Join Page</h1>
<form action="/mem/register" method="post">
	Email : <input type="email" name="email" placeholder="abc@example.com"><br>
	nick_name : <input type="text" name="nick_name" placeholder="nick_name"><br>
	Password : <input type="password" name="pwd">
	<button type="submit">Sign Up</button>
</form>
</body>
</html> -->
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="container">
  <h1>Join Page</h1>
  <form action="/mem/register" method="post">
    <div class="form-group">
      <label for="usr">Email:</label>
      <input type="email" class="form-control" name="email" placeholder="abc@example.com">
    </div>
    
    <div class="form-group">
      <label for="use">Nick_name:</label>
      <input type="text" class="form-control" name="nick_name" placeholder="nick_name">
    </div>
    
    <div class="form-group">
      <label for="use">Password:</label>
      <input type="password" class="form-control" name="pwd">
    </div>
    <button type="submit" class="btn btn-primary">등록</button>
  </form>
</div>

</body>
</html>
