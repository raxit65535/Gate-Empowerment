<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%> 
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
 
<html> 
	<head>
		<title>JSP for ForgotPassForm form</title>
		<link rel="stylesheet" href="css/form.css" type="text/css" />
        <link rel="stylesheet" href="css/styles.css" type="text/css" />
		
			<script type="text/javascript">
            
            function rax()
            {
    			var e;
    			 var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
    			e= document.getElementById('email').value;
    			
    			if(e.length==0)
    			{
    				alert("Please Enter Email ID");
    				return false;
    			}
    			else if(!filter.test(e))
    			{
    				alert("Enter Valid Email ");
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
	
	<center>
	<div id="header">
    	<div class="logo"><!--  <img src="images/gate.png" height="100px" width="200px" style="margin-top: 20" />-->GATE - Empowerment</div>
        
      <!--   <div class="slogan1">Provide Better Care</div>-->
        <div class="slogan2">technology's Edge</div> 
    </div>
    </center>
    
    
    
	<div class="allContent">
        <div class="leftSidebar">
        <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;powered by</h2><br/><br/>
        	<div class="sidebarDoctor"><img src="images/secureinfosoft.png" alt="" height="100" width="200"/></div></br>
        	
        	<div class="sidebarDoctor"><img src="images/uvpcelogo.png" alt="" height="100" width="200"/></div></br>
        	<h1>What we do!</h1>
            <p>
            	An extensive number of unique Flash Templates is at your service. All templates on our site were created specially for you! Our independent designers created flash professional templates. Also our templates are unique. It means you can use our flash templates to create your own site!<br />
                <span><a href="">see more</a></span><br /><br />
                Our studio offers a big choice of free flash templates categories for your business and personal needs. By using our unique products, you can create an excellent animated website and spend minimum time and money on it. Most of our templates are<br />
                <span><a href="">see more</a></span> 
            </p>
        </div></div>
        <div class="rightSidebar" >                
        
	
	<div id="stylized" class="myform">
		<form action="">
		<center><h1>Forgot passwd form<br/><br/></h1></center>	
		<label>Email
		<span class="samll">Enter Your Email_ID</span>
		</label>
		<input type="text" id="email_id" name="email_id"/><br/>
		<br/><br/>
			<html:submit styleClass="large button black"  onclick="return rax();" style="margin-left:90px" />
		<div class="spacer" style="margin-bottom: -350"></div>
			
		</form>
		</div>
		
		
		<div id="footer">
        
      <center>
        Copyright &copy; SecureInfosoft
        </center>
    </div></div>
		
		
	</body>
</html>

