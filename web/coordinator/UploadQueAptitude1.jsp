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
	String dpt = (String)coordinator.getAttribute("department");
	String sub = (String)coordinator.getAttribute("subject");
	String email = (String)coordinator.getAttribute("email");
	
	if(email == null)
	{
		response.sendRedirect("coordinatorLogin.jsp");
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
var nav1 = 3;
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
          <form action="UploadQueAptitude2.jsp" method="post">
          
           <center><h1>Aptitude Que Upload Form<br/></h1></center>
          <center><h2 style="background-color: #ebf4fb">Step-1</h2></center>
    
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
			Query q = sess.createQuery("From AptitudeChaptersPOJO");
			//q.setString("d",dpt);
			//q.setString("s",sub);
			List<AptitudeChaptersPOJO> heli = (List<AptitudeChaptersPOJO>)q.list();
			Iterator it = heli.iterator();
			
			while(it.hasNext())
			{
				AptitudeChaptersPOJO chap = (AptitudeChaptersPOJO)it.next();
			    String chapt = chap.getChapter();
			     
			 %>
			<option value="<%=chapt%>"><%=chapt %></option>
			<%
			}
			 %>
		</select><br/><br/>
		
    
       <input type="hidden" id="department" name="department" value="<%="0"%>">
        <input type="hidden" id="subject" name="subject" value="<%="Aptitude"%>">
        
    
    
    
    <input type="submit"   value="Next" class="large button black"  style="margin-left: 90px"/>
          </form>
     <div class="spacer"></div>
    </div>
          

		<center><a href="UploadQue.jsp">@click here to upload question in subjects.</a></center>
        
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
