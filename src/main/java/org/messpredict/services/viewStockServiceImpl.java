package org.messpredict.services;

import java.util.Date;
import java.util.List;

import org.messpredict.model.viewStockListModel;
import org.messpredict.repository.viewStockRepository;
import org.messpredict.repository.viewStockRepositoryImpl;

public class viewStockServiceImpl implements viewStockService {
	
	viewStockRepository stockRepo=new viewStockRepositoryImpl();
	
	
	@Override
	public List<viewStockListModel> isViewYearWiseStock(int year) {
		return stockRepo.isViewYearWiseStock(year);
	}
	
	
	
	@Override
	public List<viewStockListModel> isViewMonthWiseStock(String name) {
		return stockRepo.isViewMonthWiseStock(name);
	}

	
	
	@Override
	public List<viewStockListModel> isViewDateWiseStock(String fdate, String ldate) {
		return stockRepo.isViewDateWiseStock(fdate, ldate);
	}


	
}
