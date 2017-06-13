package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;


import entity.ScoreEntity;
import util.DBUtil;

public class ScoreDao {
	/**
	 * 将score数组批量插入数据库（存在错误将全部回滚）
	 * @param Score
	 */
	public void insert(ScoreEntity Score[]) {
		// 连接数据库
		Connection connection = null;
		try {
			connection = DBUtil.getConnection();
			// 把自动提交事务设置为FALSE
			connection.setAutoCommit(false);
			// 构建sql语句
			StringBuilder sql = new StringBuilder();
			sql.append("insert into t_stuscore ").append("(SC_CourseName, SC_Term, Stu_SNo,SC_Score)").append("values ")
					.append("(?, ?, ?,?)");
			PreparedStatement ps = connection.prepareStatement(sql.toString());
			for (int i = 0; i < Score.length; i++) {
				ps.setString(1, Score[i].getSC_CourseName());
				ps.setString(2, String.valueOf(Score[i].getSC_Term()));
				ps.setString(3, Score[i].getStu_SNo());
				ps.setDouble(4, Score[i].getSC_Score());
				// 把这些操作添加到批处理中
				ps.addBatch();
			}
			// 执行批处理
			ps.executeBatch();
			// 提交事务
			connection.commit();
		} catch (SQLException e) {
			// 回滚事务
			try {
				connection.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		} finally {
			try {
				connection.setAutoCommit(true);
				DBUtil.closeConnection();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
		}

	}
	
	/**
	 * 根据学号查找日志 用于显示成绩列表
	 * @param sno 学号
	 * @param type 权限
	 * @return
	 * @throws Exception
	 */
	public List<ScoreEntity> selectByNo(String sno) throws Exception {
		List<ScoreEntity> delist = new LinkedList<>();
		Connection connection = DBUtil.getConnection();
		StringBuilder sql = new StringBuilder();
		sql.append(" select * from t_stuscore where Stu_SNo=? order by SC_Term");
		PreparedStatement ps = connection.prepareStatement(sql.toString());
		ps.setString(1, sno);
		ResultSet rs = ps.executeQuery(); //得到结果
		while(rs.next()) {
			delist.add(this.rowsEntity(rs));
		}
		DBUtil.closeConnection();
		return delist;
	}
	
	/**
	 * 根据学号查找日志 用于显示成绩列表
	 * @param sno 学号
	 * @param type 权限
	 * @return
	 * @throws Exception
	 */
	public List<ScoreEntity> selectByNoandTerm(String sno,String term) throws Exception {
		List<ScoreEntity> delist = new LinkedList<>();
		Connection connection = DBUtil.getConnection();
		StringBuilder sql = new StringBuilder();
		sql.append(" select * from t_stuscore where Stu_SNo=? and SC_Term=?");
		PreparedStatement ps = connection.prepareStatement(sql.toString());
		ps.setString(1, sno);
		ps.setString(2, term);
		ResultSet rs = ps.executeQuery(); //得到结果
		while(rs.next()) {
			delist.add(this.rowsEntity(rs));
		}
		DBUtil.closeConnection();
		return delist;
	}
	
	/**
	 * 打印数据
	 * @param rs
	 * @return
	 * @throws SQLException
	 */
	private ScoreEntity rowsEntity(ResultSet rs) throws SQLException {
		ScoreEntity de = new ScoreEntity();
		de.setSC_CourseName(rs.getString("SC_CourseName"));
		de.setSC_Score(rs.getDouble("SC_Score"));
		de.setSC_Term((rs.getString("SC_Term").charAt(0)));
		de.setStu_SNo(rs.getString("Stu_SNo"));
		return de;
	}
}
