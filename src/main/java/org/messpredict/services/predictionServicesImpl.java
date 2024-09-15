package org.messpredict.services;

import java.util.List;

import org.messpredict.model.predictionModel;
import org.messpredict.repository.predictionRepository;
import org.messpredict.repository.predictionRepositoryImpl;

public class predictionServicesImpl implements predictionServices {
	predictionRepository prdRepo=new predictionRepositoryImpl();
	public List<predictionModel> getPrediction(int productId) {
		return prdRepo.getPrediction(productId);
	}

}
