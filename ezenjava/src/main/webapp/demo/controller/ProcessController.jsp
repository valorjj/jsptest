<%@page import="dao.ProcessDao"%>
<%@page import="dto.Process"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
int processOrder = Integer.parseInt(request.getParameter("processOrder")) + 1;
String processPreparation1 = request.getParameter("processPreparation1");
String processPreparation2 = request.getParameter("processPreparation2");
String processPreparation3 = request.getParameter("processPreparation3");
String processPreparation4 = request.getParameter("processPreparation4");
String processPreparation5 = request.getParameter("processPreparation5");
String processPreparation6 = request.getParameter("processPreparation6");
String processEndDate = request.getParameter("processEndDate");
String processEndTime = request.getParameter("processEndTime");

Process process = new Process(
		processOrder,
		processPreparation1,
		processPreparation2,
		processPreparation3,
		processPreparation4,
		processPreparation5,
		processPreparation6,
		processEndDate,
		processEndTime
		);

boolean result = ProcessDao.getProcessDao().enrollProcess(process);
if(result){
	response.sendRedirect("../index.jsp");
}
%>