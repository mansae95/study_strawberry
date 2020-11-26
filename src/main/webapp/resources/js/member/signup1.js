function checkAllchkbox(status) {
	var sels = document.getElementsByTagName("input");
	var i = 1;
	while (sels[0].checked == status && i < sels.length) {
		if (sels[i].type == "checkbox") {
			sels[i].checked = status;
		}
		i++;
	}
}

function checkSubmit() {
	var chk1 = document.querySelector("#chkbox1");
	var chk2 = document.querySelector("#chkbox2");
	
	if (chk1.checked == true && chk2.checked == true) {
		return true;
	}
	
	return false;
}

function uncheckAllchk(){
	var sels = document.getElementsByTagName("input");
	var i = 1;
	while (sels[0].checked == true && i < sels.length) {
		if (sels[i].type == "checkbox" && sels[i].checked == false) {
			sels[0].checked = false;
			return;
		}
		i++;
	}
}