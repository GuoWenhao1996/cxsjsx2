package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import entity.StuloginEntity;
import entity.TealoginEntity;
import util.DBUtil;

public class TealoginDao {
	
	/**
	 * 根据学号查询该账号是否存在
	 * @param Sno 学号
	 * @return
	 * @throws SQLException
	 */
	public TealoginEntity selectBySno(String Sno) throws SQLException{
		//连接数据库
		Connection connection = DBUtil.getConnection();
		//构建sql语句
		StringBuilder sql = new StringBuilder();
		sql.append("select * from t_teaclogin where UT_No=?");
		PreparedStatement ps = connection.prepareStatement(sql.toString());
		//传入sql参数
		ps.setString(1, Sno);
		ResultSet rs = ps.executeQuery();
		if (rs.next()) {
			return this.row2entity(rs);
		}
		return null;		
	}
	/**
	 * 将ResultSet类型转换为TealoginEntity
	 * @param rs
	 * @return
	 * @throws SQLException
	 */
	private TealoginEntity row2entity(ResultSet rs) throws SQLException {
		TealoginEntity g = new TealoginEntity();
		g.setUT_Name(rs.getString("UT_No"));
		g.setUT_Name(rs.getString("UT_Name"));
		g.setUT_NickName(rs.getString("UT_NickNmae"));
		g.setUT_Password(rs.getString("UT_Password"));
		return g;
	}

}
