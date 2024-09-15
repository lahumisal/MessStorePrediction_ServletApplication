package org.messpredict.repository;

import org.messpredict.model.*;

public class ForgetPassRepositoryImpl extends DB implements ForgetPassRepostitory {
	
	@Override
	public boolean isUpdatePass(ForgetPassModel model) {
		try {
			 ps = conn.prepareStatement("UPDATE login SET pass = ? WHERE USER = ?");
		        ps.setString(1, model.getPass());
		        ps.setString(2, model.getUser());
		        int update = ps.executeUpdate();
		        return update> 0;
		} catch (Exception e) {
			System.out.println("Error is---> forget page"+e);
			return false;
		}
	
	}
	
}
