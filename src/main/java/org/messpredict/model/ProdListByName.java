package org.messpredict.model;

public class ProdListByName {
	private int prod_id;
	private String prod_name;
	private String prod_cat;
	private int prod_price;
	public int getProd_id() {
		return prod_id;
	}
	public void setProd_id(int prod_id) {
		this.prod_id = prod_id;
	}
	public String getProd_name() {
		return prod_name;
	}
	public void setProd_name(String prod_name) {
		this.prod_name = prod_name;
	}
	public String getProd_cat() {
		return prod_cat;
	}
	public void setProd_cat(String prod_cat) {
		this.prod_cat = prod_cat;
	}
	public int getProd_price() {
		return prod_price;
	}
	public void setProd_price(int prod_price) {
		this.prod_price = prod_price;
	}
	public ProdListByName() {
	}
	public ProdListByName(int prod_id, String prod_name, String prod_cat, int prod_price) {
		this.prod_id = prod_id;
		this.prod_name = prod_name;
		this.prod_cat = prod_cat;
		this.prod_price = prod_price;
	}
	
	
}
