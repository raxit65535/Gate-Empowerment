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

 <script type="text/javascript" lang="javascript">
            
             function b()
             {
                 var user = document.getElementById('loginid').value;
                 //var pass = document.getElementById('passwd').value;
                 var reg = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
                  /*var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;*/
                 
                 
                    
                   if(reg.test(user)==false)
                            {
                              alert("only gmail is availvable in our service...please use gmailID");
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
                                           मा कर्मफलहेतुर्भूर्मा ते सङ्गोस्त्वकर्मणि॥<br/><br/>

			 <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>

               
            </p>
        </div></div>
        <div class="rightSidebar" >                
        

						 
		<div id="stylized" class="myform">	
		<html:form action="/studentLogin">
			<center><h1>Student Login</h1></center>
			
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
			
			
			
		<label>Email
		<span class="small">Enter EmailID</span>
		</label>
		<input class="field" type="text" name="loginid" id="loginid" value="" size="23" required = "required" />
					
		<label>Password
		<span class="small">Enter Password</span>
		</label>
		<input class="field" type="password" name="passwd" id="passwd" size="23" required = "required"/>		
		
			
					
		<input type="submit" name="submit" value="Login" style="margin-left: 90px" onclick="return b();"/>
					
					
			<div class="spacer" style="margin-bottom: -260px"></div>	
		</html:form>
	<center><a href="forgotPass.jsp">forgot password ?</a> <br/>
	<a href="studentRegistration.jsp">Student Registration !!</a>
		</center>
		
		</div>
		
		
    </div>
    <!-- EOF: #page -->

<center></center>

		
</div> 

<div id="footer" style="margin-left: 241px">
        
      <center>
        Copyright &copy; SecureInfosoft
        </center>
    </div>
    </body>

<!-- Mirrored from uvpce.ac.in/new/user/register by HTTrack Website Copier/3.x [XR&CO'2013], Wed, 12 Mar 2014 10:18:24 GMT -->
</html>
