package dao;

import Models.Users;
import util.DbConnectionUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class SignupDao {

	Connection connection = null;
	PreparedStatement preparedStatement = null;

	public boolean signUpAdd(Users e) {
		boolean flag = false;
		try {
			String sql = "INSERT INTO users(Username,Password,ClassID,RoleID,FullName,Gender)VALUES" + "('" + e.getUsername() + "', '" + e.getPassword() + "', '" + e.getClassID() + "','" + e.getRoleID() + "','" + e.getFullName() + "','"+e.getGender()+"')";
			connection = DbConnectionUtil.openConnection();
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.executeUpdate();
			flag = true;
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return flag;
	}
}
