package entity;

public class StuloginEntity {
	private String Stu_SNo;	//学生学号
	private String US_Name; //学生昵称
	private String US_Password;//学生密码
	
	public String getStu_SNo() {
		return Stu_SNo;
	}
	public void setStu_SNo(String stu_SNo) {
		Stu_SNo = stu_SNo;
	}
	public String getUS_Name() {
		return US_Name;
	}
	public void setUS_Name(String uS_Name) {
		US_Name = uS_Name;
	}
	public String getUS_Password() {
		return US_Password;
	}
	public void setUS_Password(String uS_Password) {
		US_Password = uS_Password;
	}
	
	public String toString(){
		return "Stu_SNo:"+Stu_SNo+"Us_Name:"+US_Name+"US_Password"+US_Password;
	}

}
