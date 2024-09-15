package org.messpredict.services;

import java.util.*;

import org.messpredict.model.*;

public interface maintainOrderMasterService {
	public List<MaintainPerchessModel> isViewDateWiseProductList() ;
	public List<MaintainPerchessModel> isMonthWiseData(String month);
	public List<YearWiseProductModel>  isYearWiseProductList(int year);
}
