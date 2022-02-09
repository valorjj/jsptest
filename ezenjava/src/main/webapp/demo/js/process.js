// 유효성 검사

function inputCheck() {

	var date = document.getElementById("processEndDate").value;
	var time = document.getElementById("processEndTime").value;

	var regdate = /^([0-9]{4})-([0-9]{2})-([0-9]{2})$/;
	var regtime = /^([0-9]{4})$/;

	if (!regdate.test(date) || date == "") {
		document.getElementById("endDateResult").innerHTML = "2022-01-01 형식으로 입력해주세요";
		document.getElementById("endDateResult").style.color = "red";
		return false;
	} else {
		document.getElementById("endDateResult").innerHTML = "올바른 형식입니다. "
		document.getElementById("endDateResult").style.color = "green";

	}

	if (!regtime.test(time) || time == "") {
		document.getElementById("endTimeResult").innerHTML = "1500 형식으로 입력해주세요";
		document.getElementById("endTimeResult").style.color = "red";
		return false;
	} else {
		document.getElementById("endTimeResult").innerHTML = "올바른 형식입니다. "
		document.getElementById("endTimeResult").style.color = "green";

	}

}