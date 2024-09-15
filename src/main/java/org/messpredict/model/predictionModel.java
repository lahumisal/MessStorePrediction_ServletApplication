package org.messpredict.model;

public class predictionModel {
	private String month;
	private Double avg_Prod_price;
	public String getMonth() {
		return month;
	}
	public void setMonth(String month) {
		this.month = month;
	}
	public Double getAvg_Prod_price() {
		return avg_Prod_price;
	}
	public void setAvg_Prod_price(Double avg_Prod_price) {
		this.avg_Prod_price = avg_Prod_price;
	}
	public predictionModel(String month, Double avg_Prod_price) {
		this.month = month;
		this.avg_Prod_price = avg_Prod_price;
	}
	public predictionModel() {
	}
	
}
