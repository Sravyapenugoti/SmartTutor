package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DbConnectionUtil {
	private static final String URL = "jdbc:mysql://localhost:3306/SmartTutor";

	private static final String DRIVER = "com.mysql.jdbc.Driver";

	private static final String USERNAME = "root";

	private static final String PASSWORD = "MysqlRoot@21";

	private static Connection connection = null;

	public static Connection openConnection() {
		
			try {
				if(connection != null) {
					return connection;
				}
				Class.forName(DRIVER);
				connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return connection;
		
	}

}
