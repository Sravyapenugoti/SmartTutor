package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import Models.AddChapter;
import Models.EnterSubject;
import util.DbConnectionUtil;

public class AddChapterDao {
	Connection connection = null;
	PreparedStatement preparedStatement = null;
	ResultSet resultSet = null;
	Statement statement = null;

	public int addChapter(AddChapter chapter) {
		int flag = 0;
		try {
			connection = DbConnectionUtil.openConnection();
			String chptr = "SELECT * FROM  chapter WHERE ChapterName=? and SubjectID=?";
			PreparedStatement ps = connection.prepareStatement(chptr);
			ps.setString(1, chapter.getChapterName());
			ps.setInt(2, chapter.getSubjectID());
			ResultSet resultSet = ps.executeQuery();
			if (resultSet.next()) {
				flag = 2;
			} else {
				String sql = "INSERT INTO chapter(ChapterName,SubjectID)VALUES" + "('" + chapter.getChapterName() + "', '"
						+ chapter.getSubjectID() + "')";

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
