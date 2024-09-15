package org.messpredict.services;

import java.util.Date;
import java.util.List;

import org.messpredict.model.viewStockListModel;

public interface viewStockService {
	public List<viewStockListModel> isViewYearWiseStock(int year);
	public List<viewStockListModel> isViewMonthWiseStock(String name);
	public List<viewStockListModel> isViewDateWiseStock(String fdate, String ldate);
}
