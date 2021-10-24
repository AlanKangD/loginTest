<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> member_info.jsp<hr>
<jsp:useBean id="dao" class="com.care.root.dao.MemberDAO" />
<c:set var="mem" value="${dao.memberInfo(param.id) }" />


파라미터로 넘겨받은 값 : ${param.id }

<jsp:include page="../default/header.jsp"/>

아이디 : ${mem.id } <br>
비밀번호 : ${mem.pwd } <br>
이름 : ${mem.name } <br>
주소 : ${mem.addr }<br>

<button type="button" onclick="location='member_update.jsp?id=${mem.id}'">수정</button>

<jsp:include page="../default/footer.jsp"/>

</body>
</html>