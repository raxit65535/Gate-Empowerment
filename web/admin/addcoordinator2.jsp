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

	HttpSession admin = request.getSession();
	String email = (String)admin.getAttribute("email");
	
	if(email == null)
	{
		response.sendRedirect("error.jsp");
	}

 %>
<%

String dept = request.getParameter("department");
if(dept == null)
{
	response.sendRedirect("addcoordinator1.jsp");
}

 %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<!-- Mirrored from googcloudlabs.appspot.com/ by HTTrack Website Copier/3.x [XR&CO'2013], Sun, 19 Jan 2014 09:36:13 GMT -->
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<title>Add Coordinator</title>
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
var nav1 = 5;
var needDifferentPath = "yes";
var extraPath = "";
</script>
<style type="text/css">
.newStr span {
	color: #008800 !important;
}
</style>

<script type="text/javascript">
  
  
  function r()
  {
  	var email = document.getElementById('email').value;
  	var pas = document.getElementById('pass').value;
  	var reg = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
  	
  	if(!reg.test(email))
  	{
  		alert("email id is not valid....please enter a valid email-");
  		return false;
  	}
  	else if(pas.length() <=4)
  	{
  		alert("Password should be mininum 5 charactors");
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
          <form action="AddcoordinatorAction.jsp" method="post">
          
           <center><h1>Coordinator Add Form<br/><br/><br/></h1></center>
           <center><h1>Step-2</h1></center>
    
    <center><h5><font color="red" style="font-style: normal">
		<%
		String message = request.getParameter("msg");
		if(message != null)
		{
			out.print(message);
		}
		else
		{
		}
		 %>
		 </font></h5></center><br/>	
    
    
    <label>Name 
    <span class="small">name of the coordinator</span>
    </label>
    <input type="text" id="name" name="name" required = "required"/>
    
    <label>Email 
    <span class="small">email of the coordinator</span>
    </label>
    <input type="text" id="email" name="email" required = "required"/>
    
    <label>Password 
    <span class="small">coordinator Password</span>
    </label>
    <input type="password" id="pass" name="pass" required = "required"/>
    
    <label>Subject     
	   <span class="small">select subject</span></label>
	   <select name="subject" id="subject" required = "required">
			<option value=""></option>
			<%
		
			Session sess = HibernateUtil.getSessionFactory().openSession();
			Query q = sess.createQuery("From SubjectPOJO where department = :d");
			q.setString("d",dept);
			List<SubjectPOJO> heli = (List<SubjectPOJO>)q.list();
			Iterator it = heli.iterator();
			
			while(it.hasNext())
			{
				SubjectPOJO dep = (SubjectPOJO)it.next();
			    String sub = dep.getSubject();
			     
			 %>
			<option value="<%=sub %>"><%=sub %></option>
			<%
			}
			 %>
		</select><br/><br/>
    
    <input type="hidden" name="department" id="department" value="<%=dept %>">
    
    
    
    
    <input type="submit"   value="Add" class="large button black"  onclick="return r();"   style="margin-left: 90px"/>
          </form>
     <div class="spacer" style="margin-bottom: -100"></div>
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
