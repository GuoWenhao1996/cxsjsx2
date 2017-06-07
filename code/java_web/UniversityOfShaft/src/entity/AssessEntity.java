package entity;

/**
 * 2017-6-6 00:30:51
 * 
 * 评价实体类，目前将两张表先合为一个实体看看效果。
 * 
 * @author guowenhao
 * @version 1.0
 */
public class AssessEntity {
	private String A_Id; // 评价编号
	private String Stu_SNo; // 被评价学生ID
	private String A_PersonNo; // 评价者ID
	private String A_DataTime; // 评价时间
	private String A_Context; // 评价内容

	public String getA_Id() {
		return A_Id;
	}

	public void setA_Id(String a_Id) {
		A_Id = a_Id;
	}

	public String getStu_SNo() {
		return Stu_SNo;
	}

	public void setStu_SNo(String stu_SNo) {
		Stu_SNo = stu_SNo;
	}

	public String getA_DataTime() {
		return A_DataTime;
	}

	public void setA_DataTime(String a_DataTime) {
		A_DataTime = a_DataTime;
	}

	public String getA_Context() {
		return A_Context;
	}

	public void setA_Context(String a_Context) {
		A_Context = a_Context;
	}

	public String getA_PersonNo() {
		return A_PersonNo;
	}

	public void setA_PersonNo(String a_PersonNo) {
		A_PersonNo = a_PersonNo;
	}

	public String toString() {
		return " A_Id:" + A_Id + " Stu_SNo:" + Stu_SNo + " A_PersonNo:" + A_PersonNo + " A_DataTime:" + A_DataTime
				+ " A_Context:" + A_Context;
	}
}
