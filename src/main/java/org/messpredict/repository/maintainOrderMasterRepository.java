package org.messpredict.repository;

import java.util.*;
import org.messpredict.model.*;


public interface maintainOrderMasterRepository {
	public List<MaintainPerchessModel> isViewDateWiseProductList();
	public List<MaintainPerchessModel> isMonthWiseData(String month);
	public List<YearWiseProductModel> isYearWiseProductList(int year);
}
