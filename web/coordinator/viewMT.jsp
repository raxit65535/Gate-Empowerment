<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.net.URLDecoder"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>download</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <%@page import="java.io.*,javax.servlet.*,javax.servlet.http.*" %>  
  
<%  

String name = URLDecoder.decode(request.getQueryString(),"UTF-8");
System.out.println(name);
String fileName=config.getServletContext().getRealPath("/")+"material/"+name;  

File f=new File(fileName);  
int length=0;  
ServletOutputStream op=response.getOutputStream();  
ServletContext context=getServletConfig().getServletContext();  
String mimetype=context.getMimeType(fileName);  
response.setContentType((mimetype!=null) ? mimetype : "application/octet-stream");  
response.setContentLength((int)f.length());  
response.setHeader("Content-Disposition","attachment;filename="+name);  
//complete file downloading using buffering  
byte[] bbuf=new byte[1024];  
DataInputStream in=new DataInputStream(new FileInputStream(f));  
  
while((in!=null)&&((length=in.read(bbuf))!=-1))  
{  
    op.write(bbuf,0,length);  
}  
in.close();  
op.flush();  
op.close();  

%>  
  </body>
</html>
