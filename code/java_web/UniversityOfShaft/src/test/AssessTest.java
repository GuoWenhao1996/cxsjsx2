package test;

import dao.AssessDao;
import entity.AssessEntity;

/**
 * 2017-6-6 14:43:02
 * 
 * 评价测试类，用于测试实体、dao
 * 
 * @author guowenhao
 * @version 1.1
 */
public class AssessTest {
	public static void main(String[] args) throws Exception {
		// 创建实体并赋值
		AssessEntity ae1 = new AssessEntity();
		ae1.setA_Id("cscscs");
		ae1.setStu_SNo("631406010109");
		ae1.setA_PersonNo("1001");
		ae1.setA_DataTime("2017-6-6 14:41:03");
		ae1.setA_Context("单元测试之插入测试");
		System.out.println(ae1.toString());

		// dao层初始化
		AssessDao ad = new AssessDao();
		ad.insertTeacAss(ae1);

	}
}
