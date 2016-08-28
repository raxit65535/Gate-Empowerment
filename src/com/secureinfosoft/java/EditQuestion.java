package com.secureinfosoft.java;

import org.hibernate.Query;
import org.hibernate.Transaction;

import com.secureinfosoft.Hibernate.CoordinatorPOJO;
import com.secureinfosoft.Hibernate.HibernateUtil;

public class EditQuestion {

	
	static int status = 0;
	public static int update(String department,String subject,String chapter,String question,String a,String b,String c,String d,String description,String answer,String donation,String id)
	{
		
		org.hibernate.Session session=HibernateUtil.getSessionFactory().openSession();
		Transaction t = session.beginTransaction();
		
		Query q = session.createQuery("Update QuestionPOJO set department = :d , subject = :s , chapter = :c , question = :q , A = :opa , B = :opb , C = :opc , D = :opd , answer = :ans , description = :des , donation = :don where id = :i");
		q.setString("d",department);
		q.setString("s",subject);
		q.setString("c",chapter);
		q.setString("q",question);
		q.setString("opa",a);
		q.setString("opb",b);
		q.setString("opc",c);
		q.setString("opd",d);
		q.setString("des",description);
		q.setString("don",donation);
		q.setString("ans",answer);
		q.setString("i", id);
		
		status = q.executeUpdate();
		t.commit();
		session.close();
		return status;
	}
	

	
}
