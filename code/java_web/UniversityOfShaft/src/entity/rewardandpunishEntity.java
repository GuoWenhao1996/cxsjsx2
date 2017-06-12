package entity;

public class rewardandpunishEntity {
		private String SRP_ID; //奖惩编号ID
		private String Stu_SNo; //学生学号
		private String US_Name; //学生昵称
		
		private String SRP_Time; //奖惩的时间
		private String SRP_Info; //奖惩内容
		private String SRP_flag; //奖惩标记
		
		public String getUS_Name() {
			return US_Name;
		}
		public void setUS_Name(String uS_Name) {
			US_Name = uS_Name;
		}
		
		public String getSRP_Info() {
			return SRP_Info;
		}
		public void setSRP_Info(String sRP_Info) {
			SRP_Info = sRP_Info;
		}
		
		public String getSRP_flag() {
			return SRP_flag;
		}
		public void setSRP_flag(String sRP_flag) {
			SRP_flag = sRP_flag;
		}
		
		public String getSRP_ID() {
			return SRP_ID;
		}
		public void setSRP_ID(String sRP_ID) {
			SRP_ID = sRP_ID;
		}
		public String getStu_SNo() {
			return Stu_SNo;
			
		}
		public void setStu_SNo(String stu_SNo) {
			Stu_SNo = stu_SNo;
		}
		public String getSRP_Time() {
			return SRP_Time;
		}
		public void setSRP_Time(String sRP_Time) {
			SRP_Time = sRP_Time;
		}
		public String toString() {
			return " SRP_ID:"+SRP_ID+" Stu_SNo:"+Stu_SNo+" SRP_Time:"+SRP_Time+" SRP_Info:"+SRP_Info+"SRP_flag:"+SRP_flag+"US_Name:"+US_Name;
		}
}
