// sInterceptorVersionString[]="IMAG_Build_B25072006"  
if (typeof needDifferentPath == "undefined") {
  var extraPath = 'index.html';
}
document.write(' <div id="gc-topnav">');
document.write(' <h1 style="padding: 0pt 0pt 0pt 6px;">');
document.write(' <center>GATE Empowerment @ student</center>');
document.write(' </h1>');
document.write(' <ul class="gc-topnav-tabs" id="articles">');
document.write(' <li id="home_link">&nbsp;</li>');
document.write(' </ul>');
document.write(' </div>');

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