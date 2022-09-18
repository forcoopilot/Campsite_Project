<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="kr.co.ezen.memberDAO"%>
<%@ page import="kr.co.ezen.memberBean"%>
<%@ page import="java.util.Vector"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록 보기 화면</title>
</head>
<body>
<%
	memberDAO mdao = new memberDAO();
	
	Vector<memberBean> vec = mdao.allselectmember();


%>
	<h2 align="center">데이터 출력</h2>
	<table align= "center" border="1" style="width:60%">
		<tr style="height:'40'; align:'center'; background:'pink'">
			<td align="center" width="100">아이디</td>
			<td align="center" width="120">이&nbsp;&nbsp;&nbsp;름</td>
			<td align="center" width="120">전자우편</td>
			<td align="center" width="120">전화번호</td>
			<td align="center" width="120">관심분야</td>
			<td align="center" width="80">직&nbsp;&nbsp;&nbsp;업</td>
			<td align="center" width="50">연령대</td>
			<td align="center" >하고싶은 말</td>
		</tr>

		<%
		for(int i=0; i < vec.size(); i++){
			memberBean mBean = vec.get(i);
		
		%>

		<tr height="40" align="center">
			<td><a href="camperDetail.jsp?id=<%=mBean.getId()%>"><%=mBean.getId() %></a></td>
			<td><%=mBean.getName() %></td>
			<td><%=mBean.getEmail() %></td>
			<td><%=mBean.getTele() %></td>
			<td><%=mBean.getHobby() %></td>
			<td><%=mBean.getJob() %></td>
			<td><%=mBean.getAge() %></td>
			<td><%=mBean.getInfo() %></td>
		</tr>
		<% } %>
	</table>



</body>

</html>