package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import entity.DiaryEntity;
import util.DBUtil;

public class DiaryDao {
	/**
	 * 插入数据
	 * @param de
	 * @throws Exception
	 */
	public void insert(DiaryEntity de) throws Exception {
		//连接数据库
		Connection connection = DBUtil.getConnection();
		//构建sql语句
		StringBuilder sql = new StringBuilder();
		sql.append(" insert into t_stulog ").append("(L_ID, Stu_SNo, L_Time, L_Title, L_Detail, L_Limits)")
			.append(" values ").append("(?, ?, ?, ?, ?, ?)");
		//传入sql参数
		PreparedStatement ps = connection.prepareStatement(sql.toString());
		ps.setString(1, de.getL_ID());
		ps.setString(2, de.getStu_SNo());
		ps.setString(3, de.getL_Time());
		ps.setString(4, de.getL_Title());
		ps.setString(5, de.getL_Detail());
		ps.setString(6, de.getL_Limits());
		ps.executeUpdate(); //执行
	}
	
	/**
	 * 根据学号和日志权限查找日志 用于显示日志列表
	 * @param sno 学号
	 * @param type 权限
	 * @return
	 * @throws Exception
	 */
	public List<DiaryEntity> selectByType(String sno, String type) throws Exception {
		List<DiaryEntity> delist = new LinkedList<>();
		Connection connection = DBUtil.getConnection();
		StringBuilder sql = new StringBuilder();
		sql.append(" select * from t_stulog where Stu_SNo=? and L_Limits=? order by L_Time");
		PreparedStatement ps = connection.prepareStatement(sql.toString());
		ps.setString(1, sno);
		ps.setString(2, type);
		ResultSet rs = ps.executeQuery(); //得到结果
		while(rs.next()) {
			delist.add(this.rowsEntity(rs));
		}
		return delist;
	}
	
	/**
	 * 通过日志ID找到相应日志
	 * @param lid
	 * @return
	 * @throws Exception
	 */
	public DiaryEntity showDiary(String lid) throws Exception {
		Connection connection = DBUtil.getConnection();
		StringBuilder sql = new StringBuilder();
		sql.append(" select * from t_stulog where L_ID=?");
		PreparedStatement ps = connection.prepareStatement(sql.toString());
		ps.setString(1, lid);
		ResultSet rs = ps.executeQuery();
		rs.next();
	    return (this.rowsEntity(rs));
	}
	
	/**
	 * 更新某篇日志
	 * @param de
	 * @throws Exception
	 */
	public void updateDiary(DiaryEntity de) throws Exception {
		//连接数据库
		Connection connection = DBUtil.getConnection();
		//构建sql语句
		StringBuilder sql = new StringBuilder();
		sql.append(" update t_stulog ").append("set L_Time=?, L_Title=?, L_Detail=?, L_Limits=? ")
			.append("where L_ID=?");
		//传入sql参数
		PreparedStatement ps = connection.prepareStatement(sql.toString());
		ps.setString(1, de.getL_Time());
		ps.setString(2, de.getL_Title());
		ps.setString(3, de.getL_Detail());
		ps.setString(4, de.getL_Limits());
		ps.setString(5, de.getL_ID());
		ps.executeUpdate(); //执行
	}
	
	/**
	 * 根据日志id删去某篇日志
	 * @param lid
	 * @throws Exception
	 */
	public void deleteDiary(String lid) throws Exception {
		//连接数据库
		Connection connection = DBUtil.getConnection();
		//构建sql语句
		StringBuilder sql = new StringBuilder();
		sql.append(" delete from t_stulog where L_ID=? ");
		//传入sql参数
		PreparedStatement ps = connection.prepareStatement(sql.toString());
		ps.setString(1, lid);
		ps.executeUpdate();
	}
	
	/**
	 * 打印数据
	 * @param rs
	 * @return
	 * @throws SQLException
	 */
	private DiaryEntity rowsEntity(ResultSet rs) throws SQLException {
		DiaryEntity de = new DiaryEntity();
		de.setL_ID(rs.getString("L_ID"));
		de.setStu_SNo(rs.getString("Stu_SNo"));
		de.setL_Time(rs.getString("L_Time"));
		de.setL_Title(rs.getString("L_Title"));
		de.setL_Detail(rs.getString("L_Detail"));
		de.setL_Limits(rs.getString("L_Limits"));
		return de;
	}
}
