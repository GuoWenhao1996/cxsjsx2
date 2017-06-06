package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import entity.AssessEntity;
import util.DBUtil;

/**
 * 2017-6-6 14:14:46
 * 
 * 评价dao层，完成数据库交互任务
 * 
 * @author guowenhao
 * @version 1.0
 */
public class AssessDao {

	/**
	 * 插入教师对学生的评价信息
	 * 
	 * @param ae
	 *            评价实体
	 * @throws Exception
	 *             系统异常
	 */
	public void insertTeacAss(AssessEntity ae) throws Exception {
		// 获取数据库连接
		Connection connection = DBUtil.getConnection();

		// 构建sql语句
		StringBuilder sql = new StringBuilder();
		sql.append(" insert into t_tassess ").append(" (TeaAss_ID,Stu_SNo,UT_No,TeaAss_Time,TeaAss_Context) ")
				.append(" values ").append(" (?,?,?,?,?) ");
		// 为sql传入参数
		PreparedStatement ps = connection.prepareStatement(sql.toString());
		ps.setString(1, ae.getA_Id());
		ps.setString(2, ae.getStu_SNo());
		ps.setString(3, ae.getA_PersonNo());
		ps.setString(4, ae.getA_DataTime());
		ps.setString(5, ae.getA_Context());
		// 执行sql
		ps.executeUpdate();
	}
}
