package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Models.Chapter;
import util.DbConnectionUtil;

public class GetChapterDao {
	public List<Chapter> getChapters(int subjectID) {

		List<Chapter> list = null;
		Chapter chptr = null;
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;

		try {

			list = new ArrayList<Chapter>();
			String sql = "SELECT * FROM SmartTutor.chapter where SubjectID= " + subjectID;
			connection = DbConnectionUtil.openConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
				chptr = new Chapter();
				chptr.setChapterName(resultSet.getString("ChapterName"));
				chptr.setSubjectID(resultSet.getInt("SubjectID"));
				chptr.setChapterID(resultSet.getInt("ChapterID"));

				list.add(chptr);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

}
