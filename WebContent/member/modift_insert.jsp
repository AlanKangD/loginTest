<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<body>modify_insert.jsp<hr>

	<jsp:useBean id="dao" class="com.care.root.dao.MemberDAO" />
	<jsp:useBean id="dto" class="com.care.root.dto.MemberDTO" />
	<jsp:setProperty property="*" name="dto"/>
	${dao.modify(dto) }
	
	<script type="text/javascript">
		alert("회원수정을 완료했습니다.")
		location.href="${contextPath}/member/member_info.jsp?id='${dto.id}'";
	</script>
	
	
	
	


</body>
</html>