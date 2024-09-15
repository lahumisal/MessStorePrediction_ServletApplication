package org.messpredict.services;

import java.util.List;
import org.messpredict.model.*;
import org.messpredict.repository.*;

public class maintainOrderMasterServiceImpl implements maintainOrderMasterService {
	
	maintainOrderMasterRepository mainRepo=new maintainOrderMasterRepositoryImpl();
	@Override
	public List<MaintainPerchessModel> isViewDateWiseProductList() {
		return mainRepo.isViewDateWiseProductList();
	}
	@Override
	public List<MaintainPerchessModel> isMonthWiseData(String month) {
		return mainRepo.isMonthWiseData(month);
	}
	@Override
	public List<YearWiseProductModel> isYearWiseProductList(int year) {
		// TODO Auto-generated method stub
		return mainRepo.isYearWiseProductList(year);
	}
	

}
