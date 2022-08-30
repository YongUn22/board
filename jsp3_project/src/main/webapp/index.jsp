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
<h1>Index Page</h1>
<ul>
	<c:if test="${ses.email ne '' && ses.email ne null }">
		<li><a href="/brd/register">Board Register</a></li>
	</c:if>
	<li><a href="/brd/list">Board List</a></li>
	<li><a href="/mem/login">Login</a></li>
	<li><a href="/mem/join">SignUp</a></li>
	<li><a href="/mem/list">Member List</a></li>
	<c:if test="${ses.email ne '' && ses.email ne null}">
		<li><a href="/mem/logout?email=${ses.email }">logout</a></li>
		
		
	</c:if>
</ul>
<c:if test="${ses.email ne '' && ses.email ne null }">
	${ses.nick_name }님 환영합니다.<br>
	가입 일자 : ${ses.reg_at }<br>
	마지막 접속 : ${ses.last_login }
</c:if>
<script>
	const msg_login = '<c:out value="${msg_login}"/>';
	if(msg_login === '0'){		
		alert('로그인 실패');
	}
</script>
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
<h1>Index Page</h1>
  <div class="list-group">
  	<c:if test="${ses.email ne '' && ses.email ne null }">
		<a href="/brd/register" class="list-group-item list-group-item-action">Board Register</a>
	</c:if>
    <a href="/brd/list" class="list-group-item list-group-item-action">Board List</a>
    <c:if test="${ses.email eq null }">
    <a href="/mem/login" class="list-group-item list-group-item-action">Login</a>
    <a href="/mem/join" class="list-group-item list-group-item-action">Sign Up</a>
    </c:if>
    <a href="/mem/list" class="list-group-item list-group-item-action">Member List</a>
    <c:if test="${ses.email ne '' && ses.email ne null}">
    	<a href="/mem/logout?email=${ses.email }" class="list-group-item list-group-item-action">logout</a>
	</c:if>
  </div>
</div>
	<br>
	<br>
<c:if test="${ses.email ne '' && ses.email ne null }">
<div class="container">
  <ul class="list-group">
    <li class="list-group-item">${ses.nick_name }님 환영합니다.</li>
    <li class="list-group-item">가입 일자 : ${ses.reg_at }</li>
    <li class="list-group-item">마지막 접속 : ${ses.last_login }</li>
    <br>
  </ul>
</div>
</c:if>
<script>
	const msg_login = '<c:out value="${msg_login}"/>';
	if(msg_login === '0'){		
		alert('로그인 실패');
	}
</script>
</body>
</html>