<%@page import="dto.Process"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="dao.ProcessDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="header.jsp"%>

	<%
	// 등록된 리스트 가져오기 
	ArrayList<Process> test = ProcessDao.getProcessDao().getProcessList();
	// 모든 리스트를 반복문을 통해서 출력한다.
	%>

	<div class="list-wrapper">
		<div class="process-title" style="text-align: center;">
			<h3>작업 공정 조회</h3>
		</div>

		<table>
			<thead>
				<tr>
					<td>작업지시번호</td>
					<td>준비완료</td>
					<td>인쇄완료</td>
					<td>코팅완료</td>
					<td>합지완료</td>
					<td>접합완료</td>
					<td>포장완료</td>
					<td>최종공정일자</td>
					<td>최종공정시간</td>

				</tr>
			</thead>
			<tbody>
				<%
				for (Process process : test) {
				%>
				
				<tr>
					<td><%=process.getProcessOrder() %></td>
					<td><%=process.getProcessPreparation1() %></td>
					<td><%=process.getProcessPreparation2() %></td>
					<td><%=process.getProcessPreparation3() %></td>
					<td><%=process.getProcessPreparation4() %></td>
					<td><%=process.getProcessPreparation5() %></td>
					<td><%=process.getProcessPreparation6() %></td>
					<td><%=process.getProcessEndDate() %></td>
					<td><%=process.getProcessEndTime() %></td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>