package com.secureinfosoft.java;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionBindingEvent;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.omg.CORBA.Request;

import antlr.collections.List;

import com.secureinfosoft.Hibernate.HibernateUtil;
import com.secureinfosoft.Hibernate.QuestionPOJO;
import com.sun.mail.iap.Response;
import com.sun.org.apache.regexp.internal.recompile;

public class QuestionUpload  {
	//static int counter = 0;
	public static int addquestion(String department,String subject,String chapter,String Path)
	{
		BufferedReader br = null;
		int counter=0;
		//List l = new ArrayList();
		
		 
		try {
			
			String sCurrentLine;
			String str = "@";
			
			br = new BufferedReader(new FileReader(Path));

			while ((sCurrentLine = br.readLine()) != null) 
			{
				
				int j=1;
				String[] A = new String[7];
				A[0] = sCurrentLine;
				try
				{
				while(!(sCurrentLine = br.readLine()).equals(str))
				{
					A[j] = sCurrentLine;
					//System.out.println(A[j]);
					j=j+1;	
				}
				}
				catch (ArrayIndexOutOfBoundsException e) {
					return 420;
				}
				
				
				boolean rax = QuestionUpload.checkarray(A);
				boolean heli = QuestionUpload.checkquestion(A, department, subject, chapter);
				
			/*	System.out.println("after the first iteration array is");
				for(int i=0;i<A.length;i++)
				{
					System.out.println(A[i]);
				}*/
				
				if(rax ==  true && heli == true)
				{
				
				int status = 0;
				UUID idone = UUID.randomUUID();
				String uu = idone.toString();
				Session sess = HibernateUtil.getSessionFactory().openSession();
				Transaction t = sess.beginTransaction();
				
				QuestionPOJO q = new QuestionPOJO();
				q.setDepartment(department);
				q.setSubject(subject);
				q.setChapter(chapter);
				q.setQuestion(A[0]);
				q.setA(A[1]);
				q.setB(A[2]);
				q.setC(A[3]);
				q.setD(A[4]);
				q.setAnswer(A[5]);
				q.setDescription(A[6]);
				q.setDonation("0");
				q.setUuid(uu);
				sess.save(q);
				t.commit();
				sess.close();
				
				 counter = counter+1;
				}
				
				
			}

		} catch (IOException e) {
			
			e.printStackTrace();
			
			
		} finally {
			try {
				if (br != null)br.close();
			} catch (IOException ex) {
				ex.printStackTrace();
			}
		}
		System.out.println(counter);
		
		
		return counter;
	}
	
	
	public static boolean checkarray(String A[])
	{
		
		int i;
		for(i=0;i<7;i++)
		{
			if(A[i] == null)
			{
				return false;
			}
		}
		
		
		
		return true;
	}
	
	public static boolean checkquestion(String A[],String department,String subject,String chapter)
	{
		
		String question = A[0];
		String qu = null;
		
		
		Session sess = HibernateUtil.getSessionFactory().openSession();
		Transaction t = sess.beginTransaction();
		Query q = sess.createQuery("From QuestionPOJO where department = :d and subject = :s and chapter = :c");
		q.setString("d",department);
		q.setString("s",subject);
		q.setString("c",chapter);
		
		java.util.List<QuestionPOJO> l = (java.util.List<QuestionPOJO>)q.list();
		
		t.commit();
		sess.close();
		
		
		for(QuestionPOJO e : l)
		{
			qu = e.getQuestion();
			if(qu.equals(question))
			{
				return false;
			}
			
		}
		
		
		return true;
	}
	
	
	
}
