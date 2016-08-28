package com.secureinfosoft.java;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.secureinfosoft.Hibernate.DepartmentPOJO;
import com.secureinfosoft.Hibernate.HibernateUtil;
import com.secureinfosoft.Hibernate.QuestionPOJO;

public class QuestionAdd {
	
	static int status = 0;
	public static int addquestion(String department,String subject,String chapter,String question,String A ,String B,String C,String D,String answer,String description,String donation,String uuid)
	{
		//int status = 0;
		org.hibernate.Session session=HibernateUtil.getSessionFactory().openSession();
		Transaction t = session.beginTransaction();
		QuestionPOJO qpojo = new QuestionPOJO();
		qpojo.setDepartment(department);
		qpojo.setSubject(subject);
		qpojo.setChapter(chapter);
		qpojo.setQuestion(question);
		qpojo.setA(A);
		qpojo.setB(B);
		qpojo.setC(C);
		qpojo.setD(D);
		qpojo.setAnswer(answer);
		qpojo.setDescription(description);
		qpojo.setDonation(donation);
		qpojo.setUuid(uuid);
		status = (Integer)session.save(qpojo);
		
		t.commit();
		System.out.println("closing");
		session.close();
		return status;
	}
	
	
	
	public static boolean checkque(String question)
	{
		
		Session sess = HibernateUtil.getSessionFactory().openSession();
		Transaction tr = sess.beginTransaction();
		Query q = sess.createQuery("From QuestionPOJO");
		List<QuestionPOJO> que = (List<QuestionPOJO>)q.list();
		
		for(QuestionPOJO qe : que)
		{
			String dd = qe.getQuestion();
			if(dd.equals(question))
			{
				return false;
			}
		}
	
		return true;
	}
}
