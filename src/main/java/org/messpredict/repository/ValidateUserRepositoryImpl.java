package org.messpredict.repository;

import org.messpredict.model.loginmodel;

public class ValidateUserRepositoryImpl extends DB implements ValidateUserRepository {

	@Override
	public boolean isValidate(loginmodel model) {
		try {
			ps = conn.prepareStatement("select *from login where user=? && pass=?;");
			ps.setString(1, model.getUser());
			ps.setString(2, model.getPass());
			rs = ps.executeQuery();
			if (rs.next()) {
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			System.out.println("Error is validUser" + e);
			return false;
		}

	}

}
