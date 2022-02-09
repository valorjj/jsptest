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
		<form action="controller/ProcessController.jsp" method="get">
			<div class="process-wrapper">
			
				<!-- 작업 지시 번호는 자동으로 입력되도록 한다. -->
				<div class="test">
					<span>작업지시번호</span> <input type="text" name="processOrder" /> <span>예)20220201</span>
				</div>
				<div>
					<span>재료준비</span> 
					<input type="radio" name="processPreparation1" class="" /> 완료 
					<input type="radio" name="processPreparation1" class="" /> 작업중
				</div>
				<div>
					<span>인쇄공정</span>
					<input type="radio" name="processPreparation2" class="" /> 완료 
					<input type="radio" name="processPreparation2" class="" /> 작업중
				</div>
				<div>
					<span>코팅공정</span>
					<input type="radio" name="processPreparation3" class="" /> 완료 
					<input type="radio" name="processPreparation3" class="" /> 작업중
				</div>
				<div>
					<span>합지공정</span>
					<input type="radio" name="processPreparation4" class="" /> 완료 
					<input type="radio" name="processPreparation4" class="" /> 작업중
				</div>
				<div>
					<span>접합공정</span>
					<input type="radio" name="processPreparation5" class="" /> 완료 
					<input type="radio" name="processPreparation5" class="" /> 작업중
				</div>
				<div>
					<span>포장공정</span>
					<input type="radio" name="processPreparation6" class="" /> 완료 
					<input type="radio" name="processPreparation6" class="" /> 작업중
				</div>
				
				<div>
					<span>최종작업일자</span>
					<input type="text" name="processEndDate"/>
					<span>예)20220203</span>
				</div>
				
				<div>
					<span>최종작업시간</span>
					<input type="text" name="processEndTime"/>
					<span>예)1500</span>
				</div>
				
				<div>
					<input type="submit">공정등록
				</div>
			
				
			</div>
		</form>
	</div>

	<%@ include file="footer.jsp"%>


</body>
</html>