package com.secureinfosoft.java;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.secureinfosoft.Hibernate.ChapterPOJO;
import com.secureinfosoft.Hibernate.HibernateUtil;
import com.secureinfosoft.Hibernate.SubjectPOJO;

public class ChapterAdd {
	
	
	public static boolean check(String chapter,String department,String subject)
	{
		
		Session sess = HibernateUtil.getSessionFactory().openSession();
		Transaction tr = sess.beginTransaction();
		Query q = sess.createQuery("From ChapterPOJO where department =:d and subject =:s and chapter =:c");
		q.setString("d",department);
		q.setString("s",subject);
		q.setString("c",chapter);
		List<ChapterPOJO> chap = (List<ChapterPOJO>)q.list();
		
		for(ChapterPOJO d : chap)
		{
			String ch = d.getChapter();
			if(ch.equals(chapter))
			{
				return false;
			}
		}
		
		
		
		return true;
	}
	
	
	static int status = 0;
	public static int insert(String department,String subject,String chapter)
	{
		//int status = 0;
		org.hibernate.Session session=HibernateUtil.getSessionFactory().openSession();
		Transaction t = session.beginTransaction();
		ChapterPOJO chpojo = new ChapterPOJO();
		
		chpojo.setDepartment(department);
		chpojo.setSubject(subject);
		chpojo.setChapter(chapter);
		status = (Integer)session.save(chpojo);
		
		t.commit();
	
		session.close();
		return status;
	}

}
