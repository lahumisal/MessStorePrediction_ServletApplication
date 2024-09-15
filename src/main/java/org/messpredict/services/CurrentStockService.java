package org.messpredict.services;

import java.util.*;

import org.messpredict.model.*;

public interface CurrentStockService {
	public List<currentStockModel> getStockList();
	public int getTotalQty(int pr_id);
	public boolean updateQuantity(int pr_id, int newQuantity);
}
