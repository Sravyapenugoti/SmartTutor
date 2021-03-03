package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Models.Topics;
import util.DbConnectionUtil;

public class GetTopicDao {
	public List<Topics> getTopics(int chapterID) {

		List<Topics> list = null;
		Topics topic = null;
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;

		try {

			list = new ArrayList<Topics>();
			String sql = "SELECT TopicID,ChapterID, TopicName FROM SmartTutor.topic where ChapterID= " + chapterID;
			connection = DbConnectionUtil.openConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
				topic = new Topics();
				topic.setTopicName(resultSet.getString("TopicName"));
				topic.setChapterID(resultSet.getInt("ChapterID"));
				topic.setTopicID(resultSet.getInt("TopicID"));
				//topic.setTopicDescription(resultSet.getString("TopicDescription"));

				list.add(topic);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
}
