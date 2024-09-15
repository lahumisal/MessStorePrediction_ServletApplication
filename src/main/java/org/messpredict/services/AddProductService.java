package org.messpredict.services;

import java.util.List;

import org.messpredict.model.*;

public interface AddProductService {
	public boolean isAddProduct(AddProductModel model);
	public List<ViewProdListModel> ViewProdList();
	public boolean isDeleteProd(int id);
	public List<ProdListByName> getProdListByName(String name);
}
