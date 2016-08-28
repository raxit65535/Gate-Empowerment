<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.secureinfosoft.Hibernate.*"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.secureinfosoft.Hibernate.DepartmentPOJO"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<%
	HttpSession coordinator = request.getSession();
	String dpt = (String)coordinator.getAttribute("department");
	String sub = (String)coordinator.getAttribute("subject");
	String email = (String)coordinator.getAttribute("email");
	
	if(email == null)
	{
		response.sendRedirect("coordinatorLogin.jsp");
	}
 %>
 
 
 
<html>

<!-- Mirrored from googcloudlabs.appspot.com/ by HTTrack Website Copier/3.x [XR&CO'2013], Sun, 19 Jan 2014 09:36:13 GMT -->
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<title>Purformance Graph</title>
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

	
          
      
         
           <div id="stylized" class="myform">
          <form action="PurformaceGraphAction.jsp" method="post" target="_blank">
          
           <center><h1>Purformance Graph for Subject Type<br/><br/><br/><br/></h1></center>
           <center><p>Note : this for will give result in google graph formate. It will show the result of student obtained in specific subject </p></center>
    
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
    
    
    
		<label>Student      
	   <span class="small">student email_id</span></label>
	   <select name="student" id="student" required = "required">
			<option value=""></option>
			<%
			
		
			Session sess1 = HibernateUtil.getSessionFactory().openSession();
			Query q1 = sess1.createQuery("From StudentPOJO where department = :d");
			q1.setString("d",dpt);
			List<StudentPOJO> heli1 = (List<StudentPOJO>)q1.list();
			Iterator it1 = heli1.iterator();
			
			while(it1.hasNext())
			{
				StudentPOJO sbj = (StudentPOJO)it1.next();
			    String em = sbj.getEmail();
			     
			 %>
			<option value="<%=em%>"><%=em %></option>
			<%
			}
			 %>
		</select><br/><br/>
		
		
		<label>Result Type
		<span class="small">eg. chapter-wise or subject-wise</span>
		</label>
		<select id="type" name="type" required ="required">
		<option value=""></option>
		<option value="subject-wise">subject-wise</option>
		<option value="chapter-wise">chapter-wise</option>
		</select>
		
		<input type="hidden" id="subject" name="subject" value="<%=sub %>">
		<input type="hidden" id="" name="department" value="<%=dpt %>">
		<input type="hidden" id="graph" name="graph" value="subject">
    
    
    
    
    
    <input type="submit"   value="Next"   style="margin-left: 90px"/>
          </form>
     <div class="spacer" style="margin-bottom: 100px"></div>
    
    
    </div>
          

          
        
	
		
        
        </div>

      </div>
    </div>
        <script type="text/javascript" language="javascript" src="js/footer.js"></script>
  </div>
</body>

<!-- Mirrored from googcloudlabs.appspot.com/ by HTTrack Website Copier/3.x [XR&CO'2013], Sun, 19 Jan 2014 09:36:27 GMT -->
</html>
