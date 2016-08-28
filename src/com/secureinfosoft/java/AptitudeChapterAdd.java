package com.secureinfosoft.java;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.secureinfosoft.Hibernate.AptitudeChaptersPOJO;
import com.secureinfosoft.Hibernate.HibernateUtil;

public class AptitudeChapterAdd {

	
	public static boolean checkchapter(String chapter)
	{
		Session sess = HibernateUtil.getSessionFactory().openSession();
		Transaction t = sess.beginTransaction();
		Query q = sess.createQuery("From AptitudeChaptersPOJO");
		List<AptitudeChaptersPOJO> li = (List<AptitudeChaptersPOJO>)q.list();
		t.commit();
		sess.close();
		
		for(AptitudeChaptersPOJO e : li)
		{
				String chap = e.getChapter();
				
				if(chap.equals(chapter))
				{
					return false;
				}
			
		}
		
		
		return true;
	}
	
	static int status=0;
	public static int addchapter(String chapter)
	{
		Session sess1 = HibernateUtil.getSessionFactory().openSession();
		Transaction t1 = sess1.beginTransaction();
		
		AptitudeChaptersPOJO ob = new AptitudeChaptersPOJO();
		ob.setChapter(chapter);
		
		status = (Integer) sess1.save(ob);
		t1.commit();
		sess1.close();
		
		
		return status;
	}
	
}
