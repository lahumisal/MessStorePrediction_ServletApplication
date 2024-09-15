package org.messpredict.repository;

import org.messpredict.model.*;

import java.util.*;
public interface AddProductRepository {
	public boolean isAddProduct(AddProductModel model);
	public List<ViewProdListModel> ViewProdList();
	public List<ProdListByName> getProdListByName(String name);
	public boolean isDeleteProd(int id);
	public boolean isUpdatePrice(int id);
}
