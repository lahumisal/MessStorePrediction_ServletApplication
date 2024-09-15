package org.messpredict.repository;

import java.util.ArrayList;
import java.util.List;

import org.messpredict.model.AddProductModel;
import org.messpredict.model.ProdListByName;
import org.messpredict.model.ViewProdListModel;

public class AddProductRepositoryImpl extends DB implements AddProductRepository{
	public boolean isAddProduct(AddProductModel model) {
		try {
			ps=conn.prepareStatement("insert into productmaster values(0,?,?,?)");
			ps.setString(1, model.getProdName());
			ps.setString(2, model.getProdCat());
			ps.setInt(3, model.getPrice());
			int val=ps.executeUpdate();
			return val>0 ? true:false;
		} catch (Exception e) {
			System.out.println("Error is ---> prodAdd repoo"+e);
			return false;
		}
	}

	@Override
	public List<ViewProdListModel> ViewProdList() {
		try {
			List<ViewProdListModel> list=new ArrayList<ViewProdListModel>();
			ps = conn.prepareStatement("select *from ProductMaster;");
			rs = ps.executeQuery();
			while (rs.next()) {
				ViewProdListModel model=new ViewProdListModel();
				model.setProd_id(rs.getInt(1));
				model.setProd_name(rs.getString(2));
				model.setProd_cat(rs.getString(3));
				model.setProd_price(rs.getInt(4));
				
				list.add(model);
			}
		//	System.out.println(list);
			ps.close();
			return list.size()>0 ? list:null;
			
		} catch (Exception e) {
			System.out.println("Error in ProdList"+e);
			return null;
		}
	}

	@Override
	public List<ProdListByName> getProdListByName(String name) {
		try {
			List<ProdListByName> prodlist = new ArrayList<ProdListByName>();
			ps = conn.prepareStatement("SELECT *FROM ProductMaster WHERE pr_name LIKE ?");
			ps.setString(1, "%" + name + "%");
		    rs = ps.executeQuery();
			while (rs.next()) {
				ProdListByName model = new ProdListByName();
				model.setProd_id(rs.getInt(1));
                model.setProd_name(rs.getString(2));
                model.setProd_cat(rs.getString(3));
                model.setProd_price(rs.getInt(4));

                prodlist.add(model);
			}
			return prodlist.size() > 0 ? prodlist : null;

		} catch (Exception e) {
			System.out.println("Error in ProdList" + e);
			return null;
		}
	}

	@Override
	public boolean isDeleteProd(int id) {
		try {
			  ps = conn.prepareStatement("DELETE FROM ProductMaster WHERE Pr_id = ?");
		        ps.setInt(1, id);
		        int res = ps.executeUpdate();
		        return res > 0;
		} catch (Exception e) {
			System.out.println("Error in deleteProduct"+e);
			return false;
		}
	}

	@Override
	public boolean isUpdatePrice(int id) {
		try {
			ps=conn.prepareStatement("update productmaster set pr_rate=? where pr_id=?");
			ps.setInt(1, id);
			return true;
		} catch (Exception e) {
			System.out.println("Error in updateprice "+e);
			return false;
		}
	}
}
