package entity;

public class TealoginEntity {
	String UT_No;
	String UT_Name;
	String UT_NickName;
	String UT_Password;
	public String getUT_No() {
		return UT_No;
	}
	public void setUT_No(String uT_No) {
		UT_No = uT_No;
	}
	public String getUT_Name() {
		return UT_Name;
	}
	public void setUT_Name(String uT_Name) {
		UT_Name = uT_Name;
	}
	public String getUT_NickName() {
		return UT_NickName;
	}
	@Override
	public String toString() {
		return "TealoginEntity [UT_No=" + UT_No + ", UT_Name=" + UT_Name + ", UT_NickName=" + UT_NickName
				+ ", UT_Password=" + UT_Password + "]";
	}
	public void setUT_NickName(String uT_NickName) {
		UT_NickName = uT_NickName;
	}
	public String getUT_Password() {
		return UT_Password;
	}
	public void setUT_Password(String uT_Password) {
		UT_Password = uT_Password;
	}

}
