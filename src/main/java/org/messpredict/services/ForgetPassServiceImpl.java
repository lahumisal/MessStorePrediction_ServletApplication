package org.messpredict.services;

import org.messpredict.model.ForgetPassModel;
import org.messpredict.repository.*;

public class ForgetPassServiceImpl implements ForgetPassService {
	ForgetPassRepostitory passRepo=new ForgetPassRepositoryImpl();
	@Override
	public boolean isUpdatePass(ForgetPassModel model) {
		return passRepo.isUpdatePass(model);
	}

}
