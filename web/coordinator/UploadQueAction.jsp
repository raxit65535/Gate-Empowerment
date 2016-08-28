<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.output.*" %>
<%@page import="org.hibernate.Session"%>
<%@page import="com.secureinfosoft.Hibernate.HibernateUtil"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.secureinfosoft.Hibernate.Img"%>
<%@page import="com.secureinfosoft.Hibernate.MaterialPOJO"%>
<%@page import="com.secureinfosoft.java.*"%>
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
 

<%

	
   File file ;
   int maxFileSize = 5000 * 1024;
   int maxMemSize = 5000 * 1024;
   ServletContext context = pageContext.getServletContext();
   //String filePath = context.getInitParameter("file-upload");
   String filePath =config.getServletContext().getRealPath("/")+"material/";
   // Verify the content type
   String contentType = request.getContentType();
   if ((contentType.indexOf("multipart/form-data") >= 0)) {

      DiskFileItemFactory factory = new DiskFileItemFactory();
      // maximum size that will be stored in memory
      factory.setSizeThreshold(maxMemSize);
      // Location to save data that is larger than maxMemSize.
      factory.setRepository(new File(config.getServletContext().getRealPath("/")+"material/bigfiles/"));

      // Create a new file upload handler
      ServletFileUpload upload = new ServletFileUpload(factory);
      // maximum file size to be uploaded.
      upload.setSizeMax( maxFileSize );
      try{ 
         // Parse the request to get file items.
         List fileItems = upload.parseRequest(request);

         // Process the uploaded file items
         Iterator i = fileItems.iterator();

         out.println("<html>");
         out.println("<head>");
         out.println("<title>JSP File upload</title>");  
         out.println("</head>");
         out.println("<body>");
         while ( i.hasNext () ) 
         {
            FileItem fi = (FileItem)i.next();
            if ( !fi.isFormField () )	
            {
            // Get the uploaded file parameters
            String fieldName = fi.getFieldName();
            String fileName = fi.getName();
            boolean isInMemory = fi.isInMemory();
            long sizeInBytes = fi.getSize();
            // Write the file
            if( fileName.lastIndexOf("\\") >= 0 ){
            file = new File( filePath + 
            fileName.substring( fileName.lastIndexOf("\\"))) ;
            }else{
            file = new File( filePath + 
            fileName.substring(fileName.lastIndexOf("\\")+1)) ;
            }
            
            // rename if file exists
             int j = 1;
			while (file.exists()) { // keep renaming as file_(2) , file_(3) etc.
    			
    				String path = file.getAbsolutePath();
    				int iDot = path.lastIndexOf(".");
    					file = new File(path.substring(0, iDot) +"_(" + ++j + ")" + path.substring(iDot));
    					fileName = file.getName();
						System.out.println(fileName);			
									}


            
            fi.write( file ) ;
            
            
           // MultipartRequest mlt = new MultipartRequest(request,config.getServletContext().getRealPath("/")+"material/");
          
          		String department = (String)coordinator.getAttribute("qupdepartment");
    String subject = (String)coordinator.getAttribute("qupsubject");
    String chapter = (String)coordinator.getAttribute("qupchapter");
    String filepath1 =  filePath+fileName;
    
    int number = QuestionUpload.addquestion(department,subject,chapter,filepath1);
    
    if(number == 420)
    	{
    		response.sendRedirect("UploadQue.jsp?msg=Your Question formate having error (ArrayIndexOutOfBound)...&status=0");
    	}
    	else if(number > 0)
    	{
    	response.sendRedirect("UploadQue.jsp?msg="+number+" questions uploaded...&status=1");
    	}
    	else if(number == 0)
    	{
    	response.sendRedirect("UploadQue.jsp?msg=No questions uploaded...&status=0");
    	}
            
            
            }
         }
         out.println("</body>");
         out.println("</html>");
      }catch(Exception ex) {
         System.out.println(ex);
      }
   			
   			
   }
   
 else{
   
   			response.sendRedirect("UploadQue.jsp?msg=fail to read file ..!!!&status=0");
      
   }
%>