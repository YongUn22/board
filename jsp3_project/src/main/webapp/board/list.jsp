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
<h1>Board List Page</h1>
<table border="1">
<tr>
	<th>번호</th>
	<th>제목</th>
	<th>작성자</th>
	<th>날짜</th>
</tr>
<c:forEach items="${list }" var="bvo">
<tr>
	<td>${bvo.bno }</td>
	<td><a href="/brd/detail?bno=${bvo.bno }">${bvo.title }</a></td>
	<td>${bvo.writer }</td>
	<td>${bvo.reg_date }</td>
</tr>
</c:forEach>
</table>
<a href="/">메인</a>
</body>
</html> --%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Board</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="container">
  <h1>Board List Page</h1>
  <table class="table table-hover">
    <thead>
      <tr>
        <th>번호</th>
        <th>제목</th>
        <th>작성자</th>
        <th>작성일</th>
      </tr>
    </thead>
    <tbody>
     <c:forEach items="${list }" var="bvo">
		<tr>
			<td>${bvo.bno }</td>
			<td><a href="/brd/detail?bno=${bvo.bno }">${bvo.title }</a></td>
			<td>${bvo.writer }</td>
			<td>${bvo.reg_date }</td>
		</tr>
	</c:forEach>
    </tbody>
  </table>
<a href="/"><button type="button" class="btn btn-primary">메인</button></a>
</div>
</body>
</html>
