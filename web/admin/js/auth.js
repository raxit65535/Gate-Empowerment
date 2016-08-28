function createXHR() {
	var xmlhttp;
	if (window.XMLHttpRequest) {
		xmlhttp = new XMLHttpRequest();
	} else {
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	return xmlhttp;
}

var authorize = function(roleName){
	var xmlHttp = new createXHR();
	xmlHttp.open("GET.html", "/auth?role="+roleName, true);
	xmlHttp.send();
	xmlHttp.onreadystatechange = function(){
		if (xmlHttp.status == 200 && xmlHttp.readyState == 4) {
			document.getElementById('body').style.visibility = 'visible';
			document.getElementById('gb').innerHTML = "<b>Version 1 "+xmlHttp.responseText+"</b>";
		} 
		if (xmlHttp.status == 203 && xmlHttp.readyState == 4 ){
			document.getElementById('body').style.visibility = 'hidden';
			window.location='error.html';
		}
	}
}

var authorizeUpload=function(){
	var xmlHttp = new createXHR();
	xmlHttp.open("GET.html", "/auth", true);
	xmlHttp.send();
	xmlHttp.onreadystatechange = function(){
		if (xmlHttp.status == 200 && xmlHttp.readyState == 4) {
			document.getElementById('uploads').style.visibility = 'visible';
			document.getElementById('upload-form').style.visibility = 'visible';
			document.getElementById('gb').innerHTML = "<b>Version 1 | "+xmlHttp.responseText+"</b>";
		} 
	}
}
