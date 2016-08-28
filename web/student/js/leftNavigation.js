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

/**********************Preparation********************************/
    document.write('<li>');
    document.write('<h2><a href="">Preparation</a></h2>');
    document.write('<ul>');

    if (nav1 == 2) {
      document.write('<li class="selected"><a href="ChapterQA1.jsp">Chapters Q & A</a></li>');
	}
    else {
	  document.write('<li><a href="ChapterQA1.jsp">Chapters Q & A</a></li>');
 	}
    
    if (nav1 == 14) {
        document.write('<li class="selected"><a href="ViewAptitudeQueAction1.jsp">Apti. MCQ</a></li>');
  	}
      else {
  	  document.write('<li><a href="ViewAptitudeQueAction1.jsp">Apti. MCQ</a></li>');
   	}

    
    
    
   document.write('</ul>');
    document.write('</li>');

    
    /**********************Exams********************************/
    document.write('<li>');
    document.write('<h2><a href="">Exams</a></h2>');
    document.write('<ul>');
    
    if (nav1 == 3) {
		document.write('<li class="selected"><a href="ChapterWiseTest.jsp">Chapter wise</a></li>');
	 }
	else {
	  	document.write('<li ><a href="ChapterWiseTest.jsp">Chapter wise</a></li>');
 	}
	if (nav1 == 4) {
		document.write('<li class="selected"><a href="SubjectWiseTest.jsp">Subject Wise</a></li>');
	 }
	else {
	  	document.write('<li ><a href="SubjectWiseTest.jsp">Subject Wise</a></li>');
 	}
	if (nav1 == 13) {
		document.write('<li class="selected"><a href="AptitudeTest.jsp">Aptitude</a></li>');
	 }
	else {
	  	document.write('<li ><a href="AptitudeTest.jsp">Aptitude</a></li>');
 	}
	if (nav1 == 11) {
		document.write('<li class="selected"><a href="quizrule.jsp">Rules</a></li>');
	 }
	else {
	  	document.write('<li ><a href="quizrule.jsp">Rules</a></li>');
 	}
    document.write('</ul>');
    document.write('</li>');

    
    
    /**********************Download********************************/

    document.write('<li>');
    document.write('<h2><a href="">Downloads</a></h2>');
    document.write('<ul>');
    if (nav1 == 12) {
		document.write('<li class="selected"><a href="DownloadsAction.jsp">Downlaods</a></li>');
	 }
	else {
	  	document.write('<li ><a href="DownloadsAction.jsp">Downloads</a></li>');
 	}
	
	
    document.write('</ul>');
    document.write(' </li>');

    
    /**********************Download********************************/    
    
    
    
/**********************Donate********************************/

    document.write('<li>');
    document.write('<h2><a href="">Donate</a></h2>');
    document.write('<ul>');
    if (nav1 == 5) {
		document.write('<li class="selected"><a href="AddQue1.jsp">Donate Question</a></li>');
	 }
	else {
	  	document.write('<li ><a href="AddQue1.jsp">Donate Question</a></li>');
 	}
	if (nav1 == 6) {
		document.write('<li class="selected"><a href="UploadMaterial.jsp">Donate PDF Document</a></li>');
	 }
	else {
	  	document.write('<li ><a href="UploadMaterial.jsp">Donate PDF Document</a></li>');
 	}
	
    document.write('</ul>');
    document.write(' </li>');

    /**********************My Account********************************/

    document.write('<li>');
    document.write('<h2><a href="">My Account</a></h2>');
    document.write('<ul>');
    if (nav1 == 7) {
		document.write('<li class="selected"><a href="changePassword.jsp">Change Password</a></li>');
	 }
	else {
	  	document.write('<li ><a href="changePassword.jsp">Change Password</a></li>');
 	}
    if (nav1 == 15) {
		document.write('<li class="selected"><a href="PurformanceGraph3.jsp">My Purformance Graph</a></li>');
	 }
	else {
	  	document.write('<li ><a href="PurformanceGraph3.jsp">My Purformance Graph</a></li>');
 	}
    if (nav1 == 8) {
		document.write('<li class="selected"><a href="MyLogsAction.jsp">My Login Activity</a></li>');
	 }
	else {
	  	document.write('<li ><a href="MyLogsAction.jsp">My Login Activity</a></li>');
 	}
    if (nav1 == 9) {
		document.write('<li class="selected"><a href="MyExamResultAction.jsp">My Exam Result</a></li>');
	 }
	else {
	  	document.write('<li ><a href="MyExamResultAction.jsp">My Exam Result</a></li>');
 	}
    if (nav1 == 10) {
		document.write('<li class="selected"><a href="logout.jsp">Logout</a></li>');
	 }
	else {
	  	document.write('<li ><a href="logout.jsp">Logout</a></li>');
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

