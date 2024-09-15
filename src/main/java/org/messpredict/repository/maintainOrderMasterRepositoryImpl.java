package org.messpredict.repository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;

import org.messpredict.model.*;

public class maintainOrderMasterRepositoryImpl extends DB implements maintainOrderMasterRepository {

	public List<MaintainPerchessModel> isViewDateWiseProductList() {
		List<MaintainPerchessModel> maintainlist = new ArrayList<>();

		try {
			ps = conn.prepareStatement("select g.G_date, g.pr_id, p.Pr_name, sum(g.G_Quantity) as total_quantity,sum(g.G_Quantity * p.Pr_rate) as total_price from GroceryMaster g join ProductMaster p on g.pr_id = p.Pr_id group by g.G_date, g.pr_id order by g.G_date;");
			rs = ps.executeQuery();
			while (rs.next()) {
				MaintainPerchessModel MPmodel = new MaintainPerchessModel();
				MPmodel.setG_date(rs.getDate(1));
				MPmodel.setPr_id(rs.getInt(2));
				MPmodel.setPr_name(rs.getString(3));
				MPmodel.setTotal_QTY(rs.getInt(4));
				MPmodel.setTotal_Price(rs.getInt(5));
				maintainlist.add(MPmodel);
			}
			ps.close();
			rs.close();
			return maintainlist.size() > 0 ? maintainlist : null;
		} catch (Exception e) {
			System.out.println(
					"You got error in maintainOrderMaster--> "+e);
			return null;
		}
	}
	public List<MaintainPerchessModel> list; 
	@Override
	public List<MaintainPerchessModel> isMonthWiseData(String month) {
	    try {
	        this.list = new ArrayList<MaintainPerchessModel>();
	        String query = "SELECT p.Pr_Name,g.g_date FROM ProductMaster p INNER JOIN GroceryMaster g ON p.Pr_id = g.Pr_id where MONTHNAME(g.G_Date)=?";
	        ps = conn.prepareStatement(query);
	        ps.setString(1, month);
	        rs = ps.executeQuery();
	        while (rs.next()) {
	            MaintainPerchessModel model = new MaintainPerchessModel();
	            model.setPr_name(rs.getString(1));
	            model.setG_date(rs.getDate(2));
	            this.list.add(model);
	        }
	        return this.list.size()>0? list:null;
	    } catch (Exception e) {
	        System.out.println(
	            "isMonthWiseData---> " + e);
	        return null;
	    }
	}
	public List<YearWiseProductModel> yearList;
	@Override
	public List<YearWiseProductModel> isYearWiseProductList(int year) {
		try {
	        this.yearList = new ArrayList<YearWiseProductModel>();
	        String query = "SELECT p.pr_id,p.Pr_Name,p.pr_rate,g.G_Quantity,g.G_Date FROM ProductMaster p INNER JOIN GroceryMaster g ON p.Pr_id = g.Pr_id WHERE year(g.G_Date) =?";
	        ps = conn.prepareStatement(query);
	        ps.setInt(1, year);
	        rs = ps.executeQuery();
	        while (rs.next()) {
	        	YearWiseProductModel model = new YearWiseProductModel();
	        	model.setPr_id(rs.getInt(1));
	            model.setPr_name(rs.getString(2));
	            model.setPr_rate(rs.getInt(3));
	            model.setQty(rs.getInt(4));
	            model.setG_date(rs.getDate(5));
	            this.yearList.add(model);
	        }
	        return this.yearList.size()>0? yearList:null;
	    } catch (Exception e) {
	        System.out.println("isYearWiseData---> " + e);
	        return null;
	    }
	}


	
}
