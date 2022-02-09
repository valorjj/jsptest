// 유효성 검사

function inputCheck() {

	var date = document.getElementById("processEndDate").value;
	var time = document.getElementById("processEndTime").value;

	var regdate = /^([0-9]{4})-([0-9]{2})-([0-9]{2})$/;
	var regtime = /^([0-9]{2}):([0-9]{2})$/;

	var processA1 = document.getElementById("processA1").checked;
	var processA2 = document.getElementById("processA2").checked;

	var processB1 = document.getElementById("processB1").checked;
	var processB2 = document.getElementById("processB2").checked;

	var processC1 = document.getElementById("processC1").checked;
	var processC2 = document.getElementById("processC2").checked;

	var processD1 = document.getElementById("processD1").checked;
	var processD2 = document.getElementById("processD2").checked;

	var processE1 = document.getElementById("processE1").checked;
	var processE2 = document.getElementById("processE2").checked;

	var processF1 = document.getElementById("processF1").checked;
	var processF2 = document.getElementById("processF2").checked;


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