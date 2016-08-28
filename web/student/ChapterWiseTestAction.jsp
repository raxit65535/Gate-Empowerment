<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.secureinfosoft.Hibernate.*"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.secureinfosoft.java.QuizList"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
HttpSession student = request.getSession();
String email = (String)student.getAttribute("email");


if(email == null)
{
	response.sendRedirect("studentLogin.jsp");
}

 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Chapter Wise Test Action</title>
    
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
    <% 
    	int n=15;
     	String department = request.getParameter("department");
   		String subject  = request.getParameter("subject");
   		String chapter = request.getParameter("chapter");
   		
   		student.setAttribute("quizsubject",subject);
   		student.setAttribute("quizchapter",chapter);
   		
   		
   		System.out.println(department);
   		System.out.println(subject);
   		System.out.println(chapter);
   		
   		Session sess = HibernateUtil.getSessionFactory().openSession();
    Transaction t = sess.beginTransaction();
    Query q = sess.createQuery("From QuestionPOJO where department = :d and subject = :s and chapter = :c and donation =:don");
    q.setString("d",department);
    q.setString("s",subject);
    q.setString("c",chapter);
    q.setString("don","0");
    List<QuestionPOJO> l = (List<QuestionPOJO>)q.list(); 
    
    t.commit();
    sess.close();
    
     List<QuizList> exam = new ArrayList<QuizList>();
   
    int size = l.size();
    String[][] Quiz = new String[size][13];
    int[] rnd = new int[15];
    int i = 0;
    
    System.out.println("Inseting values into list to array");
    
    for(QuestionPOJO e : l)
    {
     int id= e.getId();
     String id1 = Integer.toString(id);
	 String department1 = e.getDepartment();
	 String subject1 = e.getSubject();
	 String chapter1 = e.getChapter();
	 String question = e.getQuestion();
	 String A = e.getA();
	 String B = e.getB();
	 String C = e.getC();
	 String D = e.getD();
	 String answer = e.getAnswer();
	 String description = e.getDescription();
	 String donation = e.getDonation();
	 String uuid = e.getUuid();
	 
	 
	 Quiz[i][0] = id1;
	 Quiz[i][1] = department1; 
	 Quiz[i][2] = subject1;
	 Quiz[i][3] = chapter1;
	 Quiz[i][4] = question;
	 Quiz[i][5] = A;
	 Quiz[i][6] = B;
	 Quiz[i][7] = C;
	 Quiz[i][8] = D;
	 Quiz[i][9] = answer;
	 Quiz[i][10] = description;
     Quiz[i][11] = donation;
     Quiz[i][12] = uuid;
     
     
     
     i=i+1;	 
    }
    
    System.out.println("generation 15 random numbers");
    
    for(int j=0;j<rnd.length;j++)
    {
    	Random rm = new Random();
    	int ind  = rm.nextInt(size);
    	rnd[j] = ind;
    	
    }

   
    System.out.println("creation of quiz question list");
    
    for(int p=0;p<rnd.length;p++)
    
    {
    		int b = rnd[p];
            System.out.println(b);
    		
    		String id = Quiz[b][0]; 
    		int id2 = Integer.parseInt(id);
    		String department2 = Quiz[b][1];
    		String subject2 = Quiz[b][2];
    		String chapter2 = Quiz[b][3];
    		String question = Quiz[b][4];
    		String A = Quiz[b][5];
    		String B =Quiz[b][6];
    		String C = Quiz[b][7];
    		String D = Quiz[b][8];
    		String answer = Quiz[b][9];
    		String description = Quiz[b][10];
    		String donation = Quiz[b][11];
    		String uuid = Quiz[b][12];
    		String studentanswer = "N";
    		
    		System.out.println("entry starting into list");
    		
    		QuizList itr = new QuizList();
    		//itr.details(id2,department2,subject2,chapter2,question,A,B,C,D,answer,description,donation,uuid,studentanswer);
    		
    		
    		itr.setId(id2);
    		itr.setDepartment(department2);
    		itr.setQuestion(question);
    		itr.setA(A);
    		itr.setB(B);
    		itr.setC(C);
    		itr.setD(D);
    		itr.setAnswer(answer);
    		itr.setDescription(description);
    		itr.setDonation(donation);
    		itr.setUuid(uuid);
    		itr.setStudentanswer(studentanswer);
    		
    		exam.add(itr);
    		System.out.println("Entry complete" + answer);
    		//p=p+1;
    }
    
    
    	request.getSession().setAttribute("test",exam);
    	response.sendRedirect("Quiz.jsp");

  
     %>
  </body>
</html>
