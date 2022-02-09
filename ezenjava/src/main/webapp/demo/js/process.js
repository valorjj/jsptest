// 공정 등록 유효성 검사
function inputCheck() {

	// 공정1 선택 여부
	var processA1 = document.getElementById("processForm").processA1.checked;
	var processA1 = document.getElementById("processForm").processA2.checked;
	// 공정2 선택 여부
	var processB1 = document.getElementById("processForm").processB1.checked;
	var processB2 = document.getElementById("processForm").processB2.checked;
	// 공정3 선택 여부
	var processC1 = document.getElementById("processForm").processC1.checked;
	var processC2 = document.getElementById("processForm").processC2.checked;
	// 공정4 선택 여부
	var processD1 = document.getElementById("processForm").processD1.checked;
	var processD2 = document.getElementById("processForm").processD2.checked;
	// 공정5 선택 여부
	var processE1 = document.getElementById("processForm").processE1.checked;
	var processE2 = document.getElementById("processForm").processE2.checked;
	// 공정6 선택 여부
	var processF1 = document.getElementById("processForm").processF1.checked;
	var processF2 = document.getElementById("processForm").processF2.checked;

	// 작업완료 날짜 입력 값
	var date = document.getElementById("processEndDate").value;
	// 작업완료 시간 입력 값
	var time = document.getElementById("processEndTime").value;
	// 날짜 정규식 : YYYY-MM-DD
	var regdate = /^([0-9]{4})-([0-9]{2})-([0-9]{2})$/;
	// 시간 정규식 : HH:MM
	var regtime = /^([0-9]{2}):([0-9]{2})$/;

	if (!processA1 && !processA2) {
		document.getElementById("r1").innerHTML = "모든 항목을 선택하셔야 합니다.";
		document.getElementById("r1").style.color = "red";
		return false;
	} else {
		document.getElementById("r1").innerHTML = "";
	}

	if (!processB1 && !processB2) {
		document.getElementById("r2").innerHTML = "모든 항목을 선택하셔야 합니다.";
		document.getElementById("r2").style.color = "red";
		return false;
	} else {
		document.getElementById("r2").innerHTML = "";
	}

	if (!processC1 && !processC2) {
		document.getElementById("r3").innerHTML = "모든 항목을 선택하셔야 합니다.";
		document.getElementById("r3").style.color = "red";
		return false;
	} else {
		document.getElementById("r3").innerHTML = "";
	}

	if (!processD1 && !processD2) {
		document.getElementById("r4").innerHTML = "모든 항목을 선택하셔야 합니다."; 
		document.getElementById("r4").style.color = "red";
		return false;
	} else {
		document.getElementById("r4").innerHTML = "";
	}

	if (!processE1 && !processE2) {
		document.getElementById("r5").innerHTML = "모든 항목을 선택하셔야 합니다.";
		document.getElementById("r5").style.color = "red";
		return false;
	} else {
		document.getElementById("r5").innerHTML = "";
	}

	if (!processF1 && !processF2) {
		document.getElementById("r6").innerHTML = "모든 항목을 선택하셔야 합니다.";
		document.getElementById("r6").style.color = "red";
		return false;
	} else {
		document.getElementById("r6").innerHTML = "";
	}

	if (!regdate.test(date) || date == "") {
		document.getElementById("endDateResult").innerHTML = "2022-01-01 형식으로 입력해주세요";
		document.getElementById("endDateResult").style.color = "red";
		return false;
	} else {
		document.getElementById("endDateResult").innerHTML = "올바른 형식입니다. "
		document.getElementById("endDateResult").style.color = "green";
	}

	if (!regtime.test(time) || time == "") {
		document.getElementById("endTimeResult").innerHTML = "15:00 형식으로 입력해주세요";
		document.getElementById("endTimeResult").style.color = "red";
		return false;
	} else {
		document.getElementById("endTimeResult").innerHTML = "올바른 형식입니다. "
		document.getElementById("endTimeResult").style.color = "green";
	}

}