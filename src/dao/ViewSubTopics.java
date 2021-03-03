package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Models.SubTopics;

import util.DbConnectionUtil;

public class ViewSubTopics {
	public List<SubTopics> getSubTopics(int topicID) {

		List<SubTopics> list = null;
		SubTopics topic = null;
		Connection connection = null;
		Statement statement = null;
		ResultSet resultSet = null;

		try {

			list = new ArrayList<SubTopics>();
			String sql = "SELECT * FROM SmartTutor.subtopic where TopicID= " + topicID;
			connection = DbConnectionUtil.openConnection();
			statement = connection.createStatement();
			resultSet = statement.executeQuery(sql);
			while (resultSet.next()) {
				topic = new SubTopics();
				topic.setSubTopicname(resultSet.getString("SubTopicName"));
				topic.setSubTopicID(resultSet.getInt("SubTopicID"));
				topic.setTopicID(resultSet.getInt("TopicID"));
				topic.setSubTopicDescription(resultSet.getString("SubTopic_Description"));
				

				list.add(topic);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

}
