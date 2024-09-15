package org.messpredict.repository;

import java.util.*;

import org.messpredict.model.currentStockModel;


public interface CurrentStockRepository {
	public List<currentStockModel> getStockList();
	public int getTotalQty(int pr_id);
	public boolean updateQuantity(int pr_id, int newQuantity);
}
