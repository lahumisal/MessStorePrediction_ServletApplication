package org.messpredict.services;

import java.util.List;

import org.messpredict.model.*;
import org.messpredict.repository.CurrentStockRepository;
import org.messpredict.repository.CurrentStockRepositoryImpl;

public class CurrentStockServiceImpl implements CurrentStockService{
	CurrentStockRepository curRepo=new CurrentStockRepositoryImpl();
	public List<currentStockModel> getStockList() {
		return curRepo.getStockList();
	}

	public int getTotalQty(int pr_id) {
		return curRepo.getTotalQty(pr_id);
	}

	public boolean updateQuantity(int pr_id, int newQuantity) {
		return curRepo.updateQuantity(pr_id, newQuantity);
	}
	
}
