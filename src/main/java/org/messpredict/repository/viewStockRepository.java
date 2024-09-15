package org.messpredict.repository;
import java.util.*;

import org.messpredict.model.viewStockListModel;
public interface viewStockRepository {
	public List<viewStockListModel> isViewYearWiseStock(int year);
	public List<viewStockListModel> isViewMonthWiseStock(String name);
	public List<viewStockListModel> isViewDateWiseStock(String fdate,String ldate);
}
