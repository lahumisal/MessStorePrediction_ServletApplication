package org.messpredict.repository;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.messpredict.model.MaintainPerchessModel;
import org.messpredict.model.YearWiseProductModel;
import org.messpredict.model.viewStockListModel;

public class viewStockRepositoryImpl extends DB implements viewStockRepository{
	public List<viewStockListModel> yearList;
	@Override
	public List<viewStockListModel> isViewYearWiseStock(int year) {
		try {
	        this.yearList = new ArrayList<viewStockListModel>();
	        String query = "SELECT p.Pr_Name,g.g_quantity,p.pr_rate,p.pr_id,g.g_date FROM ProductMaster p INNER JOIN GroceryMaster g ON p.Pr_id = g.Pr_id WHERE year(g.G_Date) = ?;";
	        ps = conn.prepareStatement(query);
	        ps.setInt(1, year);
	        rs = ps.executeQuery();
	        while (rs.next()) {
	        	viewStockListModel model = new viewStockListModel();
	        	model.setPr_name(rs.getString(1));
	        	model.setG_qty(rs.getInt(2));
	        	model.setPr_rate(rs.getInt(3));
	        	model.setPr_id(rs.getInt(4));
	        	model.setG_date(rs.getDate(5));
	        	this.yearList.add(model);
	        }
	        return this.yearList.size()>0? yearList:null;
	    } catch (Exception e) {
	        System.out.println("isYearWiseStockData---> " + e);
	        return null;
	    }
	}
//_____________________________________________________________________________________________________________________________________
	public List<viewStockListModel> list;
	@Override
	public List<viewStockListModel> isViewMonthWiseStock(String month) {
		try {
	        this.list = new ArrayList<viewStockListModel>();
	        String query = "select gm.G_id, gm.Pr_id, gm.G_Date, pm.Pr_Name from grocerymaster gm join productmaster pm ON gm.Pr_id = pm.Pr_id " +
                    "where DATE_FORMAT(gm.G_Date, '%M') = ?";
	        ps = conn.prepareStatement(query);
	        ps.setString(1, month);
	        rs = ps.executeQuery();
	        while (rs.next()) {
	        	viewStockListModel model = new viewStockListModel();
	        	 model.setPr_id(rs.getInt(2));
	        	 model.setG_date(rs.getDate(3));
	        	 model.setPr_name(rs.getString(4));
	        	 list.add(model);
	        }
	        return this.list.size()>0? list:null;
	    } catch (Exception e) {
	        System.out.println(
	            "isMonthWiseData---> " + e);
	        return null;
	    }
	}
	
	
//____________________________________________________________________________________________________________________________________
	public List<viewStockListModel> datelist;
	@Override
	public List<viewStockListModel> isViewDateWiseStock(String fdate, String ldate) {
		try {
			datelist=new ArrayList<viewStockListModel>();
			String query = "select gm.G_id, gm.Pr_id, gm.G_Date, pm.Pr_Name,gm.G_Quantity from grocerymaster gm join productmaster pm ON gm.Pr_id = pm.Pr_id where gm.G_Date between ? AND ?";
			ps = conn.prepareStatement(query);
			ps.setString(1, fdate);
			ps.setString(2, ldate);
			rs = ps.executeQuery();

			while (rs.next()) {
				viewStockListModel model = new viewStockListModel();
				model.setPr_id(rs.getInt(2));
				model.setG_date(rs.getDate(3));
				model.setPr_name(rs.getString(4));
				model.setG_qty(rs.getInt(5));
				datelist.add(model);
			}
			return this.datelist.size()>0 ? datelist:null;
		} catch (Exception e) {
			System.out.println("isViewDateWiseStock---> " + e);
			return null;
		}
	}

}
