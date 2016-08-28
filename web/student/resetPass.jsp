<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
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
        <title>Student account | U. V. Patel College of Engineering</title>

<style type="text/css" media="all">
@import url("login/new.css");
@import url("login/normalize2b6b.css?n225na");
@import url("login/form.css");
@import url("login/styles.css");

</style>

<script type="text/javascript">
            
            function rax()
            {
    			var p1,p2;
    			p1 = document.getElementById('newpass').value;
	    		p2 = document.getElementById('cnpass').value;
	    		
	    		if(p1.length==0 || p2.length==0)
	    		{
	    			alert("Enter All Fields");
	    			return false;
	    		}
	    		else if(p1.length<5)
	    		{
	    			alert("Please Choose more than 5 charactor for password");
	    			return false;
	    		}
	    		else if(p1!=p2)
	    		{
	    			alert("password not match");
	    			return false;
	    		}
	    		else
	    		{
	    			return true;
	    		}
	    			
    	    }
            
        </script>


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
						 
						 
						 
						 </center>
						 
						 </div>
							
    
    
	<div class="allContent" >
        <div class="leftSidebar" >
       <!-- <h2 style="font-size:20px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;powered by</h2><br/><br/>-->
	   <br/><br/>
        	
        	
        	<div class="sidebarDoctor"><img src="images/uvpcelogo.png" alt="" height="400" width="400"/></div>
        	<h1>What we do!</h1>
            <p style="font:normal;font-size:15px">
            	कर्मण्येवाधिकारस्ते मा फलेषु कदाचन।  <br/>
                                           मा कर्मफलहेतुर्भूर्मा ते सङ्गोस्त्वकर्मणि॥<br/><br/><br/>
			 <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>

               
            </p>
        </div></div>
        <div class="rightSidebar" >                
        

	
	<div id="stylized" class="myform">	

		<form action="resetPassAction.jsp" method="post">
		
		<center><h1>Reset password</h1></center>
		
		<center><h5><font color="black">
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
		
		
		<label>Password
		<span class="small">Level-1</span>	
		</label>
		<input type="password" name="newpass" id="newpass" size="30"/> <br/> <br/>
		
		<%
		
		String uu = request.getQueryString();
		
		 %>
 		<input type="hidden" name="uuid" id="uuid" value="<%=uu %>">
        <label>Conform-Password
		<span class="small">Level-2</span>	
		</label>
		<input type="password" name="cnpass" id="cnpass" size="30"/> <br/> <br/>			
      
		
			<input type="submit" onclick="return rax();"   value="Reset" styleClass="large button black" style="margin-left:90px"/>
			
			<div class="spacer" style="margin-bottom: -330"></div>
		</form>
		
	</div>
		</div>
    <!-- EOF: #page -->

<center></center>

		
</div> 

<div id="footer" style="margin-left: 240px">
        
      <center>
        Copyright &copy; SecureInfosoft
        </center>
    </div>
    </body>

<!-- Mirrored from uvpce.ac.in/new/user/register by HTTrack Website Copier/3.x [XR&CO'2013], Wed, 12 Mar 2014 10:18:24 GMT -->
</html>
