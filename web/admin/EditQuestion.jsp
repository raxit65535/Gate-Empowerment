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

      
    <%
    	String _id = request.getQueryString();
    	String department = null;
    	String subject = null;
    	String chapter = null;
    	String question = null;
    	String a = null;
    	String b = null;
    	String c = null;
    	String d = null;
    	String answer = null;
    	String description = null;
    	String donation = null;
    	
    	Session sess = HibernateUtil.getSessionFactory().openSession();
    	Transaction t = sess.beginTransaction();
    	Query q = sess.createQuery("From QuestionPOJO where id = :i");
    	q.setString("i",_id);
    	
    	List<QuestionPOJO> l = (List<QuestionPOJO>)q.list();
    	//request.getSession().setAttribute("data",l);
    	
    	//response.sendRedirect("EditQuestion1.jsp");
    	
    	for(QuestionPOJO e : l)
    	{
    		department = e.getDepartment();
    		subject = e.getSubject();
    		chapter = e.getChapter();
    		question = e.getQuestion();
    		a = e.getA();
    		b = e.getB();
    		c = e.getC();
    		d = e.getD();
    		answer = e.getAnswer();
    		description = e.getDescription();
    		donation = e.getDonation();
    	}
    
     %>
     
     
      <div id="stylized" class="myform">
          <form action="EditQuestionAction.jsp" method="post">
          
           <center><h1>Que Edit Form<br/><br/><br/></h1></center>
           
    
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
    
    
		<input type="hidden" id="department" name="department" value="<%=department %>">
		<input type="hidden" id="subject" name="subject" value="<%=subject %>">
		<input type="hidden" id="chapter" name="chapter" value="<%=chapter %>">
		<input type="hidden" id="donation" name="donation" value="<%=donation %>">
		<input type="hidden" id="id" name="id" value="<%=_id %>">
		<input type="hidden" id="q" name="q" value="<%=question %>">
    
    
        <label>Question 
    <span class="small">write question</span>
    </label>
    <input type="text" id="question" name="question" required = "required" value="<%=question%>"/>
    
    
    <label>A 
    <span class="small">option A</span>
    </label>
    <input type="text" id="a" name="a" required = "required" value="<%=a%>"/>
    
    <label>B
    <span class="small">option B</span>
    </label>
    <input type="text" id="b" name="b" required = "required" value="<%=b%>"/>
    
    <label>C 
    <span class="small">option C</span>
    </label>
    <input type="text" id="c" name="c" required = "required" value="<%=c%>"/>
    
    <label>D
    <span class="small">option D</span>
    </label>
    <input type="text" id="d" name="d" required = "required" value="<%=d%>"/>
    
    <label>Answer
    <span class="small">right answer</span>
    </label>
    <input type="text" id="answer" name="answer" required = "required" value="<%=answer%>"/>
    
    
    <label>Description      
	<span class="small">description about ans</span></label> 
    <textarea rows="4" cols="23" id="description" name="description" required = "required" ><%=description%></textarea><br/><br/>
    
    
    
    <input type="submit"   value="Update" class="large button black"  style="margin-left: 90px"/>
          
          </form>
     <div class="spacer"></div>
     
     
  </div>
      </div>
    </div>
        <script type="text/javascript" language="javascript" src="js/footer.js"></script>
  </div>
</body>

<!-- Mirrored from googcloudlabs.appspot.com/ by HTTrack Website Copier/3.x [XR&CO'2013], Sun, 19 Jan 2014 09:36:27 GMT -->
</html>
