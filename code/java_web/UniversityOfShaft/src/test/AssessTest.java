package test;

import dao.AssessDao;
import entity.AssessEntity;
import util.DBUtil;
import util.ThisSystemUtil;

/**
 * 2017-6-7 01:04:29
 * 
 * 评价测试类，用于测试实体、dao
 * 
 * @author guowenhao
 * @version 1.3
 */
public class AssessTest {
	public static void main(String[] args) throws Exception {
		// // 创建实体并赋值
		// AssessEntity ae1 = new AssessEntity();
		// ae1.setA_Id(DBUtil.uuid());
		// ae1.setStu_SNo("631406010109");
		// ae1.setA_PersonNo("1001");
		// ae1.setA_DataTime(ThisSystemUtil.getSystemTime());
		// ae1.setA_Context("单元测试之插入测试uuid");
		// System.out.println(ae1.toString());
		//
		// ae1.setA_PersonNo("631406010102");
		// ae1.setA_Context("大大大帅哥！");
		// System.out.println(ae1.toString());

		// // 目前没有个人信息类，暂时先用评价类作为实体测试
		// AssessEntity ae2 = new AssessEntity();
		// ae2.setA_Context("自我评价修改测试！");
		// ae2.setStu_SNo("631406010109");
		// // System.out.println(ae1.toString());

		// dao层初始化测试
		AssessDao ad = new AssessDao();
		// //教师评价插入测试
		// ad.insertTeacAss(ae1);

		// //学生评价插入测试
		// ad.insertStuAss(ae1);

		// //修改自我评价测试
		// ad.updateStuSelfAss(ae2);

		// 数据库内容转化为实体测试
		AssessEntity ae1 = ad.showAssess("3fb1ad3206fa37d97d24d30bd41ca7be");
		AssessEntity ae2 = ad.showAssess("45d44fa3113c640b9d3449de617b058f");
		System.out.println(ae1.toString());
		System.out.println(ae2.toString());
	}
}
