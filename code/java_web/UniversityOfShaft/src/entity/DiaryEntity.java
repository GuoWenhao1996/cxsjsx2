package entity;

public class DiaryEntity {
	private String L_ID; //日志ID
	private String Stu_SNo; //学生学号
	private String L_Time; //日志保存时间
	private String L_Title; //日志标题
	private String L_Detail; //日志内容
	private String L_Limits; //日志权限
	
	public String getL_ID() {
		return L_ID;
	}
	public void setL_ID(String l_ID) {
		L_ID = l_ID;
	}
	
	public String getStu_SNo() {
		return Stu_SNo;
	}
	public void setStu_SNo(String stu_SNo) {
		Stu_SNo = stu_SNo;
	}
	
	public String getL_Time() {
		return L_Time;
	}
	public void setL_Time(String l_Time) {
		L_Time = l_Time;
	}
	
	public String getL_Detail() {
		return L_Detail;
	}
	public void setL_Detail(String l_Detail) {
		L_Detail = l_Detail;
	}
	
	public String getL_Limits() {
		return L_Limits;
	}
	public void setL_Limits(String l_Limits) {
		L_Limits = l_Limits;
	}
	
	public String getL_Title() {
		return L_Title;
	}
	public void setL_Title(String l_Title) {
		L_Title = l_Title;
	}
	
	public String toString() {
		return " L_ID:"+L_ID+" Stu_SNo:"+Stu_SNo+" L_Time:"+L_Time+" L_Title:"+L_Title+" L_Detail:"+L_Detail+" L_Limits:"+L_Limits;
	}
}
