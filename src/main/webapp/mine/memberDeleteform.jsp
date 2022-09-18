<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="kr.co.ezen.memberDAO"%>
<%@ page import="kr.co.ezen.memberBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정 화면 구현</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	%>

	<jsp:useBean id="mBean" class="kr.co.ezen.memberBean">
		<jsp:setProperty property="*" name="mBean" />
	</jsp:useBean>


	<%
	String id = request.getParameter("id");

	memberDAO mdao = new memberDAO();

	mdao.deletemember(id);
%>
	<script type="text/javascript">
		alert("삭제되었습니다.")
	</script>
<% 	
	response.sendRedirect("camperList.jsp");
%>	

</body>
</html>