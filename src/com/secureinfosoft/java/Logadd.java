package com.secureinfosoft.java;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.secureinfosoft.Hibernate.HibernateUtil;
import com.secureinfosoft.Hibernate.UserLogPOJO;

public class Logadd {
	
	static int status = 0;
	public static int addlog(String name,String email,String date,String department,String who)
	{
		
		Session sess1 = HibernateUtil.getSessionFactory().openSession();
		Transaction t1 = sess1.beginTransaction();
		
		UserLogPOJO ob = new UserLogPOJO();
		ob.setName(name);
		ob.setEmail(email);
		ob.setDatetime(date);
		ob.setDepartment(department);
		ob.setWho(who);
		
		status = (Integer)sess1.save(ob);
		t1.commit();
		sess1.close();
		return status;
	}

}
