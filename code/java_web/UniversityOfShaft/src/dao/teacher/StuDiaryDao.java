package dao.teacher;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import entity.PersonalDataEntity;
import util.DBUtil;

public class StuDiaryDao {
	
	/**
	 * 查询到所有的班级
	 * @return
	 * @throws Exception
	 */
	public String[] tListClass() throws Exception {
		Connection connection = DBUtil.getConnection();
		StringBuilder sql0 = new StringBuilder();
		sql0.append(" select  count(distinct Stu_ClassName) from t_stuinfo; ");
		PreparedStatement ps0 = connection.prepareStatement(sql0.toString());
		ResultSet rs0 = ps0.executeQuery(); //得到结果
		rs0.next();
		String[] pdelistc = new String[rs0.getInt(1)];
		
		StringBuilder sql1 = new StringBuilder();
		sql1.append(" select distinct Stu_ClassName from t_stuinfo order by Stu_SNo; ");
		PreparedStatement ps1 = connection.prepareStatement(sql1.toString());
		ResultSet rs1 = ps1.executeQuery(); //得到结果
		int index = 0;
		while(rs1.next()) {
			pdelistc[index] = rs1.getString(1);
			index++;
		}
		DBUtil.closeConnection();
		return pdelistc;
	}
	
	/**
	 * 查出对应班级的所有学生
	 * @param classname
	 * @return
	 * @throws Exception
	 */
	public List<PersonalDataEntity> showClassStus(String classname) throws Exception {
		List<PersonalDataEntity> pdelistcs = new LinkedList<>();
		Connection connection = DBUtil.getConnection();
		StringBuilder sql = new StringBuilder();
		sql.append(" select * from t_stuinfo where Stu_ClassName=? order by Stu_SNo; ");
		PreparedStatement ps = connection.prepareStatement(sql.toString());
		ps.setString(1, classname);
		ResultSet rs = ps.executeQuery(); //得到结果
		while(rs.next()) {
			pdelistcs.add(this.rowsEntity(rs));
		}
		DBUtil.closeConnection();
		return pdelistcs;
	}
	
	/**
	 * 根据学号找到学生全部信息
	 * @param sno
	 * @return
	 * @throws Exception
	 */
	public PersonalDataEntity selectBySNo(String sno) throws Exception {
		Connection connection = DBUtil.getConnection();
		StringBuilder sql = new StringBuilder();
		sql.append(" select * from t_stuinfo where Stu_SNo=?; ");
		PreparedStatement ps = connection.prepareStatement(sql.toString());
		ps.setString(1, sno);
		ResultSet rs = ps.executeQuery(); //得到结果
		rs.next();
		PersonalDataEntity pd=this.rowsEntity(rs);
		DBUtil.closeConnection();
		return pd;
	}
	
	/**
	 * 打印数据
	 * @param rs
	 * @return
	 * @throws SQLException
	 */
	private PersonalDataEntity rowsEntity(ResultSet rs) throws SQLException {
		PersonalDataEntity pde = new PersonalDataEntity();
		pde.setStu_SNo(rs.getString("Stu_SNo"));
		pde.setStu_Name(rs.getString("Stu_Name"));
		pde.setStu_ClassName(rs.getString("Stu_ClassName"));
		pde.setStu_Sex(rs.getString("Stu_Sex"));
		pde.setStu_Id(rs.getString("Stu_Id"));
		pde.setStu_Nation(rs.getString("Stu_Nation"));
		pde.setStu_Bir(rs.getString("Stu_Bir"));
		pde.setStu_Tel(rs.getString("Stu_Tel"));
		pde.setStu_Home(rs.getString("Stu_Home"));
		pde.setStu_From(rs.getString("Stu_From"));
		pde.setStu_Photo(rs.getString("Stu_Photo"));
		pde.setStu_Assess(rs.getString("Stu_Assess"));
		return pde;
	}
}
