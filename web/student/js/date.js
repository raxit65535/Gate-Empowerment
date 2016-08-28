// sInterceptorVersionString[]="IMAG_Build_B25072006"  
if (typeof needDifferentPath == "undefined") {
  var extraPath = 'index.html';
}

function createXHR() {
	var xmlhttp;
	if (window.XMLHttpRequest) {
		xmlhttp = new XMLHttpRequest();
	} else {
		xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
	}
	return xmlhttp;
}

var getVersion = function(){
	var ver;
	var xmlHttp = new createXHR();
	xmlHttp.open("GET.html", "/docs_getversion", true);
	xmlHttp.send();
	xmlHttp.onreadystatechange = function(){
		if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
			document.getElementById('showVersion').html = xmlHttp.responseText; 
		}
	}
}
