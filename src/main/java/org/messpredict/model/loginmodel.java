package org.messpredict.model;

public class loginmodel {
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
	public loginmodel(String user, String pass) {
		this.user = user;
		this.pass = pass;
	}
	public loginmodel() {
	}
	public String toString() {
		return "["+user+","+pass+","+"]";
	}
	public int hashCode() {
		return user.length()*1000;
	}
	public boolean equals(Object obj) {
		loginmodel m=(loginmodel)obj;
		if(m.user.equals(this.user)&& m.pass.equals(this.pass)) {
			return true;
		}else {
			return false;
		}
	}
}
