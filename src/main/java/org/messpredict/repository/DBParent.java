package org.messpredict.repository;
import java.sql.*;
public class DBParent {
	public static String path;
	protected DBConfig config=DBConfig.getInstance(path);
	protected PreparedStatement ps=config.getPreparedStatement();
	protected Connection conn=config.getConnection();
	protected ResultSet  rs=config.getResultSet();
	
}
