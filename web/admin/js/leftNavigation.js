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

/**********************Educational********************************/
    document.write('<li>');
    document.write('<h2><a href="">Educational</a></h2>');
    document.write('<ul>');

    if (nav1 == 2) {
      document.write('<li class="selected"><a href="departmentAddd.jsp">Add Department</a></li>');
	}
    else {
	  document.write('<li><a href="departmentAddd.jsp">Add Department</a></li>');
 	}

    if (nav1 == 3) {
      document.write('<li class="selected"><a href="addsubject.jsp">Add Subjects</a></li>');
  	}
      else {
  	  document.write('<li><a href="addsubject.jsp">Add Subjects</a></li>');
   	}

    if (nav1 == 4) {
        document.write('<li class="selected"><a href="addchapters.jsp">Add Chapters</a></li>');
  	}
      else {
  	  document.write('<li ><a href="addchapters.jsp">Add Chapters</a></li>');
   	}
    if (nav1 == 5) {
        document.write('<li class="selected"><a href="addcoordinator1.jsp">Add coordinator</a></li>');
  	}
      else {
  	  document.write('<li ><a href="addcoordinator1.jsp">Add Coordinator</a></li>');
   	}
    
    
   document.write('</ul>');
    document.write('</li>');

    
    /**********************Questions********************************/
    document.write('<li>');
    document.write('<h2><a href="">Questions</a></h2>');
    document.write('<ul>');
    
    if (nav1 == 6) {
		document.write('<li class="selected"><a href="AddQue1.jsp">Add Question</a></li>');
	 }
	else {
	  	document.write('<li ><a href="AddQue1.jsp">Add Question</a></li>');
 	}
	if (nav1 == 7) {
		document.write('<li class="selected"><a href="UploadQue1.jsp">Upload Questions</a></li>');
	 }
	else {
	  	document.write('<li ><a href="UploadQue1.jsp">Upload Questions</a></li>');
 	}
    document.write('</ul>');
    document.write('</li>');

/**********************Views********************************/

    document.write('<li>');
    document.write('<h2><a href="">Views</a></h2>');
    document.write('<ul>');
    if (nav1 == 8) {
		document.write('<li class="selected"><a href="../displayUser.do">Users</a></li>');
	 }
	else {
	  	document.write('<li ><a href="../displayUser.do">Users</a></li>');
 	}
	if (nav1 == 9) {
		document.write('<li class="selected"><a href="../displayUserLogs.do">User Logs</a></li>');
	 }
	else {
	  	document.write('<li ><a href="../displayUserLogs.do">User Logs</a></li>');
 	}
	if (nav1 == 10) {
		document.write('<li class="selected"><a href="../displayUserMarks.do">User Marks</a></li>');
	 }
	else {
	  	document.write('<li ><a href="../displayUserMarks.do">User Marks</a></li>');
 	}
	if (nav1 == 11) {
		document.write('<li class="selected"><a href="../displayCoordinatorLog.do">Coordinator Logs</a></li>');
	 }
	else {
	  	document.write('<li ><a href="../displayCoordinatorLog.do">Coordinator Logs</a></li>');
 	}
	if (nav1 == 12) {
		document.write('<li class="selected"><a href="QuestionDB.jsp">Question DB</a></li>');
	 }
	else {
	  	document.write('<li ><a href="QuestionDB.jsp">Question DB</a></li>');
 	}
	if (nav1 == 19) {
		document.write('<li class="selected"><a href="PurformanceGraph1.jsp">Purformance Graph</a></li>');
	 }
	else {
	  	document.write('<li ><a href="PurformanceGraph1.jsp">Purformance Graph</a></li>');
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

    /**********************Donation********************************/

    document.write('<li>');
    document.write('<h2><a href="">Donation</a></h2>');
    document.write('<ul>');
    if (nav1 == 14) {
		document.write('<li class="selected"><a href="ViewDonationQuestionAction.jsp">View Questions</a></li>');
	 }
	else {
	  	document.write('<li ><a href="ViewDonationQuestionAction.jsp">View Questions</a></li>');
 	}
 
    if (nav1 == 15) {
		document.write('<li class="selected"><a href="ViewDonationMaterialAction.jsp">View Material</a></li>');
	 }
	else {
	  	document.write('<li ><a href="ViewDonationMaterialAction.jsp">View Material</a></li>');
 	}
 
		document.write('</ul>');
		document.write('</li>');

	
    /**********************MyAccount********************************/

    document.write('<li>');
    document.write('<h2><a href="">MyAccount</a></h2>');
    document.write('<ul>');
   
 
   
    if (nav1 == 18) {
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

