<!DOCTYPE html>
<%

	HttpSession admin = request.getSession();
	String email = (String)admin.getAttribute("email");
	
	if(email == null)
	{
		response.sendRedirect("error.jsp");
	}

 %>

<html>

<!-- Mirrored from googcloudlabs.appspot.com/ by HTTrack Website Copier/3.x [XR&CO'2013], Sun, 19 Jan 2014 09:36:13 GMT -->
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<title>QuestionDB</title>
<link href="images/favicon.png" rel="shortcut icon" type="image/png" />
<link href="css/codesite.pack.04102009.css" type="text/css"
  rel="stylesheet">
<!--[if IE]><link rel="stylesheet" type="text/css" href="css/iehacks.css"><![endif]-->
<link href="css/semantic_headers.css" rel="stylesheet" type="text/css" />
<link href="css/prettify.css" type="text/css" rel="stylesheet" />
<link href="css/form.css" type="text/css" rel="stylesheet" />
<link href="css/screen.css" type="text/css" rel="stylesheet" />
<link href="css/search1.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="js/prettify.js"></script>
<script type="text/javascript" src="js/auth.js"></script>
<script type="text/javascript" src="js/jquery-1.6.min.js"></script>
<script type="text/javascript">
var nav1 = 12;
var needDifferentPath = "yes";
var extraPath = "";
</script>
<style type="text/css">
.newStr span {
	color: #008800 !important;
}
</style>

</head>
<body class="gc-documentation" id="body"  >
<div id="gb">

</div>
<div class="gbh" style="left: 0px;"></div>
<div class="gbh" style="right: 0px;"></div>
  <div id="gc-container" style="max-width: none !important;">	
  
  <div id="gc-header">
      <div id="logo"></div>
    </div>
    <div id="codesiteContent">
           <script type="text/javascript" language="javascript" src="js/header.js"></script>
      <div class="g-section g-tpl-230">
           <script type="text/javascript" language="javascript" src="js/leftNavigation.js"></script>
        <div class="g-unit" id="gc-pagecontent">
         <!-- <h1 class="page_title" style="margin: 0px !important">Hello I am Raxit - Developer of this site</h1>-->
			
			<br/><br/><br/><br/><br/><br/><br/>
          <center>
          
          <a href="ViewDepartmentAction.jsp" class="small button orange" style="height: 15px ; width: 100px; background-color: #ebf4fb "><font color="black">Department</font></a> <br/><br/>
           <a href="ViewSubjectAction.jsp" class="small button orange" style="height: 15px ; width: 100px; background-color: #ebf4fb "><font color="black">Subject</font></a> <br/><br/>
            <a href="ViewChapterAction.jsp" class="small button orange" style="height: 15px ; width: 100px; background-color: #ebf4fb "><font color="black">Chapters</font></a> <br/><br/>
             <a href="ViewQueAction.jsp" class="small button orange" style="height: 15px ; width: 100px; background-color: #ebf4fb "><font color="black">Questions</font></a> <br/><br/>
              <a href="ViewMaterialAction.jsp" class="small button orange" style="height: 15px ; width: 100px; background-color: #ebf4fb "><font color="black">Material</font></a> <br/><br/>
               <a href="ViewCoordinatorAction.jsp" class="small button orange" style="height: 15px ; width: 100px; background-color: #ebf4fb "><font color="black">Coordinator</font></a> <br/><br/>
               <a href="ViewAptitudeChaptersAction.jsp" class="small button orange" style="height: 15px ; width: 100px; background-color: #ebf4fb "><font color="black">Aptitude</font></a> <br/><br/>
               <a href="ViewAptitudeQueAction1.jsp" class="small button orange" style="height: 15px ; width: 100px; background-color: #ebf4fb "><font color="black">Apti. MCQ</font></a> <br/><br/>
          
          </center>
          

          <p>&nbsp;</p>
		  <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
         
		
        
        </div>
      </div>
    </div>
        <script type="text/javascript" language="javascript" src="js/footer.js"></script>
  </div>
</body>

<!-- Mirrored from googcloudlabs.appspot.com/ by HTTrack Website Copier/3.x [XR&CO'2013], Sun, 19 Jan 2014 09:36:27 GMT -->
</html>
