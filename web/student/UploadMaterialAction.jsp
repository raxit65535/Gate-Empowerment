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
          
          	HttpSession admin = request.getSession();
            String dep = (String)admin.getAttribute("up1"); 
             String nm = (String)admin.getAttribute("up3");
             String sub = (String)admin.getAttribute("up2");
            String des = (String)admin.getAttribute("up4");
            
            String don = "1";
            
            System.out.println(dep);
            System.out.println(nm);
            System.out.println(sub);
            System.out.println(des);
            
            Session sess = HibernateUtil.getSessionFactory().openSession();
            Transaction t = sess.beginTransaction();
            
            MaterialPOJO ob = new MaterialPOJO();
            System.out.println("This is inserting time name :"+fileName);
            ob.setDepartment(dep);
            ob.setSubject(sub);
            ob.setName(nm);
            ob.setDescription(des);
            ob.setFile(fileName);
            ob.setDonation(don);
            
           
            sess.save(ob);
             t.commit();
            sess.close();
            
            out.println("Uploaded Filename: " + filePath + 
            fileName + "<br>");
            
            
            }
         }
         out.println("</body>");
         out.println("</html>");
      }catch(Exception ex) {
         System.out.println(ex);
      }
   			response.sendRedirect("UploadMaterial.jsp?msg=successfully uloaded ..!!!&status=1");
   }
   
 else{
   
   			response.sendRedirect("UploadMaterial.jsp?msg=fail to upload ..!!!&status=0");
      
   }
%>