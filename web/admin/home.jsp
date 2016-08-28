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
<title>home</title>
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
var nav1 = 1;
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

          
          
      
         <h4 style="margin-left: 1000px">Hello ,<p><%=email %></p></h4> 
          
          
          <img alt="" src="images/uvpcelogo.png" height="100" width="300"> &nbsp;&nbsp;&nbsp;&nbsp; <img alt="" src="images/secureinfosoft.png" height="100" width="200"> 
          


			<h4>
			
			Hello friends..
			
			</h4>
			<h4>
			This is B.TECH Final Year Project (8th semester Information Technology). 
			I want to give a small introduction of my project to you guys.
			
			</h4>
			
			<h4>
			<pre style="font-size: medium; font-style: normal;font-family: cursive">
			This project is a web application built on JavaEE core API (Hibernate 3.2 and Struts 1.3).	
			The application is created under guidence of respected R.D.Vanzara Sir(H.O.D-IT) & K.J.Sarvakar Sir.
			</pre>
			</h4>
			
			<h4>Now focusing on functionality...!!!</h4>
			<h4>As we know now days GATE (Graduate Aptitude Test of Engineering) is a healthy platform for every engineers to express their knowledge and carve their niche in this fast growing IT-Industry.
			Application name it self gives light on its functionality."GATE-Empowerment". "Empowerment means - the giving of an ability or enablement or permission"
			</h4>
			
			<h4>
			<pre style="font-size: medium; font-style: normal;font-family: cursive">
			Gate-Empowerment is a small approch to help the B.Tech students who are willing to appear in GATE-Examination.
			The application will help to find the direction of preparation for GATE.
			eg. Auto MCQ test(Chapterwise and Sujectwise).
			Exam Results
			QuestionPaper solution
			Material Downloads 
			and lot more...
			
			</pre>
			</h4>
			
          
			
		
        
        </div>
      </div>
    </div>
        <script type="text/javascript" language="javascript" src="js/footer.js"></script>
  </div>
</body>

<!-- Mirrored from googcloudlabs.appspot.com/ by HTTrack Website Copier/3.x [XR&CO'2013], Sun, 19 Jan 2014 09:36:27 GMT -->
</html>
