package com.secureinfosoft.java;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.secureinfosoft.Hibernate.DepartmentPOJO;
import com.secureinfosoft.Hibernate.HibernateUtil;

public class DepartmentAdd {
	
	public static boolean check(String department)
	{
		
		Session sess = HibernateUtil.getSessionFactory().openSession();
		Transaction tr = sess.beginTransaction();
		Query q = sess.createQuery("From DepartmentPOJO");
		List<DepartmentPOJO> dep = (List<DepartmentPOJO>)q.list();
		
		for(DepartmentPOJO d : dep)
		{
			String dd = d.getName();
			if(dd.equals(department))
			{
				return false;
			}
		}
		
		
		
		return true;
	}
	
	static int status = 0;
	public static int insert(String department)
	{
		//int status = 0;
		org.hibernate.Session session=HibernateUtil.getSessionFactory().openSession();
		Transaction t = session.beginTransaction();
		DepartmentPOJO dptpojo = new DepartmentPOJO();
		System.out.println("seting name");
		dptpojo.setName(department);
		System.out.println("saving");
		status = (Integer)session.save(dptpojo);
		System.out.println("commitiong");
		t.commit();
		System.out.println("closing");
		session.close();
		return status;
	}
	

}
