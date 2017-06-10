package dao;

import java.sql.PreparedStatement;

import java.sql.Connection;

import entity.PersonalDataEntity;
import util.DBUtil;

/**
 * 个人页面dao层，完成数据库交互任务
 * 
 * @author Lian
 * @version 1.0
 *
 *          2017年6月7日
 */
public class PersonalDataDao {
	/**
	 * 插入个人信息
	 * 
	 * @param pe
	 *            个人信息实体
	 * @throws Exception
	 *             系统异常
	 * 
	 */
	public void insertPerData(PersonalDataEntity pe) throws Exception {
		// 获得数据库连接
		Connection connection = DBUtil.getConnection();

		// 构建sql语句
		StringBuilder sql = new StringBuilder();
		sql.append(" insert into t_stuinfo ")
				.append(" (Stu_SNo,Stu_Name,Stu_ClassName,Stu_Sex,Stu_Id,Stu_Nation,Stu_Bir,Stu_Tel,Stu_Home,Stu_From,Stu_Photo,Stu_Assess) ")
				.append(" values ").append(" (?,?,?,?,?) ");
		// 传入sql参数
		PreparedStatement ps = connection.prepareStatement(sql.toString());
		ps.setString(1, pe.getStu_SNo());
		ps.setString(2, pe.getStu_Name());
		ps.setString(3, pe.getStu_ClassName());
		ps.setString(4, pe.getStu_Sex());
		ps.setString(5, pe.getStu_Id());
		ps.setString(6, pe.getStu_Nation());
		ps.setString(7, pe.getStu_Bir());
		ps.setString(8, pe.getStu_Tel());
		ps.setString(9, pe.getStu_Home());
		ps.setString(10, pe.getStu_From());
		ps.setString(11, pe.getStu_Photo());
		ps.setString(12, pe.getStu_Assess());
		ps.executeUpdate(); // 执行
	}
}
