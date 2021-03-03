package dao;

import java.util.*;

import Models.Subjects;

import util.DbConnectionUtil;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class GetSubjectDao {

	public List<Subjects> getSubjects(int ClassID) {

		List<Subjects> list = null;
		Subjects sub = null;
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;

		try {

			list = new ArrayList<Subjects>();
			String sql = "SELECT * FROM SmartTutor.subjects where ClassID= "+ ClassID;
			connection = DbConnectionUtil.openConnection();
		statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
				sub = new Subjects();
				sub.setClassID(resultSet.getInt("ClassID"));
				sub.setSubjectID(resultSet.getInt("SubjectID"));
				sub.setSubjectName(resultSet.getString("SubjectName"));

				list.add(sub);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return  list;
	}
}
