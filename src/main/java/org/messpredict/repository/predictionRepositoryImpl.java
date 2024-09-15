package org.messpredict.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.messpredict.model.predictionModel;

public class predictionRepositoryImpl extends DB implements predictionRepository {

    @Override
    public List<predictionModel> getPrediction(int productId) {
        List<predictionModel> predictions = new ArrayList<>();
        String query = "SELECT MONTHNAME(gm.g_date) as month, AVG(pm.pr_rate) as avg_price FROM productmaster pm INNER JOIN grocerymaster gm ON pm.pr_id = gm.pr_id WHERE pm.pr_id = ? GROUP BY month";

        try {
            ps = conn.prepareStatement(query);
            ps.setInt(1, productId); 
            rs = ps.executeQuery(); 

            while (rs.next()) {
                predictionModel prediction = new predictionModel();
                prediction.setMonth(rs.getString("month")); 
                prediction.setAvg_Prod_price(rs.getDouble("avg_price")); 
                predictions.add(prediction);
            }
        } catch (Exception e) {
            System.out.println("Error in prediction repository: " + e);
        }
        

        return predictions.isEmpty() ? null : predictions;
    }
}
