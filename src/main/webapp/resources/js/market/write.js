function numberCommaReplace(e) {
	e.value = e.value.replace(/[^0-9]/g, '');
	e.value = e.value.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

function showImageAdd() {
	document.getElementById('thumbnail').click();
}

document.getElementById('thumbnail').addEventListener('change', function() {
	if(!fileCheck(this.files))
		imageDel();
	else {
		if(!(imageAdd(this.files[0])))
			imageDel();
		else
			document.getElementById('addBtn_p').style.display = 'none';
	}
});

function fileCheck(files) {
	const maxFileLength = 1;
	
	if(files.length != 0) {
		if(files.length > maxFileLength) {
			alert('이미지는 1개만 업로드하실 수 있습니다.');
			return false;
		} else {
			if(!(files[0].type == 'image/jpeg' || files[0].type == 'image/png' || files[0].type == 'image/bmp')) {
				alert('*.jpg, *.png, *.bmp 파일만 업로드 가능합니다.');
				return false;
			}
			if(files[0].size > 419430400) {
				alert('400MB 이하인 파일만 업로드 가능합니다.');
				return false;
			}
			return true;
		}
	}
}

function imageAdd(file) {
	const FILE_BLOB = URL.createObjectURL(file);
	let targetEle = document.getElementById('thumbnail_cover');
	
	if(targetEle == null) {
		alert('이미지 추가 오류.');
		return false;
	}
	
	if(document.getElementById('thumbnail_image') != null) {
		let imageEle = document.getElementById('thumbnail_image');
		imageEle.setAttribute('src', FILE_BLOB);
	} else {
		let imageEle = document.createElement('img');
		imageEle.setAttribute('id', 'thumbnail_image');
		imageEle.setAttribute('src', FILE_BLOB);
		targetEle.appendChild(imageEle);
	}
	
	document.getElementById('thumbnail_delete').style.display = 'unset';
	
	return true;
}

function imageDel() {
	let targetEle = document.getElementById('thumbnail');
	let targetBtn = document.getElementById('addBtn_p');
	
	targetBtn.style.display = 'inline-block';
	document.getElementById('thumbnail_delete').style.display = 'none';
	targetEle.value = null;
	if(document.getElementById('thumbnail_image') != null)
		document.getElementById('thumbnail_image').remove();
}

function form(e) {
	let check = new checkForm(e);
	if(check.hasError())
		return false;
	
	e.price.value = parseInt(e.price.value.replace(',', ''));
	e.sale.value = parseInt(e.sale.value);

	return true;
}

function checkForm(e) {
	this.e = e;
}

checkForm.prototype.hasError = function() {
	return !(this.thumbnail() && this.productName() &&
			this.price() && this.sale() && this.contents());
}

checkForm.prototype.thumbnail = function() {
	let target = this.e.thumbnail.files;

	if(target.length == 0) {
		alert('썸네일 등록을 해주시기 바랍니다.');
	}
	if(!fileCheck(target)) {
		return false;
	}

	return true;
};

checkForm.prototype.productName = function() {
	let target = this.e.productName.value;
	
	if(!(target.length > 4 && target.length < 30)) {
		alert('상품이름을 5자 이상 30자 미만으로 입력바랍니다.');
		return false;
	}
	
	return true;
};

checkForm.prototype.price = function() {
	let numRegExp = /^[0-9]/g;
	let target = this.e.price.value.replace(',', '');
	
	if(!(numRegExp.test(target))) {
		alert('가격 입력을 해주시기 바랍니다.');
		return false;
	} else {
		target = parseInt(target);
		if(!(target > 999 && target < 1000000)) {
			alert('가격은 1,000원 이상 1,000,000원 미만으로 입력바랍니다.');
			return false;
		}
	}
	
	return true;
};

checkForm.prototype.sale = function() {
	let numRegExp = /^[0-9]/g;
	let target = this.e.sale.value.replace(',', '');
	
	if(!(numRegExp.test(target))) {
		alert('할인 입력을 해주시기 바랍니다.');
		return false;
	} else {
		target = parseInt(target);
		if(!(target > -1 && target < 100)) {
			alert('할인율은 0% 이상 100% 미만으로 입력바랍니다.');
			return false;
		}
	}
	
	return true;
};

checkForm.prototype.contents = function() {
	let target = CKEDITOR.instances['contents'].getData();
	
	if(!(target.length > 29 && target.length < 5000)) {
		alert('본문은 30자 이상 5000자 미만으로 입력바랍니다.');
		return false;
	}
	
	return true;
}; 