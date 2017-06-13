package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import entity.StuloginEntity;
import util.DBUtil;

public class StuloginDao {
	
	/**
	 * 根据学号查询该账号是否存在
	 * @param Sno 学号
	 * @return
	 * @throws SQLException
	 */
	public StuloginEntity selectBySno(String Sno) throws SQLException{
		//连接数据库
		Connection connection = DBUtil.getConnection();
		//构建sql语句
		StringBuilder sql = new StringBuilder();
		sql.append("select * from t_stulogin where Stu_SNo=?");
		PreparedStatement ps = connection.prepareStatement(sql.toString());
		//传入sql参数
		ps.setString(1, Sno);
		ResultSet rs = ps.executeQuery();
		if (rs.next()) {
			StuloginEntity se=this.row2entity(rs);
			DBUtil.closeConnection();
			return se;
		}
		DBUtil.closeConnection();
		return null;		
	}
	/**
	 * 将ResultSet类型转换为StuloginEntity
	 * @param rs
	 * @return
	 * @throws SQLException
	 */
	private StuloginEntity row2entity(ResultSet rs) throws SQLException {
		StuloginEntity g = new StuloginEntity();
		g.setStu_SNo(rs.getString("Stu_SNo"));
		g.setUS_Name(rs.getString("US_Name"));
		g.setUS_Password(rs.getString("US_Password"));
		return g;
	}

}
