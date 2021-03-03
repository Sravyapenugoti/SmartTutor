package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import Models.Admin;
import util.DbConnectionUtil;

public class AdminLoginDao {
	Statement statement = null;
	ResultSet resultSet = null;
	Connection connection = null;
	// PreparedStatement preparedStatement = null;

	public String adminLoginCheck(Admin loginBean) {
		String query = "select * from admin where AdminUsername=? and AdminPassword=?";

		try {
			Connection con = DbConnectionUtil.openConnection();
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, loginBean.getUsername());
			ps.setString(2, loginBean.getPassword());

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				return "true";
			} 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "false";

	}

}
