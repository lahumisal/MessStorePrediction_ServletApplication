package org.messpredict.repository;

import org.messpredict.model.loginmodel;

public interface ValidateUserRepository {
	public boolean isValidate(loginmodel model);
}
