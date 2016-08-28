<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.secureinfosoft.Hibernate.*"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.secureinfosoft.Hibernate.DepartmentPOJO"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 <%

	HttpSession coordinator = request.getSession();
	
	String email = (String)coordinator.getAttribute("email");
	
	if(email == null)
	{
		response.sendRedirect("coordinatorLogin.jsp");
	}
	
 %>

<%

String dpt = request.getParameter("department");
String sub = request.getParameter("subject");
String chap = request.getParameter("chapter");

if(dpt == null || sub ==null)
{
	response.sendRedirect("UploadQueAptitude1.jsp");
}
else
{
	coordinator.setAttribute("qupdepartment",dpt);
	coordinator.setAttribute("qupsubject",sub);
	coordinator.setAttribute("qupchapter",chap);
}
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<!-- Mirrored from googcloudlabs.appspot.com/ by HTTrack Website Copier/3.x [XR&CO'2013], Sun, 19 Jan 2014 09:36:13 GMT -->
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<title>Upload Question</title>
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
var nav1 = 7;
var needDifferentPath = "yes";
var extraPath = "";
</script>
<style type="text/css">
.newStr span {
	color: #008800 !important;
}
</style>

<!-- <script type="text/javascript">


 function checkFile(fieldObj)
    {
        var FileName  = fieldObj.value;
        var FileExt = FileName.substr(FileName.lastIndexOf('.')+1);
        var FileSize = fieldObj.files[0].size;
        var FileSizeMB = (FileSize/10485760).toFixed(2);

        if ( (FileExt != "txt") || FileSize>10485760)
        {
            var error = "File type : "+ FileExt+"\n\n";
            error += "Size: " + FileSizeMB + " MB \n\n";
            error += "Please follow the question upload formate in txt files only and file size must be less than 10 MB.\n\n";
            alert(error);
            return false;
        }
        return true;
    }

</script>

 -->
 
 <script type="text/javascript">

function rax()
{ 
 var id_value = document.getElementById('path').value;
 
 if(id_value != '')
 { 
  var valid_extensions = /(.txt)$/i;   
  if(!valid_extensions.test(id_value))
  { 
   alert('Only .txt files are allowed....please follow the question upload insturction....');
   return false;
  }
  else
  {
    return true;
  }
 } 
}


</script>
 
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

                   
           
           <div id="stylized" class="myform">
          <form action="UploadQueAptitudeAction.jsp" method="post" enctype="multipart/form-data">
 
    <center><h1>Aptitude Que Upload Form<br/></h1></center>
          <center><h2 style="background-color: #ebf4fb">Step-2</h2></center>
    
   <center><h5>
		<%
		String message = request.getParameter("msg");
		String status = request.getParameter("status");
		if(message != null && status.equals("0"))
		{
		%>
		<font color="red" style="font-style: normal;color: red;font: normal">
		<%
			out.print(message);
		}
		else if(message != null && status.equals("1"))
		{
		
		%>
		
		<font color="red" style="font-style: normal;color: green;font: normal">
		<%
		out.print(message);
		}
		
		
		 %>
		 </font></font></h5></center><br/>	
    
    
		
    
    
        <label>File 
    <span class="small">write file path here</span>
    </label>
    <input type="file" id="path" name="path" required = "required"/>
    
    
    
    
    <input type="submit"   value="GO" class="large button black" onclick="return rax();" style="margin-left: 90px"/>
          </form>
     <div class="spacer" style="margin-bottom: -130"></div>
    </div>
          

		
        
        </div>
      </div>
    </div>
        <script type="text/javascript" language="javascript" src="js/footer.js"></script>
  </div>
</body>

<!-- Mirrored from googcloudlabs.appspot.com/ by HTTrack Website Copier/3.x [XR&CO'2013], Sun, 19 Jan 2014 09:36:27 GMT -->
</html>
