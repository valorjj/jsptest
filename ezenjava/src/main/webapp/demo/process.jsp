<%@page import="dao.ProcessDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/process.css" />
</head>
<body>

	<%@ include file="header.jsp"%>
	<%@ include file="nav.jsp"%>

	<div class="process-container">

		<div class="process-title">
			<h3>작업공정등록</h3>
		</div>
		
		<%
			// 가장 최근에 입력된 processOrder 를 가져와서 거기에 +1 시킨다. 
			int orderCount = 0;
			if(ProcessDao.getProcessDao().orderCount() == -1){
				// 아직 등록되지 않은 상태에서는 0
				orderCount = 0;
			} else {
				// 이미 있으면 기존 값을 가져온다. 
				orderCount = ProcessDao.getProcessDao().orderCount();
			}
		%>
		<form action="controller/ProcessController.jsp" method="get" onsubmit="return inputCheck()">
			<div class="process-wrapper">
				<!-- 작업 지시 번호는 자동으로 입력되도록 한다. -->
				<div class="test process-item">
					<span>작업지시번호</span> 
					<span style="color:green;"><%=orderCount+1%></span>
					<input type="hidden" value="<%=orderCount+1%>" name="processOrder"/>
				</div>
				<div class="process-item">
					<span>재료준비</span> 
					<input onchange="inputCheck();" type="radio" name="processPreparation1" id="processA1" value="완료"/> 완료 
					<input onchange="inputCheck();" type="radio" name="processPreparation1" id="processA2" value="작업중"/> 작업중
					<span id="process1"></span>
				</div>
				<div class="process-item">
					<span>인쇄공정</span>
					<input onchange="inputCheck();" type="radio" name="processPreparation2" id="processB1" value="완료"/> 완료 
					<input onchange="inputCheck();" type="radio" name="processPreparation2" id="processB2" value="작업중"/> 작업중
					<span id="r2"></span>
				</div>
				<div class="process-item">
					<span>코팅공정</span>
					<input onchange="inputCheck();" type="radio" name="processPreparation3" id="processC1" value="완료"/> 완료 
					<input onchange="inputCheck();" type="radio" name="processPreparation3" id="processC2" value="작업중"/> 작업중
					<span id="r3"></span>
				</div>
				<div class="process-item">
					<span>합지공정</span>
					<input onchange="inputCheck();" type="radio" name="processPreparation4" id="processD1" value="완료"/> 완료 
					<input onchange="inputCheck();" type="radio" name="processPreparation4" id="processD2" value="작업중"/> 작업중
					<span id="r4"></span>
				</div>
				<div class="process-item">
					<span>접합공정</span>
					<input onchange="inputCheck();" type="radio" name="processPreparation5" id="processE1" value="완료"/> 완료 
					<input onchange="inputCheck();" type="radio" name="processPreparation5" id="processE2" value="작업중"/> 작업중
					<span id="r5"></span>
				</div>
				<div class="process-item">
					<span>포장공정</span>
					<input onchange="inputCheck();" type="radio" name="processPreparation6" id="processF1" value="완료"/> 완료 
					<input onchange="inputCheck();" type="radio" name="processPreparation6" id="processF2" value="작업중"/> 작업중
					<span id="r6"></span>
				</div>
				
				<div class="process-item">
					<span>최종작업일자(입력예시 : 2021-01-01)</span>
					<input onchange="inputCheck();" type="text" id="processEndDate" name="processEndDate"/>
					<span id="endDateResult"></span>
				</div>
				
				<div class="process-item">
					<span>최종작업시간(입력예시 : 15:00)</span>
					<input onchange="inputCheck();" type="text" id="processEndTime" name="processEndTime"/>
					<span id="endTimeResult"></span>
				
				</div>
			
				<div class="process-item">
					<input type="submit" value="공정등록">
					<button type="button">수정</button>
					<button type="button">삭제</button>
				</div>
			</div>
		</form>
	</div>
	
	<script src="js/process.js"></script>

	<%@ include file="footer.jsp"%>


</body>
</html>