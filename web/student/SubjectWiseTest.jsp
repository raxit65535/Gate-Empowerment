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
String heli =(String)student.getAttribute("email");
String department = (String)student.getAttribute("department");
if(heli == null)
{
	response.sendRedirect("studentLogin.jsp");
}
 %>

<html>

<!-- Mirrored from googcloudlabs.appspot.com/ by HTTrack Website Copier/3.x [XR&CO'2013], Sun, 19 Jan 2014 09:36:13 GMT -->
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<title>Subjectwise Test</title>
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
var nav1 = 4;
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
          <form action="SubjectWiseTestAction.jsp" method="post">
          
           <center><h1>Subject Test<br/><br/><br/></h1></center>
           
    
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
    
          
		<label>Subject     
	   <span class="small">select subject</span></label>
	   <select name="subject" id="subject" required = "required">
			<option value=""></option>
			<%
		
			Session sess = HibernateUtil.getSessionFactory().openSession();
			Query q = sess.createQuery("From SubjectPOJO where department = :d");
			q.setString("d",department);
			List<SubjectPOJO> jadi = (List<SubjectPOJO>)q.list();
			Iterator it = jadi.iterator();
			
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
    
		<input type="hidden" name="department" id="department" value="<%=department %>">
		 <input type="submit"   value="Go" style="margin-left: 90px"/>
          </form>
          
          
          <br/><br/>
          <br/><br/> <br/><br/>
          <br/><br/> <br/><br/>
          <br/><br/>
          <center><p>Note</p></center>
          Please Download result pdf by your self after complitation of test.
          
          
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
        
        
        
        </div>
      </div>
    </div>
        <script type="text/javascript" language="javascript" src="js/footer.js"></script>
  </div>
</body>

<!-- Mirrored from googcloudlabs.appspot.com/ by HTTrack Website Copier/3.x [XR&CO'2013], Sun, 19 Jan 2014 09:36:27 GMT -->
</html>
