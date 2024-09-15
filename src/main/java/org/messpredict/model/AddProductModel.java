package org.messpredict.model;

public class AddProductModel {
	private String prodName;
	private String prodCat;
	private int price;
	public String getProdName() {
		return prodName;
	}
	public void setProdName(String prodName) {
		this.prodName = prodName;
	}
	public String getProdCat() {
		return prodCat;
	}
	public void setProdCat(String prodCat) {
		this.prodCat = prodCat;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public AddProductModel(String prodName, String prodCat, int price) {
		this.prodName = prodName;
		this.prodCat = prodCat;
		this.price = price;
	}
	public AddProductModel() {
	}
	
	
	
}
