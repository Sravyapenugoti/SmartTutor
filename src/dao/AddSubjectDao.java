package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import Models.EnterSubject;
import Models.Grade;
import util.DbConnectionUtil;

public class AddSubjectDao {
	Connection connection = null;
	PreparedStatement preparedStatement = null;
	ResultSet resultSet = null;
	Statement statement = null;

	public int addSubject(EnterSubject e) {
		int flag = 0;
		try {
			connection = DbConnectionUtil.openConnection();
			String subject = "SELECT * FROM  subjects WHERE SubjectName=? and ClassID=?";
			PreparedStatement ps = connection.prepareStatement(subject);
			ps.setString(1, e.getSubjectName());
			ps.setInt(2, e.getClassID());
			ResultSet resultSet = ps.executeQuery();
			if (resultSet.next()) {
				flag = 2;
			} else {
				String sql = "INSERT INTO subjects(SubjectName,ClassID)VALUES" + "('" + e.getSubjectName() + "', '"
						+ e.getClassID() + "')";

				preparedStatement = connection.prepareStatement(sql);
				preparedStatement.executeUpdate();
				flag = 1;
			}

		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return flag;
	}
}
