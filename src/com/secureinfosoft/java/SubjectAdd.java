package com.secureinfosoft.java;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.secureinfosoft.Hibernate.DepartmentPOJO;
import com.secureinfosoft.Hibernate.HibernateUtil;
import com.secureinfosoft.Hibernate.StudentPOJO;
import com.secureinfosoft.Hibernate.SubjectPOJO;

public class SubjectAdd {

	public static boolean check(String subject)
	{
		
		Session sess = HibernateUtil.getSessionFactory().openSession();
		Transaction tr = sess.beginTransaction();
		Query q = sess.createQuery("From SubjectPOJO");
		List<SubjectPOJO> dep = (List<SubjectPOJO>)q.list();
		
		for(SubjectPOJO d : dep)
		{
			String sb = d.getSubject();
			if(sb.equals(subject))
			{
				return false;
			}
		}
		
		
		
		return true;
	}
	
	
	static int status = 0;
	public static int insert(String department,String subject)
	{
		//int status = 0;
		org.hibernate.Session session=HibernateUtil.getSessionFactory().openSession();
		Transaction t = session.beginTransaction();
		SubjectPOJO stpojo = new SubjectPOJO();
		
		stpojo.setDepartment(department);
		stpojo.setSubject(subject);
		
		status = (Integer)session.save(stpojo);
		
		t.commit();
	
		session.close();
		return status;
	}
	
	
}
