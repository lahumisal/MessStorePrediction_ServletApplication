package org.messpredict.model;

public class currentStockModel {
	private int pr_id;
	private String prName;
    private int used_qty;
	public int getPr_id() {
		return pr_id;
	}
	public void setPr_id(int pr_id) {
		this.pr_id = pr_id;
	}
	public String getPrName() {
		return prName;
	}
	public void setPrName(String prName) {
		this.prName = prName;
	}
	public int getUsed_qty() {
		return used_qty;
	}
	public void setUsed_qty(int used_qty) {
		this.used_qty = used_qty;
	}
	public currentStockModel(int pr_id, String prName, int used_qty) {
		this.pr_id = pr_id;
		this.prName = prName;
		this.used_qty = used_qty;
	}
	public currentStockModel() {
	}
    
	
}
