package org.messpredict.model;
import java.sql.*;
import java.util.Objects;
public class YearWiseProductModel {
	private String pr_name;
	private int pr_id;
	private int pr_rate;
	private int qty;
	private Date g_date;
	public int getPr_id() {
		return pr_id;
	}
	public void setPr_id(int pr_id) {
		this.pr_id = pr_id;
	}
	
	public YearWiseProductModel() {
		super();
	}
	public YearWiseProductModel(String pr_name, int pr_id, int pr_rate, int qty, Date g_date) {
		super();
		this.pr_name = pr_name;
		this.pr_id = pr_id;
		this.pr_rate = pr_rate;
		this.qty = qty;
		this.g_date = g_date;
	}
	public String getPr_name() {
		return pr_name;
	}
	public void setPr_name(String pr_name) {
		this.pr_name = pr_name;
	}
	public int getPr_rate() {
		return pr_rate;
	}
	public void setPr_rate(int pr_rate) {
		this.pr_rate = pr_rate;
	}
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	public Date getG_date() {
		return g_date;
	}
	public void setG_date(Date g_date) {
		this.g_date = g_date;
	}
	
}
