<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<!DOCTYPE html>
<%
HttpSession student= request.getSession();
String heli =(String)student.getAttribute("email");

if(heli == null)
{
	response.sendRedirect("studentLogin.jsp");
}

 %>

<html>

<!-- Mirrored from googcloudlabs.appspot.com/ by HTTrack Website Copier/3.x [XR&CO'2013], Sun, 19 Jan 2014 09:36:13 GMT -->
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<title>GATE Empowerment</title>
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


<script type="text/javascript">
            
            function rax()
            {
    			var ol = document.getElementById('oldpass').value;
    			var ne = document.getElementById('newpass').value;
    			
    			if(ol.length ==0 || ne.length ==0)
    			{
    				alert("Please Enter all fields");
    				return false;
    			}
    			else if(ne.length<5)
    			{
    				alert("Please choose more than 5 charactor for new password");
    				return false;
    			}
    			
    			else
    			{
    				return true;
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
          <form action="changePasswordAction.jsp" method="post">
          
           <center><h1>Change Passwd<br/><br/><br/><br/><br/><br/></h1></center>
           
    
 
    
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
     <label>Password 
    <span class="small">Current passwor</span>
    </label>
    <input type="password" id="oldpass" name="oldpass" required = "required"/> 
    
    <label>New Password 
    <span class="small">New passwor</span>
    </label>
    <input type="password" id="newpass" name="newpass" required = "required"/>
    
   
     <input type="submit"    onclick="return rax();" value="Update" class="large button black"  style="margin-left: 90px"/>
    
          </form>
     <div class="spacer"></div>
    </div>
			
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

