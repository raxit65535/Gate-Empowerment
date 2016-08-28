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

	HttpSession student = request.getSession();
	String email = (String)student.getAttribute("email");
	String department = (String)student.getAttribute("department");

	
	if(email == null)
	{
		response.sendRedirect("studentLogin.jsp");
	}

 %>
 
 <%
 
	 
	String subject = request.getParameter("subject");
	
	
	if(subject == null)
	{
		response.sendRedirect("PurformanceGraphChapter1.jsp");
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
var nav1 = 15;
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
         
           <center><h1>Purformance Graph for Chapter Type<br/></h1></center>
          <center><h2 style="background-color: #ebf4fb">Step-2</h2></center>  
           <center><p>Note : this for will give result in google graph formate. It will show the result of student obtained in specific Chapter.Here in step-1 select subject and in step-2 select the chapter.</p></center>
    
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
    
    
    <label>Chapter      
	   <span class="small">select chapter</span></label>
	   <select name="chapter" id="chapter" required = "required">
			<option value=""></option>
			<%
			
		
			Session sess = HibernateUtil.getSessionFactory().openSession();
			Query q = sess.createQuery("From ChapterPOJO where subject = :s and department = :d");
			q.setString("s",subject);
			q.setString("d",department);
			List<ChapterPOJO> heli = (List<ChapterPOJO>)q.list();
			Iterator it = heli.iterator();
			
			while(it.hasNext())
			{
				ChapterPOJO sbj = (ChapterPOJO)it.next();
			    String ch = sbj.getChapter();
			     
			 %>
			<option value="<%=ch%>"><%=ch %></option>
			<%
			}
			 %>
		</select><br/><br/>
		
		
		
		
		<input type="hidden" id="graph" name="graph" value="chapter">
        <input type="hidden" id="subject" name="subject" value="<%=subject %>" >
        <input type="hidden" id="student" name="student" value="<%=email %>" >
		
		
    
    
    
    
    <input type="submit"   value="Next"   style="margin-left: 90px"/>
          </form>
     <div class="spacer" style="margin-bottom: -280"></div>
    
    <p style="margin-bottom: -100px;border-bottom: 0px"></p>
    
    </div>
          

          
        
	
		
        
        </div>

      </div>
    </div>
        <script type="text/javascript" language="javascript" src="js/footer.js"></script>
  </div>
</body>

<!-- Mirrored from googcloudlabs.appspot.com/ by HTTrack Website Copier/3.x [XR&CO'2013], Sun, 19 Jan 2014 09:36:27 GMT -->
</html>
