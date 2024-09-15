package org.messpredict.repository;

import java.util.ArrayList;
import java.util.List;

import org.messpredict.model.*;

public class CurrentStockRepositoryImpl extends DB implements CurrentStockRepository {
	protected  List<currentStockModel> stockList;
	public List<currentStockModel> getStockList() {
		try {
			stockList=new ArrayList<currentStockModel>();
			String query = "SELECT p.pr_id, p.pr_name, s.stk_quantity FROM productmaster p INNER JOIN stoke s ON p.pr_id = s.stk_id;";
	        ps = conn.prepareStatement(query);
	        rs = ps.executeQuery();
	        
	        while (rs.next()) {
	            currentStockModel stock = new currentStockModel();
	            stock.setPr_id(rs.getInt(1));
	            stock.setPrName(rs.getString(2));
	            stock.setUsed_qty(rs.getInt(3));
	            stockList.add(stock);
	        }
	        return stockList.size()>0 ? stockList:null;
		} catch (Exception e) {
			System.out.println("Error in get stock list---> "+e);
			return null;
		}
	}
	public int getTotalQty(int pr_id) {
		  int totalQty = 0;
	        try {
	            String query = "SELECT stk_quantity FROM stoke WHERE stk_id = ?";
	            ps = conn.prepareStatement(query);
	            ps.setInt(1, pr_id);
	            rs = ps.executeQuery();
	            if (rs.next()) {
	                totalQty = rs.getInt("stk_quantity");
	            }
	        } catch (Exception e) {
	            System.out.println("Error in getting total quantity: " + e);
	        }
	        return totalQty;
	}

	public boolean updateQuantity(int pr_id, int newQuantity) {
        try {
            String query = "UPDATE stoke SET stk_quantity = ? WHERE stk_id = ?";
            ps = conn.prepareStatement(query);
            ps.setInt(1, newQuantity);
            ps.setInt(2, pr_id);
            int rowsUpdated = ps.executeUpdate();
            return rowsUpdated > 0;
        } catch (Exception e) {
            System.out.println("Error updating quantity: " + e);
            return false;
        }
    }



}
