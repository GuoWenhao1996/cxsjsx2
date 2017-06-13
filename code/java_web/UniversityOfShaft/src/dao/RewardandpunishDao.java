package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import entity.rewardandpunishEntity;
import util.DBUtil;

/**
 * 插入数据
 */
public class RewardandpunishDao {
	// String name=DBUtil.getCookieno(req);//获取用户名
	public void insert(rewardandpunishEntity de) throws Exception {// 该方法用户对数据库里面的t_sturewpun表进行插入数据

		Connection connection = DBUtil.getConnection();// 连接数据库
		// 构建sql语句
		StringBuilder sql = new StringBuilder();
		sql.append(" insert into t_sturewpun ").append("(SRP_ID, Stu_SNo, SRP_Time, SRP_Info,SRP_flag)")
				.append(" values ").append("(?, ?, ?, ?,?)");
		// 传入sql参数
		PreparedStatement ps = connection.prepareStatement(sql.toString());
		ps.setString(1, de.getSRP_ID());
		ps.setString(2, de.getStu_SNo());
		ps.setString(3, de.getSRP_Time());
		ps.setString(4, de.getSRP_Info());
		ps.setString(5, de.getSRP_flag());
		ps.executeUpdate(); // 执行
		DBUtil.closeConnection();
	}

	/*
	 * 根据奖惩编号和权限查看奖惩内容 并且以奖惩类型分别进行排序
	 */
	public List<rewardandpunishEntity> selectByType(String sno, String flag) throws Exception {
		List<rewardandpunishEntity> delist = new LinkedList<>();
		Connection connection = DBUtil.getConnection();
		StringBuilder sql = new StringBuilder();
		sql.append(" select * from t_sturewpun  where Stu_SNo=? and SRP_flag=? order by SRP_flag");
		PreparedStatement ps = connection.prepareStatement(sql.toString());
		ps.setString(1, sno);
		ps.setString(2, flag);
		ResultSet rs = ps.executeQuery(); // 得到结果
		while (rs.next()) {
			delist.add(this.sturowsEntity(rs));
		}
		DBUtil.closeConnection();
		return delist;
	}

	public List<rewardandpunishEntity> selectallreward() throws Exception {
		List<rewardandpunishEntity> delist = new LinkedList<>();
		Connection connection = DBUtil.getConnection();
		StringBuilder sql = new StringBuilder();
		sql.append(
				" select Stu_Name,t_sturewpun.Stu_SNo,SRP_ID,SRP_flag,SRP_Info,SRP_Time from t_stuinfo,t_sturewpun  where t_stuinfo.Stu_SNo=t_sturewpun.Stu_SNo  and SRP_flag='1' order by Stu_SNo");
		PreparedStatement ps = connection.prepareStatement(sql.toString());
		ResultSet rs = ps.executeQuery(); // 得到结果
		while (rs.next()) {
			delist.add(this.rowsEntity(rs));
		}
		DBUtil.closeConnection();
		return delist;
	}

	public List<rewardandpunishEntity> selectallpunishment() throws Exception {
		List<rewardandpunishEntity> delist = new LinkedList<>();
		Connection connection = DBUtil.getConnection();
		StringBuilder sql = new StringBuilder();
		sql.append(
				" select Stu_Name,t_sturewpun.Stu_SNo,SRP_ID,SRP_flag,SRP_Info,SRP_Time from t_stuinfo,t_sturewpun  where t_stuinfo.Stu_SNo=t_sturewpun.Stu_SNo  and SRP_flag='0' order by Stu_SNo");
		PreparedStatement ps = connection.prepareStatement(sql.toString());
		ResultSet rs = ps.executeQuery(); // 得到结果
		while (rs.next()) {
			delist.add(this.rowsEntity(rs));
		}
		DBUtil.closeConnection();
		return delist;
	}

	public rewardandpunishEntity show(String lid) throws Exception {
		Connection connection = DBUtil.getConnection();
		StringBuilder sql = new StringBuilder();
		sql.append(" select * from t_sturewpun where Stu_SNo=?");
		PreparedStatement ps = connection.prepareStatement(sql.toString());
		ps.setString(1, lid);
		ResultSet rs = ps.executeQuery();
		rs.next();
		rewardandpunishEntity re=this.rowsEntity(rs);
		DBUtil.closeConnection();
		return re;
	}

	/**
	 * 打印数据
	 */
	private rewardandpunishEntity rowsEntity(ResultSet rs) throws SQLException {
		rewardandpunishEntity de = new rewardandpunishEntity();
		de.setSRP_ID(rs.getString("SRP_ID"));
		de.setStu_SNo(rs.getString("Stu_SNo"));
		de.setSRP_Time(rs.getString("SRP_Time"));
		de.setSRP_Info(rs.getString("SRP_Info"));
		de.setSRP_flag(rs.getString("SRP_flag"));
		de.setUS_Name(rs.getNString("Stu_Name"));
		return de;
	}

	private rewardandpunishEntity sturowsEntity(ResultSet rs) throws SQLException {
		rewardandpunishEntity de = new rewardandpunishEntity();
		de.setSRP_ID(rs.getString("SRP_ID"));
		de.setStu_SNo(rs.getString("Stu_SNo"));
		de.setSRP_Time(rs.getString("SRP_Time"));
		de.setSRP_Info(rs.getString("SRP_Info"));
		de.setSRP_flag(rs.getString("SRP_flag"));
		return de;
	}

}