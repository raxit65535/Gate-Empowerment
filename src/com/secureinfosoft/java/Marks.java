package com.secureinfosoft.java;

import org.hibernate.Transaction;
import org.hibernate.classic.Session;

import com.secureinfosoft.Hibernate.HibernateUtil;
import com.secureinfosoft.Hibernate.StudentMarksPOJO;

public class Marks {

	static int status = 0;
	public static int addmarks(String email,String uuid,String type,String datetime,String department,String subject,String chapter,String marks)
	{
		
		
		Session sess = HibernateUtil.getSessionFactory().openSession();
		Transaction t = sess.beginTransaction();
		
		StudentMarksPOJO ob = new StudentMarksPOJO();
		
		ob.setEmail(email);
		ob.setUuid(uuid);
		ob.setType(type);
		ob.setDatetime(datetime);
		ob.setDepartment(department);
		ob.setMarks(marks);
		ob.setSubject(subject);
		ob.setChapter(chapter);
		status = (Integer) sess.save(ob);
		t.commit();
		sess.close();
		
		
		return status;
	}
	
	
}
