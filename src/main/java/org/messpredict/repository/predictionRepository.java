package org.messpredict.repository;
import java.util.*;

import org.messpredict.model.predictionModel;
public interface predictionRepository {
	public List<predictionModel> getPrediction(int productId);
}
