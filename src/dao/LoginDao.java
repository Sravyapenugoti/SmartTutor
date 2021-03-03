package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import java.sql.ResultSet;
import java.sql.Statement;



import Models.UserLogin;
import Models.Users;
import util.DbConnectionUtil;

public class LoginDao {

	Statement statement = null;
	ResultSet resultSet = null;
	Connection connection = null;
	// PreparedStatement preparedStatement = null;

	public Users loginCheck(UserLogin login) {
		String query = "select * from SmartTutor.users where Username=? and Password=?";
		boolean flag = false;
		Users user = new Users();
		try {
			Connection con = DbConnectionUtil.openConnection();
			PreparedStatement ps = con.prepareStatement(query);
			ps.setString(1, login.getUsername());
			ps.setString(2, login.getPassword());

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				user.setClassID(rs.getInt("ClassID"));
				user.setRoleID(rs.getInt("RoleID"));
				user.setFullName(rs.getString("FullName"));
				user.setPassword(rs.getString("Password"));
				user.setUsername(rs.getString("Username"));
				user.setUserID(rs.getInt("UserID"));
				flag = true;
			} 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;

	}
}
