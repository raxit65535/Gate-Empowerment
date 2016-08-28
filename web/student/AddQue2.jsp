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
HttpSession student = request.getSession();
String email = (String)student.getAttribute("email");
String department = (String)student.getAttribute("department");

if(email == null)
{
	response.sendRedirect("studentLogin.jsp");
}

String dpt = request.getParameter("department");
String sub = request.getParameter("subject");

if(dpt == null || sub ==null)
{
	response.sendRedirect("AddQue1.jsp");
}
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<!-- Mirrored from googcloudlabs.appspot.com/ by HTTrack Website Copier/3.x [XR&CO'2013], Sun, 19 Jan 2014 09:36:13 GMT -->
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<title>Add Question</title>
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
          <form action="AddQueAction.jsp" method="post">
          
           <center><h1>Que Add Form<br/><br/><br/><br/></h1></center>
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
    
    <label>Chapter      
	   <span class="small">select chapter</span></label>
	   <select name="chapter" id="chapter" required = "required">
			<option value=""></option>
			<%
			
		
			Session sess = HibernateUtil.getSessionFactory().openSession();
			Query q = sess.createQuery("From ChapterPOJO where department = :d and subject = :s");
			q.setString("d",dpt);
			q.setString("s",sub);
			List<ChapterPOJO> heli = (List<ChapterPOJO>)q.list();
			Iterator it = heli.iterator();
			
			while(it.hasNext())
			{
				ChapterPOJO chap = (ChapterPOJO)it.next();
			    String chapt = chap.getChapter();
			     
			 %>
			<option value="<%=chapt%>"><%=chapt %></option>
			<%
			}
			 %>
		</select><br/><br/>
		<input type="hidden" id="department" name="department" value="<%=dpt %>">
		<input type="hidden" id="subject" name="subject" value="<%=sub %>">
    
    
        <label>Question 
    <span class="small">write question</span>
    </label>
    <input type="text" id="question" name="question" required = "required"/>
    
    
    <label>A 
    <span class="small">option A</span>
    </label>
    <input type="text" id="a" name="a" required = "required"/>
    
    <label>B
    <span class="small">option B</span>
    </label>
    <input type="text" id="b" name="b" required = "required"/>
    
    <label>C 
    <span class="small">option C</span>
    </label>
    <input type="text" id="c" name="c" required = "required"/>
    
    <label>D
    <span class="small">option D</span>
    </label>
    <input type="text" id="d" name="d" required = "required"/>
    
    <label>Answer
    <span class="small">right answer</span>
    </label>
    <input type="text" id="answer" name="answer" required = "required"/>
    
    
    <label>Description      
	<span class="small">description about ans</span></label> 
    <textarea rows="4" cols="23" id="description" name="description" required = "required"></textarea><br/><br/>
    
    <input type="submit"   value="Add" class="large button black"  style="margin-left: 90px"/>
          </form>
     <div class="spacer"></div>
    </div>
          

		
        
        </div>
      </div>
    </div>
        <script type="text/javascript" language="javascript" src="js/footer.js"></script>
  </div>
</body>

<!-- Mirrored from googcloudlabs.appspot.com/ by HTTrack Website Copier/3.x [XR&CO'2013], Sun, 19 Jan 2014 09:36:27 GMT -->
</html>
