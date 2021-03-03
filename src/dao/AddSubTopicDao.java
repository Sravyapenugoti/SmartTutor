package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import Models.SaveSubTopic;

import util.DbConnectionUtil;

public class AddSubTopicDao {
	Connection connection = null;
	PreparedStatement preparedStatement = null;
	ResultSet resultSet = null;
	Statement statement = null;

	public int addSubTopic(SaveSubTopic subTopic) {
		int flag = 0;
		try {
			connection = DbConnectionUtil.openConnection();
			String query = "SELECT * FROM  subtopic WHERE SubTopicName= ? and TopicID=? and SubTopic_Description=?";
			PreparedStatement ps = connection.prepareStatement(query);
			ps.setString(1, subTopic.getSubTopicName());
			ps.setInt(2, subTopic.getTopicID());
			ps.setString(3, subTopic.getSubTopicDescription());
			ResultSet resultSet = ps.executeQuery();
			if (resultSet.next()) {
				flag = 2;
			} else {
				String sql = "INSERT INTO subtopic(SubTopicName,TopicID,SubTopic_Description)VALUES" + "('"
						+ subTopic.getSubTopicName() + "', '" + subTopic.getTopicID() + "','"+ subTopic.getSubTopicDescription()+"')";

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
