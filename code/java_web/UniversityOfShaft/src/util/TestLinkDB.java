package util;

import java.sql.Connection;
import java.sql.SQLException;

public class TestLinkDB {
	public static Connection conn;
	public static void main(String[] args) {
		try {
			conn = DBUtil.getConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
