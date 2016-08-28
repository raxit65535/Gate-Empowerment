<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.secureinfosoft.Hibernate.*"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Query"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 <%
HttpSession admin = request.getSession();
String email =(String)admin.getAttribute("email");

if(email == null)
{
	response.sendRedirect("error.jsp");
}

 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

    
<!-- Mirrored from uvpce.ac.in/new/user/register by HTTrack Website Copier/3.x [XR&CO'2013], Wed, 12 Mar 2014 10:18:17 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head profile="http://www.w3.org/1999/xhtml/vocab">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="images/favicon.png" rel="shortcut icon" type="image/png" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="MobileOptimized" content="width" />
<meta name="Generator" content="Drupal 7 (http://drupal.org)" />
<meta name="HandheldFriendly" content="true" />
        <title>View Question</title>

<style type="text/css" media="all">
@import url("login/new.css");
@import url("login/normalize2b6b.css?n225na");
@import url("login/form.css");
@import url("login/styles.css");

</style>



    </head>
    <body>
        


    <!-- #page -->
    <div id="page">
        
        <!-- header -->
        <header role="header" class="container clearfix" >
        
            <!-- #pre-header -->
            <div id="pre-header" class="clearfix" style="background-color:#527388">
                <div class="three-fourth" style="background-color:#527388">
                                    
                      <div class="region region-header" style="background-color:#527388">
    <div id="block-menu-menu-top-menu" class="block block-menu" style="background-color:#527388">

    
  <div class="content" style="background-color:#527388" >
    <ul class="menu" ><li class="first leaf"><a href="http://uvpce.ac.in/new/" title="">Home</a></li>
<li class="leaf"><a href="http://uvpce.ac.in/new/content/admission" title="">Admission</a></li>
<li class="leaf"><a href="http://www.ganpatuniversity.ac.in/faculty-of-engineering-result" title="">Exam Result</a></li>
<li class="leaf"><a href="http://uvpce.ac.in/new/content/library" title="">Library</a></li>
<li class="leaf"><a href="http://uvpce.ac.in/new/content/placement" title="">Placements</a></li>
<li class="leaf"><a href="http://uvpcealumni.org/" title="">Alumni</a></li>
<li class="leaf"><a href="http://mail.ganpatuniversity.ac.in/" title="">Mail</a></li>
<li class="last leaf"><a href="http://uvpce.ac.in/new/content/contact-us-0" title="">Contact Us</a></li>

</ul>  </div>
</div>
  </div>
  </div>
  </div>
                         <div style="margin-top:50px">
						 <center ><h1 style = "font-size : 35px;color : black;">Gate-Empowerment</h1>
						 
						 
						 
						
	<div>
       
       <!-- <h2 style="font-size:20px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;powered by</h2><br/><br/>-->
	   <br/><br/>
        	
    
						
						
						
   <%
   
   String _id = request.getQueryString();
   String _department = null;
   String _subject = null;
   String _chapter = null;
   String _question = null;
   String _a = null;
   String _b = null;
   String _c = null;
   String _d = null;
   String _answer = null;
   String _description = null;
   
   Session sess = HibernateUtil.getSessionFactory().openSession();
   Transaction t = sess.beginTransaction();
   Query q = sess.createQuery("From QuestionPOJO where id = :i");
   q.setString("i",_id);
   
   List<QuestionPOJO> li = (List<QuestionPOJO>)q.list(); 
   
   t.commit();
   sess.close();
   
   for(QuestionPOJO e : li)
   {
   		_department = e.getDepartment();
   		_subject = e.getSubject();
   		_chapter = e.getChapter();
   		_question = e.getQuestion();
   		_a = e.getA();
   		_b = e.getB();
   		_c = e.getC();
   		_d = e.getD();
   		_answer = e.getAnswer();
   		_description = e.getDescription(); 
   }
     
    %>
    
    
    
   <h2 style="font-size: 26px;color: black"><%=_department %></h2>
			<h2 style="font-size: 26px; color: black"><%=_subject %></h2>
			<h2 style="font-size: 26px;color: black"><%=_chapter%></h2>
			
			 <br/><br/>
			
			<p style="font-size:18px"><%=_question %></p>
			 <br/><br/>
			<p style="font-size:18px">(A)<%=_a %>   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (B)<%=_b %></p>
			 <br/><br/>
			<p style="font-size:18px">(C)<%=_c %>   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (D)<%=_d %></p>
		
		
		 <br/><br/>
		
		<h3 style="font-size: 26px;color: black">Answer : <p style="font-size:18px"><%=_answer %></p></h3>
		
		 <br/><br/>
		<h3 style="font-size: 26px;color: black">Description :<p style="font-size:18px"><%=_description %> </p></h3>

		
    </div>
    <!-- EOF: #page -->
	


 <br/><br/> <br/><br/> <br/><br/> <br/><br/>
		
</div> 


    </body>

<!-- Mirrored from uvpce.ac.in/new/user/register by HTTrack Website Copier/3.x [XR&CO'2013], Wed, 12 Mar 2014 10:18:24 GMT -->
</html>