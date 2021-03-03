package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import Models.AddAdmin;
import util.DbConnectionUtil;

public class AddAdminDao {
	Connection connection = null;
	PreparedStatement preparedStatement = null;

	public boolean addAdmin(AddAdmin admin) {
		boolean flag = false;
		try {
			String sql = "INSERT INTO smartTutor.admin(AdminUsername,AdminPassword) VALUES" + "('" +admin.getAdminUsername()+ "', '"
					+admin.getAdminPassword()+"')";
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
