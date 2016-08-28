/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.secureinfosoft.student;

import java.security.MessageDigest;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.secureinfosoft.java.Logadd;
import com.secureinfosoft.java.MD5password;
import com.secureinfosoft.Hibernate.HibernateUtil;
import com.secureinfosoft.Hibernate.StudentPOJO;
import com.secureinfosoft.Hibernate.UserLogPOJO;

/** 
 * MyEclipse Struts
 * Creation date: 02-02-2014
 * 
 * XDoclet definition:
 * @struts.action path="/studentLogin" name="studentLoginForm" input="student/studentLogin.jsp" scope="request" validate="true"
 */
public class StudentLoginAction extends Action {
	/*
	 * Generated Methods
	 */

	/** 
	 * Method execute
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		StudentLoginForm studentLoginForm = (StudentLoginForm) form;// TODO Auto-generated method stub
		
		String email = studentLoginForm.getLoginid();
		String pass = studentLoginForm.getPasswd();
		String passwd = null;
		
		String _name = null;
		String _email = null;
		String _uuid = null;
		String _department = null;
		
		try
		{
		MessageDigest md=MessageDigest.getInstance("MD5");
		String input=pass;
		md.update(input.getBytes());
		byte[] output=md.digest();
		MD5password sd = new MD5password();
		passwd = sd.bytesToHex(output);
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		
		
		Session sess = HibernateUtil.getSessionFactory().openSession();
		Transaction t = sess.beginTransaction();
		
		Query q = sess.createQuery("From StudentPOJO where email = :e and password = :p and protocol = :pt");
		q.setString("e", email);
		q.setString("p", passwd);
		q.setString("pt","1");
		List<StudentPOJO> detail = (List<StudentPOJO>)q.list();
		t.commit();
		sess.close();
		
		
		if(detail.size() > 0)
		{
		
			 int status = 0;
			
			
			for(StudentPOJO e : detail)
			{
				_name = e.getName();
				_email = e.getEmail();
				_uuid = e.getUuid();
				_department = e.getDepartment();
			}
			
			HttpSession student = request.getSession();
			student.setAttribute("name",_name);
			student.setAttribute("email",_email);
			student.setAttribute("uuid",_uuid);
			student.setAttribute("department",_department);
			
			
			
			DateFormat df = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
			Date dd = new Date();
			String _date = df.format(dd);
			String wh = "0";
			
			status = Logadd.addlog(_name, _email, _date,_department,wh);
			
			if(status >0)
			{
		
				return mapping.findForward("success");
				
			}
		
			
		}
		
		
		
		
		return mapping.findForward("failure");
	}
}