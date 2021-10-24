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
<body>
	<jsp:useBean id="dao" class="com.care.root.dao.MemberDAO" />
	<jsp:useBean id="dto" class="com.care.root.dto.MemberDTO" />
	<jsp:setProperty property="*" name="dto"/>
	<c:set var="result" value="${dao.insert(dto) }" />
	
	결과 : ${result }
	
	<c:choose>
		<c:when test="${result == 1 }">
			<script type="text/javascript">
				alert("회원가입이 승인 되셨습니다.")
				location.href="${contextPath}/member/memberView.jsp ";
			</script>
		</c:when>
		<c:otherwise>
			<script type="text/javascript">
				alert("아이디가 있습니다. 다시한번 확인해주세요.")
				location.href="${contextPath}/member/member_input.jsp";
			</script>
		</c:otherwise>
	</c:choose>
	



</body>
</html>