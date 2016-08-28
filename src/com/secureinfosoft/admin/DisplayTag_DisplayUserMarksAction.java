/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.secureinfosoft.admin;

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

import com.secureinfosoft.Hibernate.HibernateUtil;
import com.secureinfosoft.Hibernate.StudentMarksPOJO;

/** 
 * MyEclipse Struts
 * Creation date: 02-13-2014
 * 
 * XDoclet definition:
 * @struts.action path="/displayTag_DisplayUserMarks" name="displayTag_DisplayUserMarksForm" input="admin/displayTag_DisplayUserMarks.jsp" scope="request" validate="true"
 */
public class DisplayTag_DisplayUserMarksAction extends Action {
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
		DisplayTag_DisplayUserMarksForm displayTag_DisplayUserMarksForm = (DisplayTag_DisplayUserMarksForm) form;// TODO Auto-generated method stub
		
		
		String _search = displayTag_DisplayUserMarksForm.getSearch();
		String _value = displayTag_DisplayUserMarksForm.getValue();
		
		HttpSession admin = request.getSession();
		String type = (String)admin.getAttribute("type");
		System.out.println(type);
		
		if(_search.equals("Email"))
		{
			Session sess = HibernateUtil.getSessionFactory().openSession();
			Transaction t = sess.beginTransaction();
			Query q = sess.createQuery("From StudentMarksPOJO where type = :t and email = :e");
			q.setString("t", type);
			q.setString("e", _value);
			
			List<StudentMarksPOJO> l = (List<StudentMarksPOJO>)q.list();
			request.getSession().setAttribute("data", l);
			
			return mapping.findForward("success");
		
		}
		else if(_search.equals("Department"))
		{
			Session sess = HibernateUtil.getSessionFactory().openSession();
			Transaction t = sess.beginTransaction();
			Query q = sess.createQuery("From StudentMarksPOJO where type = :t and department = :e");
			q.setString("t", type);
			q.setString("e", _value);
			
			List<StudentMarksPOJO> l = (List<StudentMarksPOJO>)q.list();
			request.getSession().setAttribute("data", l);
			
			return mapping.findForward("success");
		}
		else if(_search.equals("DateTime"))
		{
			Session sess = HibernateUtil.getSessionFactory().openSession();
			Transaction t = sess.beginTransaction();
			Query q = sess.createQuery("From StudentMarksPOJO where type = :t and datetime = :e");
			q.setString("t", type);
			q.setString("e", _value);
			
			List<StudentMarksPOJO> l = (List<StudentMarksPOJO>)q.list();
			request.getSession().setAttribute("data", l);
			
			return mapping.findForward("success");
		}
		
		Session sess = HibernateUtil.getSessionFactory().openSession();
		Transaction t = sess.beginTransaction();
		Query q = sess.createQuery("From StudentMarksPOJO where type = :t and marks = :e");
		q.setString("t", type);
		q.setString("e", _value);
		
		List<StudentMarksPOJO> l = (List<StudentMarksPOJO>)q.list();
		request.getSession().setAttribute("data", l);
		
		return mapping.findForward("success");
	
	}
}