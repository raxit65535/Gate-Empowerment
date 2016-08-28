package com.secureinfosoft.java;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.secureinfosoft.Hibernate.CoordinatorPOJO;
import com.secureinfosoft.Hibernate.DepartmentPOJO;
import com.secureinfosoft.Hibernate.HibernateUtil;

public class CoordinatorAdd {

	
	public static boolean check(String email)
	{
		
		Session sess = HibernateUtil.getSessionFactory().openSession();
		Transaction tr = sess.beginTransaction();
		Query q = sess.createQuery("From CoordinatorPOJO");
		List<CoordinatorPOJO> co = (List<CoordinatorPOJO>)q.list();
		
		for(CoordinatorPOJO d : co)
		{
			String em= d.getEmail();
			if(em.equals(email))
			{
				return false;
			}
		}
		
		
		
		return true;
	}
	
	static int status = 0;
	public static int insert(String name,String email,String password,String department,String uuid,String subject)
	{
		//int status = 0;
		org.hibernate.Session session=HibernateUtil.getSessionFactory().openSession();
		Transaction t = session.beginTransaction();
		CoordinatorPOJO copojo = new CoordinatorPOJO();
		
		copojo.setName(name);
		copojo.setEmail(email);
		copojo.setPassword(password);
		copojo.setDepartment(department);
		copojo.setUuid(uuid);
		copojo.setSubject(subject);
		status = (Integer)session.save(copojo);
		
		t.commit();
		session.close();
		return status;
	}
	

	
}
