package com.secureinfosoft.java;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.secureinfosoft.Hibernate.HibernateUtil;
import com.secureinfosoft.Hibernate.StudentPOJO;

public class StudentRegistration {
	
	static int status=0;
	public static int insert(String name,String email,String password,String department,String phone,String uuid,String protocol,String datatime)
	{
		Session sess = HibernateUtil.getSessionFactory().openSession();
		Transaction tr = sess.beginTransaction();
		
		StudentPOJO student = new StudentPOJO();
		student.setName(name);
		student.setEmail(email);
		student.setDepartment(department);
		student.setPassword(password);
		student.setPhone(phone);
		student.setUuid(uuid);
		student.setProtocol(protocol);
		student.setDatetime(datatime);
		
		status = (Integer)sess.save(student);
		tr.commit();
		sess.close();
		
		
		return status;
	}
	
	public static boolean check(String email)
	{
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction t = session.beginTransaction();
		Query q = session.createQuery("From StudentPOJO where email = :e");
		q.setString("e", email);
		List<StudentPOJO> std = (List<StudentPOJO>)q.list();
		t.commit();
		session.close();
		
		for(StudentPOJO s : std)
		{
			String em = s.getEmail();
			
			if(em.equals(email))
			{
				return false;
				
			}
			
		}
		
		
		return true;
	}
	
public static boolean emailme(String email,String uu)
{
	

	Mail m = new Mail();
	m.setTo(email);
		m.setSmtpServ("smtp.gmail.com");
		m.setSubject("Activating Student");
		m.setMessage("http://raxit:8080/GATE-Empowerment/student/activatestudent.jsp?"+uu);
		email = m.getTo();
		m.setFrom("GATE-Empowerment");
		
		int result;
		//int k =0;


		result = m.sendMail();
		if(result == 0)
		{
			//return mapping.findForward("success");
			//response.sendRedirect("studentLogin.jsp?msg=mail successfuly sent....!!");
			//k = k+1;
			//System.out.println(k);
			System.out.println("mail scuessfully sent ");
			return true;
		}
		else
		{
			//response.sendRedirect("studentLogin.jsp?msg=Error in sending mail....try again!!");
			//return mapping.findForward("failure");
			//System.out.println(k);
			System.out.println("error in sending email");
			return false;
		}
}

}