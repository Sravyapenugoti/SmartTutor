package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import Models.SaveTopic;
import util.DbConnectionUtil;

public class AddTopicDao {

	Connection connection = null;
	PreparedStatement preparedStatement = null;
	ResultSet resultSet = null;
	Statement statement = null;

	public int addTopic(SaveTopic topic) {
		int flag = 0;
		try {
			connection = DbConnectionUtil.openConnection();
			String topics = "SELECT * FROM  topic WHERE TopicName= ? and ChapterID=? and TopicDescription=?";
			PreparedStatement ps = connection.prepareStatement(topics);
			ps.setString(1, topic.getTopicName());
			ps.setInt(2, topic.getChapterID());
			ps.setString(3, topic.getDescription());
			ResultSet resultSet = ps.executeQuery();
			if (resultSet.next()) {
				flag = 2;
			} else {
				String sql = "INSERT INTO topic(TopicName,ChapterID,TopicDescription)VALUES" + "('"
						+ topic.getTopicName() + "', '" + topic.getChapterID() + "','" + topic.getDescription() + "')";

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
