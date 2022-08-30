<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Board Modify Page</h1>
<form action="/brd/update" method="post">
번호 : <input type="text" name="bno" value="${bvo.bno }" readonly><br>
제목 : <input type="text" name="title" value="${bvo.title }"><br>
작성자 : <input type="text" name="writer" value="${bvo.writer }" readonly><br>
내용 : <textarea rows="3" cols="30" name="content">${bvo.content }</textarea><br>
<button type="submit">수정</button>
</form>
</body>
</html> --%>
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
 <h1>Board Modify Page</h1>
  <form action="/brd/update" method="post">
    <div class="form-group">
      <label for="usr">번호:</label>
      <input type="text" class="form-control" name="bno" value="${bvo.bno }" readonly>
    </div>
    <div class="form-group">
      <label for="pwd">제목:</label>
      <input type="text" class="form-control" name="title" value="${bvo.title }">
    </div>
    <div class="form-group">
      <label for="pwd">작성자:</label>
      <input type="text" class="form-control" name="writer" value="${bvo.writer }" readonly><br>
    </div>
    <div class="form-group">
      <label for="comment">내용:</label>
      <textarea class="form-control" rows="5" name="content">${bvo.content }</textarea>
    </div>
    <button type="submit" class="btn btn-primary">수정</button>
  </form>
</div>

</body>
</html>