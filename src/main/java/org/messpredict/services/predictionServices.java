package org.messpredict.services;

import java.util.List;

import org.messpredict.model.predictionModel;

public interface predictionServices {
	public List<predictionModel> getPrediction(int productId);
}
