// sInterceptorVersionString[]="IMAG_Build_B25072006"  
if (typeof needDifferentPath == "undefined") {
  var extraPath = 'index.html';
}

if (typeof nav1 != "undefined") {

	document.write('<div id="gc-toc" class="g-unit g-first">');
    document.write('<ul>');
    document.write('<li>');
    document.write('<ul>');

    /**********************Home********************************/
    document.write('<li>');
    document.write('<h2><a href="">Home</a></h2>');
    document.write('<ul>');

  if (nav1 == 1) {
	document.write('<li class="selected"><a href="home.jsp">About Us</a></li>');
  }
  else {
  	document.write('<li><a href="home.jsp">About Us</a></li>');
  }
  
 
	document.write('</ul>');
    document.write('</li>');


    /**********************Questions********************************/
    document.write('<li>');
    document.write('<h2><a href="">Questions</a></h2>');
    document.write('<ul>');
    
    if (nav1 == 2) {
		document.write('<li class="selected"><a href="AddQuestion.jsp">Add Question</a></li>');
	 }
	else {
	  	document.write('<li ><a href="AddQuestion.jsp">Add Question</a></li>');
 	}
	if (nav1 == 3) {
		document.write('<li class="selected"><a href="UploadQue.jsp">Upload Questions</a></li>');
	 }
	else {
	  	document.write('<li ><a href="UploadQue.jsp">Upload Questions</a></li>');
 	}
    document.write('</ul>');
    document.write('</li>');

/**********************Views********************************/

    document.write('<li>');
    document.write('<h2><a href="">Views</a></h2>');
    document.write('<ul>');
    if (nav1 == 4) {
		document.write('<li class="selected"><a href="QuestionDBAction.jsp">QuestionDB</a></li>');
	 }
	else {
	  	document.write('<li ><a href="QuestionDBAction.jsp">QuestionDB</a></li>');
 	}
    if (nav1 == 10) {
		document.write('<li class="selected"><a href="ViewAptitudeQueAction1.jsp">Apti. MCQ</a></li>');
	 }
	else {
	  	document.write('<li ><a href="ViewAptitudeQueAction1.jsp">Apti. MCQ</a></li>');
 	}
    
    if (nav1 == 5) {
		document.write('<li class="selected"><a href="Donation.jsp">Donation</a></li>');
	 }
	else {
	  	document.write('<li ><a href="Donation.jsp">Donation</a></li>');
 	}
    if (nav1 == 6) {
		document.write('<li class="selected"><a href="ViewMaterialAction.jsp">Material</a></li>');
	 }
	else {
	  	document.write('<li ><a href="ViewMaterialAction.jsp">Material</a></li>');
 	}
    if (nav1 == 11) {
		document.write('<li class="selected"><a href="PurformanceGraphSubject1.jsp">Purformance Graph</a></li>');
	 }
	else {
	  	document.write('<li ><a href="PurformanceGraphSubject1.jsp">Purformance Graph</a></li>');
 	}
	
	
    document.write('</ul>');
    document.write(' </li>');

    /**********************Material********************************/

    document.write('<li>');
    document.write('<h2><a href="">Material</a></h2>');
    document.write('<ul>');
    if (nav1 == 13) {
		document.write('<li class="selected"><a href="UploadMaterial.jsp">Upload Material</a></li>');
	 }
	else {
	  	document.write('<li ><a href="UploadMaterial.jsp">Upload Material</a></li>');
 	}
    
		document.write('</ul>');
		document.write('</li>');

   
    /**********************MyAccount********************************/

    document.write('<li>');
    document.write('<h2><a href="">MyAccount</a></h2>');
    document.write('<ul>');
    if (nav1 == 7) {
		document.write('<li class="selected"><a href="changePassword.jsp">Change Passwd</a></li>');
	 }
	else {
	  	document.write('<li ><a href="changePassword.jsp">Change Passwd</a></li>');
 	}
 
    if (nav1 == 8) {
		document.write('<li class="selected"><a href="MyLogsAction.jsp">My Logs</a></li>');
	 }
	else {
	  	document.write('<li ><a href="MyLogsAction.jsp">My Logs</a></li>');
 	}
 
   
    if (nav1 == 9) {
		document.write('<li class="selected"><a href="logout.jsp">LogOut</a></li>');
	 }
	else {
	  	document.write('<li ><a href="logout.jsp">LogOut</a></li>');
 	}
	
	document.write('</ul>');
    document.write('</li>');

 
    /*----------*/   
 
    document.write('</ul>');
    document.write('</li>');
    document.write('</ul>');
    document.write('</div>');
}

else { 
  alert('Please, define nav1 in this HTML file.');
}

