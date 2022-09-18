<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="kr.co.ezen.memberDAO"%>
<%@ page import="kr.co.ezen.memberBean"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 상세 보기</title>
</head>
<body>
	<%
	String id = request.getParameter("id");

	memberDAO mdao = new memberDAO();
	memberBean mBean = mdao.oneselectmember(id);
	%>

	<h2 align="center">회원정보 상세 보기 화면 구현</h2>
	<div align="center">
		<table align="center" border="1"
			style="width: '60%'; text-align: 'center'">
			<tr style="height: '40'; align: 'center'; background: 'pink'">
				<td align="center" width="100">아이디</td>
				<td><%=mBean.getId()%></td>
			</tr>
			<tr style="height: '40'; align: 'center'; background: 'pink'">
				<td align="center" width="100">이&nbsp;&nbsp;&nbsp;름</td>
				<td><%=mBean.getName()%></td>
			</tr>
			<tr style="height: '40'; align: 'center'; background: 'pink'">
				<td align="center" width="100">전자우편</td>
				<td><%=mBean.getEmail()%></td>
			</tr>
			<tr style="height: '40'; align: 'center'; background: 'pink'">
				<td align="center" width="100">전화번호</td>
				<td><%=mBean.getTele()%></td>
			</tr>
			<tr style="height: '40'; align: 'center'; background: 'pink'">
				<td align="center" width="100">관심분야</td>
				<td><%=mBean.getHobby()%></td>
			</tr>
			<tr style="height: '40'; align: 'center'; background: 'pink'">
				<td align="center" width="100">직&nbsp;&nbsp;&nbsp;업</td>
				<td><%=mBean.getJob()%></td>
			</tr>
			<tr style="height: '40'; align: 'center'; background: 'pink'">
				<td align="center" width="100">연령대</td>
				<td><%=mBean.getAge()%></td>
			</tr>
			<tr style="height: '40'; align: 'center'; background: 'pink'">
				<td align="center" width="100">하고싶은 말</td>
				<td><%=mBean.getInfo()%></td>
			</tr>
			<tr style="height: 40;">
				<td colspan="2">
					<button onclick="location.href='memberUpdateform.jsp?id=<%=mBean.getId() %>'">수정버튼</button>&nbsp;&nbsp;
					<button onclick="location.href='memberDeleteform.jsp?id=<%=mBean.getId() %>'">삭제버튼</button>&nbsp;&nbsp;
					<button onclick="location.href='camperList.jsp?'">회원정보조회버튼</button>&nbsp;&nbsp;
					<button onclick="location.href='memberjoinform.jsp?'">회원가입</button>
		</table>



	</div>

</body>
</html>