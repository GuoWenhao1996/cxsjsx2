package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import entity.AssessEntity;
import util.DBUtil;

/**
 * 2017-6-7 12:53:13
 * 
 * 评价dao层，完成数据库交互任务
 * 
 * @author guowenhao
 * @version 2.0
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

	/**
	 * 插入学生对学生的评价信息
	 * 
	 * @param ae
	 *            评价实体
	 * @throws Exception
	 *             系统异常
	 */
	public void insertStuAss(AssessEntity ae) throws Exception {
		// 获取数据库连接
		Connection connection = DBUtil.getConnection();

		// 构建sql语句
		StringBuilder sql = new StringBuilder();
		sql.append(" insert into t_stuassess ")
				.append(" (StuAss_Id,Stu_SNo,StuAss_SNo,StuAss_DataTime,StuAss_Context) ").append(" values ")
				.append(" (?,?,?,?,?) ");
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

	/**
	 * 修改自我评价
	 * 
	 * @param sno
	 *            学号
	 * @param ass
	 *            自我评价内容
	 * @throws Exception
	 *             系统异常
	 */
	public void updateStuSelfAss(String sno, String ass) throws Exception {
		// 获取数据库连接
		Connection connection = DBUtil.getConnection();

		// 构建sql语句
		StringBuilder sql = new StringBuilder();
		sql.append(" update t_stuinfo ").append(" set  Stu_Assess=? ").append(" where Stu_SNo=? ");
		// 为sql传入参数
		PreparedStatement ps = connection.prepareStatement(sql.toString());
		ps.setString(1, ass);
		ps.setString(2, sno);
		// 执行sql
		ps.executeUpdate();
	}

	/**
	 * 通过评价学号找到对应的自我评价
	 * 
	 * @param sno
	 *            学号
	 * @return 评价实体对象
	 * @throws Exception
	 *             运行错误
	 */
	public String showSelfAssess(String sno) throws Exception {
		// 获取数据库连接
		Connection connection = DBUtil.getConnection();

		// 构建sql语句
		StringBuilder sql = new StringBuilder();
		sql.append(" select Stu_Assess from t_stuinfo where Stu_SNo=? ");
		// 为sql传入参数
		PreparedStatement ps = connection.prepareStatement(sql.toString());
		ps.setString(1, sno);
		// 构建游标并执行
		ResultSet rs = ps.executeQuery();
		rs.next();
		// 调用rowsEntity()将游标数据转化为实体
		return rs.getString(1);
	}

	/**
	 * 通过评价ID找到对应的评价实体
	 * 
	 * @param teaAssID
	 *            评价ID
	 * @return 评价实体对象
	 * @throws Exception
	 *             运行错误
	 */
	public AssessEntity showAssess(String teaAssID) throws Exception {
		// 获取数据库连接
		Connection connection = DBUtil.getConnection();

		// 构建sql语句
		StringBuilder sql = new StringBuilder();
		sql.append(" select * from t_tassess where TeaAss_ID=? ");
		// 为sql传入参数
		PreparedStatement ps = connection.prepareStatement(sql.toString());
		ps.setString(1, teaAssID);
		// 构建游标并执行
		ResultSet rs = ps.executeQuery();
		rs.next();
		// 调用rowsEntity()将游标数据转化为实体
		return (this.rowsEntity(rs));
	}

	/**
	 * 为评价页面专门设计的学生数组
	 * 
	 * @return 基于评价的学生数组stu[序号][学号/姓名/班级]
	 * @throws Exception
	 *             运行错误
	 */
	public String[][] selectAllStuAss() throws Exception {
		// 获取数据库连接
		Connection connection = DBUtil.getConnection();

		// 构建sql语句
		StringBuilder sql1 = new StringBuilder();
		sql1.append(" select Stu_SNo, Stu_Name,  Stu_ClassName from t_stuinfo order by Stu_SNo ");
		StringBuilder sql2 = new StringBuilder();
		sql2.append(" select Count(Stu_SNo) from t_stuinfo ");

		// 构建游标2并执行,构建学生数组
		PreparedStatement ps2 = connection.prepareStatement(sql2.toString());
		ResultSet rs2 = ps2.executeQuery();
		rs2.next();
		String[][] stu = new String[rs2.getInt(1)][3];

		// 构建游标1并执行，为学生数组赋值
		PreparedStatement ps = connection.prepareStatement(sql1.toString());
		ResultSet rs = ps.executeQuery();

		// 循环调用rowsEntity()将游标数据转化为实体，并加到链表中
		int index = 0;
		while (rs.next()) {
			stu[index][0] = rs.getString(1);
			stu[index][1] = rs.getString(2);
			stu[index][2] = rs.getString(3);
			index++;
		}
		return stu;
	}

	/**
	 * 通过学号查找到教师评价链表
	 * 
	 * @param sno
	 *            要查找的学号
	 * @return 基于评价实体的链表
	 * @throws Exception
	 *             运行错误
	 */
	public List<AssessEntity> selectBySNoFromTeacAss(String sno) throws Exception {
		// 初始化链表
		List<AssessEntity> asList = new LinkedList<>();
		// 获取数据库连接
		Connection connection = DBUtil.getConnection();

		// 构建sql语句
		StringBuilder sql = new StringBuilder();
		sql.append(" select TeaAss_ID, Stu_SNo, UT_Name,  TeaAss_Time, TeaAss_Context ")
				.append(" from t_tassess ta, t_teaclogin tl ").append(" where Stu_SNo=? and ta.UT_No=tl.UT_No ")
				.append(" order by TeaAss_Time desc");
		// 为sql传入参数
		PreparedStatement ps = connection.prepareStatement(sql.toString());
		ps.setString(1, sno);
		// 构建游标并执行
		ResultSet rs = ps.executeQuery();
		// 循环调用rowsEntity()将游标数据转化为实体，并加到链表中
		while (rs.next()) {
			asList.add(this.rowsEntity(rs));
		}
		return asList;
	}

	/**
	 * 通过学号查找到学生评价链表
	 * 
	 * @param sno
	 *            要查找的学号
	 * @return 基于评价实体的链表
	 * @throws Exception
	 *             运行错误
	 */
	public List<AssessEntity> selectBySNoFromStuAss(String sno) throws Exception {
		// 初始化链表
		List<AssessEntity> asList = new LinkedList<>();
		// 获取数据库连接
		Connection connection = DBUtil.getConnection();

		// 构建sql语句
		StringBuilder sql = new StringBuilder();
		sql.append(" select StuAss_Id, tsa.Stu_SNo, Stu_Name, StuAss_DataTime, StuAss_Context ")
				.append(" from t_stuassess tsa, t_stuinfo tsi ")
				.append(" where tsa.Stu_SNo=? and tsa.StuAss_SNo=tsi.Stu_SNo ")
				.append(" order by StuAss_DataTime desc");
		// 为sql传入参数
		PreparedStatement ps = connection.prepareStatement(sql.toString());
		ps.setString(1, sno);
		// 构建游标并执行
		ResultSet rs = ps.executeQuery();
		// 循环调用rowsEntity()将游标数据转化为实体，并加到链表中
		while (rs.next()) {
			asList.add(this.rowsEntity(rs));
		}
		return asList;
	}

	/**
	 * 将数据库查询出的数据转化为实体
	 * 
	 * @param rs
	 *            游标
	 * @return 转化成功的实体
	 * @throws SQLException
	 *             数据库错误
	 */
	private AssessEntity rowsEntity(ResultSet rs) throws SQLException {
		// 初始化实体
		AssessEntity ae = new AssessEntity();
		// 1、2、3、4、5分别为评价id、被评价学生学号、评价人、评价时间、评价内容
		ae.setA_Id(rs.getString(1));
		ae.setStu_SNo(rs.getString(2));
		ae.setA_PersonNo(rs.getString(3));
		ae.setA_DataTime(rs.getString(4));
		ae.setA_Context(rs.getString(5));
		return ae;
	}

}
