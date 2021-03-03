package dao;

import java.util.*;

import Models.Grade;
import util.DbConnectionUtil;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class LearningResourcesDao {

	public List<Grade> getGrade() {

		List<Grade> list = null;
		Grade cls = null;
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;

		try {

			list = new ArrayList<Grade>();
			String sql = "SELECT * FROM SmartTutor.class";
			connection = DbConnectionUtil.openConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
				cls = new Grade();
				cls.setClassID(resultSet.getInt("ClassID"));
				cls.setClassName(resultSet.getString("ClassName"));
				cls.setStudentTypeID(resultSet.getInt("StudentTypeID"));

				list.add(cls);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return (List<Grade>) list;
	}
}
