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
<h1>Board Detail Page</h1>
<table border="1">
<tr>
	<th>번호</th>
	<td>${bvo.bno }</td>
</tr>
<tr>
	<th>제목</th>
	<td>${bvo.title }</td>
</tr>
<tr>
	<th>작성자</th>
	<td>${bvo.writer }</td>
</tr>
<tr>
	<th>작성일</th>
	<td>${bvo.reg_date }</td>
</tr>
<tr>
	<th>내용</th>
	<td>${bvo.content }</td>
</tr>
</table>
<a href="/brd/modify?bno=${bvo.bno }">수정</a>
<a href="/brd/remove?bno=${bvo.bno }">삭제</a>
<a href="/brd/list">목록</a>
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
 <h1>Board Detail Page</h1>         
  <table class="table">
    <thead>
     <tr>
		<th>번호</th>
		<th>${bvo.bno }</th>
	</tr>
	<tr>
		<td>제목</td>
		<td>${bvo.title }</td>
	</tr>
	<tr>
		<td>작성자</td>
		<td>${bvo.writer }</td>
	</tr>
	<tr>
		<td>작성일</td>
		<td>${bvo.reg_date }</td>
	</tr>
	<tr>
		<td>내용</td>
		<td>${bvo.content }</td>
	</tr>
	    </tbody>
  </table>
<a href="/brd/list"><button type="button" class="btn btn-primary">목록</button></a>
<c:if test="${ses.nick_name eq bvo.writer }">
<a href="/brd/modify?bno=${bvo.bno }"><button type="button" class="btn btn-primary">수정</button></a>
<a href="/brd/remove?bno=${bvo.bno }"><button type="button" class="btn btn-primary">삭제</button></a>
</c:if>
</div>

</body>
</html>