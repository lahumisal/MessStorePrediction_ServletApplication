package org.messpredict.services;

import java.util.List;

import org.messpredict.model.AddProductModel;
import org.messpredict.model.ProdListByName;
import org.messpredict.model.ViewProdListModel;
import org.messpredict.repository.*;

public class AddProductServiceImpl implements AddProductService {
	AddProductRepository addProd=new AddProductRepositoryImpl();

	@Override
	public boolean isAddProduct(AddProductModel model) {
		
		return addProd.isAddProduct(model);
	}

	@Override
	public List<ViewProdListModel> ViewProdList() {
		return addProd.ViewProdList();
	}

	@Override
	public List<ProdListByName> getProdListByName(String name) {
		return addProd.getProdListByName(name);
	}

	@Override
	public boolean isDeleteProd(int id) {
		return addProd.isDeleteProd(id);
	}

	

}
