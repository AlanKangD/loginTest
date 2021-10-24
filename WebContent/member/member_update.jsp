<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>member_update.jsp<hr>
	<jsp:useBean id="dao" class="com.care.root.dao.MemberDAO" />
	<c:set var="mem" value="${dao.memberInfo(param.id) }"/>
	<div class="wrap">
	<jsp:include page="../default/header.jsp"/>
	
	<form action="${contextPath }/member/modift_insert.jsp">
		<input type="text" name="id" value="${mem.id }" readonly> <br>
		<input type="password" name="pwd"> <br>
		<input type="text" name="name" value="${mem.name }"> <br>
		<input type="text" name="addr" value="${mem.addr }"> <br>
		<input type="submit" value="수정">
	</form>

	<jsp:include page="../default/footer.jsp"/>
	</div>
</body>
</html>