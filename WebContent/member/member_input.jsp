<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%
	request.setCharacterEncoding("utf-8");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:include page="../default/header.jsp"/>
	<div class="wrap">
	<h3>회원가입페이지 입니다.</h3>
	<form action="register.jsp">
		<input type="text" name="id" placeholder="input_id"> <br>
		<input type="password" name="pwd" placeholder="input_pw"> <br>
		<input type="text" name="name" placeholder="input_name"> <br>
		<input type="text" name="addr" placeholder="input_addr"> <br>
		<input type="submit" value="register">
	</form>
	</div>

<jsp:include page="../default/footer.jsp"/>


</body>
</html>