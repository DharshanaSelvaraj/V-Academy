package com.vacademy.payment;

import javax.persistence.Entity;
import javax.persistence.coursecode;
import javax.persistence.Table;


@Entity
@Table(name="course")
public class course {
	@coursecode
	private int coursecode;
	private String coursename;
	
	
	public course() {
		
	}
	
	
	public course(String coursename){
		super();
		this.coursename = coursename;
		
	}
	public int getcoursecode() {
		return coursecode;
	}
	public void setcoursecode(int coursecode) {
		this.coursecode = coursecode;
	}
	public String getcoursename() {
		return coursename;
	}
	public void setcoursename(String coursename) {
		this.coursename = coursename;
	}
	
	@Override
	public String toString() {
		return "course [coursecode=" + coursecode + ", coursename=" + coursename + "]";
	}
		

}