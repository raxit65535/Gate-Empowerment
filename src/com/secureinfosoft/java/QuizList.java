package com.secureinfosoft.java;

import javax.persistence.Lob;

public class QuizList {
	
	private int id;
	private String department;
	private String subject;
	private String chapter;
	private String question;
	private String A;
	private String B;
	private String C;
	private String D;
	private String answer;
	private String description;
	private String donation;
	private String uuid;
	private String studentanswer;
	
	
	public void details(int id,String department,String subject,String chapter,String question,String A,String B,String C,String D,String answer,String description,String donation,String uuid,String studentanswer)
	{
		this.id = id;
		this.department = department;
		this.subject = subject;
		this.chapter = chapter;
		this.question = question;
		this.A = A;
		this.B = B;
		this.C = C;
		this.D = D;
		this.description = description;
		this.donation = donation;
		this.uuid = uuid;
		this.studentanswer = studentanswer;
	
	}
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getChapter() {
		return chapter;
	}
	public void setChapter(String chapter) {
		this.chapter = chapter;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getA() {
		return A;
	}
	public void setA(String a) {
		A = a;
	}
	public String getB() {
		return B;
	}
	public void setB(String b) {
		B = b;
	}
	public String getC() {
		return C;
	}
	public void setC(String c) {
		C = c;
	}
	public String getD() {
		return D;
	}
	public void setD(String d) {
		D = d;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getDonation() {
		return donation;
	}
	public void setDonation(String donation) {
		this.donation = donation;
	}
	public String getUuid() {
		return uuid;
	}
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	public String getStudentanswer() {
		return studentanswer;
	}
	public void setStudentanswer(String studentanswer) {
		this.studentanswer = studentanswer;
	}
	
	
	

}
