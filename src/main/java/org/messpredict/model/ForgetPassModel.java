package org.messpredict.model;

public class ForgetPassModel {
	private String user;
	private String pass;
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public ForgetPassModel(String user, String pass) {
		this.user = user;
		this.pass = pass;
	}
	public ForgetPassModel() {
		// TODO Auto-generated constructor stub
	}
	
	
}
