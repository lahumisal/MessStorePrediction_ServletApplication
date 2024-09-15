package org.messpredict.model;
import java.sql.*;
public class viewStockListModel {
	private int pr_id;
	private String pr_name;
	private int g_qty;
	private int pr_rate;
	private Date g_date;

	public int getPr_id() {
		return pr_id;
	}
	public void setPr_id(int pr_id) {
		this.pr_id = pr_id;
	}
	public String getPr_name() {
		return pr_name;
	}
	public void setPr_name(String pr_name) {
		this.pr_name = pr_name;
	}
	public int getG_qty() {
		return g_qty;
	}
	public void setG_qty(int g_qty) {
		this.g_qty = g_qty;
	}
	public int getPr_rate() {
		return pr_rate;
	}
	public void setPr_rate(int pr_rate) {
		this.pr_rate = pr_rate;
	}
	public Date getG_date() {
		return g_date;
	}
	public void setG_date(Date g_date) {
		this.g_date = g_date;
	}
	public viewStockListModel(String pr_name, int g_qty, int pr_rate, Date g_date) {
		this.pr_name = pr_name;
		this.g_qty = g_qty;
		this.pr_rate = pr_rate;
		this.g_date = g_date;
	}
	public viewStockListModel() {
	}
	
}
