<!DOCTYPE html>
<%
HttpSession student = request.getSession();
String email = (String)student.getAttribute("email");
String department = (String)student.getAttribute("department");

if(email == null)
{
	response.sendRedirect("studentLogin.jsp");
}

 %>

<html>

<!-- Mirrored from googcloudlabs.appspot.com/ by HTTrack Website Copier/3.x [XR&CO'2013], Sun, 19 Jan 2014 09:36:13 GMT -->
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<title>Quiz Rules</title>
<link href="images/favicon.png" rel="shortcut icon" type="image/png" />
<link href="css/codesite.pack.04102009.css" type="text/css"
  rel="stylesheet">
<!--[if IE]><link rel="stylesheet" type="text/css" href="css/iehacks.css"><![endif]-->
<link href="css/semantic_headers.css" rel="stylesheet" type="text/css" />
<link href="css/prettify.css" type="text/css" rel="stylesheet" />
<link href="css/form.css" type="text/css" rel="stylesheet" />
<link href="css/screen.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="js/prettify.js"></script>
<script type="text/javascript" src="js/auth.js"></script>
<script type="text/javascript" src="js/jquery-1.6.min.js"></script>
<script type="text/javascript">
var nav1 = 11;
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

          
          
      
         <h1>Hello This is instruction page for quiz.</h1><br/><br/>
         <p>As you can see there are two types of test available on this site,
         Here is step wise instuction for attemption the quiz</P>
         
         <br/>
         
         <h1>Step-1</h1>
         <p>Eg. go for chapter-wise test. select the subject from which you want to attempt the test</p>
         <img src="images/rule/1.png" height="700" width="1200"/><br/><br/>
         
         <h1>Step-2</h1>
         <p>Eg. select chapter after selecting the subject</p>
         <img src="images/rule/2.png" height="700" width="1200"/><br/><br/>
			
		<h1>Step-3</h1>
         <p>Eg. Test will appear to the student.Time will be 10 minutes.After the 10 minutes test will be automatically submit.
         select the correct option and submit the test.</p>
         <img src="images/rule/3.png" height="700" width="1200"/><br/><br/>
        
        
        <h1>Step-4</h1>
         <p>Eg.After the submission of test the result will be displayed to the studnet , with the solution of attmpted tes.
         Download the test solution in PDF or Excel.(Note :- Downloading the solution is student responsiblity, webapplication will just maintain marks log for student.)</p>
         <img src="images/rule/4.png" height="700" width="1200"/><br/><br/>
        
        </div>
      </div>
    </div>
        <script type="text/javascript" language="javascript" src="js/footer.js"></script>
  </div>
</body>

<!-- Mirrored from googcloudlabs.appspot.com/ by HTTrack Website Copier/3.x [XR&CO'2013], Sun, 19 Jan 2014 09:36:27 GMT -->
</html>
