<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.secureinfosoft.Hibernate.*"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Query"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<%
HttpSession admin = request.getSession();
String heli =(String)admin.getAttribute("email");

if(heli == null)
{
	response.sendRedirect("error.jsp");
}

 %>

<html>

<!-- Mirrored from googcloudlabs.appspot.com/ by HTTrack Website Copier/3.x [XR&CO'2013], Sun, 19 Jan 2014 09:36:13 GMT -->
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<title>Edit Question</title>
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
var nav1 = 12;
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
	var pass = document.getElementById('pass').value;
	
	if(pass.length < 4)
	{
		alert("Please Enter Password more than four charactor");
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

      
    <%
    	String _id = request.getQueryString();
    	//int id;
	    String name = null;
	    String email = null;
	    String password = null; 
	    String department = null;
	    String uuid = null;
	    String subject = null;
	
	
    	
    	Session sess = HibernateUtil.getSessionFactory().openSession();
    	Transaction t = sess.beginTransaction();
    	Query q = sess.createQuery("From CoordinatorPOJO where id = :i");
    	q.setString("i",_id);
    	
    	List<CoordinatorPOJO> l = (List<CoordinatorPOJO>)q.list();
    	//request.getSession().setAttribute("data",l);
    	
    	//response.sendRedirect("EditQuestion1.jsp");
    	
    	for(CoordinatorPOJO e : l)
    	{
    		name = e.getName();
    		email = e.getEmail();
    		password = e.getPassword();
    		department = e.getDepartment();
    		subject = e.getSubject();
    		uuid = e.getUuid();
    	}
    
     %>
     
     
      <div id="stylized" class="myform">
          <form action="EditCoordinatorPasswdAction.jsp" method="post">
          
           <center><h1>Coordinator Edit Form<br/><br/><br/></h1></center>
           
    
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
    
    
		
		
		<input type="hidden" id="p" name="p" value="<%=password %>">
		<input type="hidden" id="uu" name="uu" value="<%=uuid %>">
    
    
        
    <label>Password
    <span class="small">Encrypted Password here.</span>
    </label>
    <input type="password" id="pass" name="pass" required = "required" value="<%=password%>"/>
    
    
    
    
    <input type="submit" onclick="return rax();"  value="Update" class="large button black"  style="margin-left: 90px"/>
          
          </form>
     <div class="spacer" style="margin-bottom: -300px"></div>
  
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
        <script type="text/javascript" language="javascript" src="js/footer.js"></script>
  </div>
</body>

<!-- Mirrored from googcloudlabs.appspot.com/ by HTTrack Website Copier/3.x [XR&CO'2013], Sun, 19 Jan 2014 09:36:27 GMT -->
</html>
