package dao;

import Models.StudentsList;
import util.DbConnectionUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;

public class StudentDetailsDao {

	Connection connection = null;
	ResultSet resultSet = null;
	Statement statement = null;
	PreparedStatement preparedStatement = null;

	public List<StudentsList> getStudents() {

		List<StudentsList> list = null;
		StudentsList student = new StudentsList();

		try {

			list = new ArrayList<StudentsList>();
			String sql = "SELECT * FROM users";
			connection = DbConnectionUtil.openConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
				student = new StudentsList();
				if (resultSet.getInt("RoleID") == 2) {
					student.setUserID(resultSet.getInt("UserID"));
					student.setStudentName(resultSet.getString("FullName"));
					student.setUsername(resultSet.getString("Username"));
					student.setClassID(resultSet.getInt("ClassID"));
					student.setRoleID(resultSet.getInt("RoleID"));
					student.setGender(resultSet.getString("Gender"));
					list.add(student);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
}
