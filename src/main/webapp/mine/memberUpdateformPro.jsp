<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="javax.sql.*" %>
<%@ page import="kr.co.ezen.memberDAO"%>
<%@ page import="kr.co.ezen.memberBean"%>
<html>
<head>
<title>회원 정보 수정 구현</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
%>

	<jsp:useBean id="mBean" class="kr.co.ezen.memberBean">
		<jsp:setProperty property="*" name="mBean"/>
	</jsp:useBean>


<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	memberDAO mdao = new memberDAO();
	String pass = mdao.getPassword(id);
	
	if(pass.equals(password)){
		mdao.updatemember(mBean);
		
		response.sendRedirect("camperList.jsp");
	} else {
%>		
		<script type="text/javascript">
			alert("비밀번호가틀립니다. 확인해 주세요.")
			history.back(); //go(-1);
		</script>
		
<% 		
	}
%>
</body>
</html>