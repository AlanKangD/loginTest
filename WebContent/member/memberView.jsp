<%@page import="com.care.root.dto.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.care.root.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> memberView.jsp<hr>
<div class="wrap">
<jsp:useBean id="dao" class="com.care.root.dao.MemberDAO" />
<jsp:useBean id="dto" class="com.care.root.dto.MemberDTO" />
<c:set var="list" value="${dao.selectAll() }" />

<jsp:include page="../default/header.jsp"/>
<h1>회원 전체 목록을 보여 줍니다.</h1>	
	<table border="1">
		<tr>
			<th>아이디</th> <th>비밀번호</th> <th>이름</th> <th>주소</th>
		</tr>
		<c:forEach var="d" items="${list }">
			<tr>
				<td>
				<a href="${contextPath }/member/member_info.jsp?id=${d.id}">${d.id }</a> <!-- 여기서 찾고 싶은 아이디에 a태그를 걸어서 주소값 뒤에 파라미터 값을 담아서 넘겨줍니다. -->
				</td> <td>${d.pwd }</td> <td>${d.name }</td> <td>${d.addr }</td>
			</tr>
		</c:forEach>
		<tr>
			<th colspan="4">
				<a href="${contextPath }/member/member_input.jsp">회원가입</a>
			</th>
		</tr>
	</table>

<jsp:include page="../default/footer.jsp" />
</div>
	
	<%--
		MemberDAO d = new MemberDAO();
		ArrayList<MemberDTO> list = d.selectAll();
		
		for(MemberDTO a : list) {
			out.print("아이디 : " + a.getId()); 
			out.print("비밀번호 : " + a.getPwd());
			out.print("이름 : " + a.getName());
			out.print("주소 : " + a.getAddr());
		}
	--%>




</body>
</html>