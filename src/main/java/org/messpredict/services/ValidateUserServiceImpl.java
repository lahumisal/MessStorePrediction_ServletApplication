package org.messpredict.services;

import org.messpredict.model.loginmodel;
import org.messpredict.repository.*;

public class ValidateUserServiceImpl implements ValidateUserService{
	
	ValidateUserRepository vaidRepo=new ValidateUserRepositoryImpl();

	public boolean isValidate(loginmodel model) {
		return vaidRepo.isValidate(model);
	}

}
