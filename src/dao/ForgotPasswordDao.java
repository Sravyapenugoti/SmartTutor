package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import Models.ForgotPassword;

import util.DbConnectionUtil;

public class ForgotPasswordDao {

	Statement statement = null;
	ResultSet resultSet = null;
	Connection connection = null;
	PreparedStatement preparedStatement=null;
	// PreparedStatement preparedStatement = null;

	public boolean forget(ForgotPassword u) {
		boolean flag = false;
		try {
			String sql = "UPDATE users SET  Password = '"+u.getPassword()+"' where Username=" + "\'" +u.getUsername() + "\'";
			connection = DbConnectionUtil.openConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.executeUpdate();
			flag = true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return flag;
	}

}
