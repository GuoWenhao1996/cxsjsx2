package entity;

public class ScoreEntity {
	private String SC_CourseName;
	private char SC_Term;
	private String Stu_SNo;
	private double SC_Score;
	public String getSC_CourseName() {
		return SC_CourseName;
	}
	public void setSC_CourseName(String sC_CourseName) {
		SC_CourseName = sC_CourseName;
	}
	public char getSC_Term() {
		return SC_Term;
	}
	public void setSC_Term(char sC_Term) {
		SC_Term = sC_Term;
	}
	public String getStu_SNo() {
		return Stu_SNo;
	}
	public void setStu_SNo(String stu_SNo) {
		Stu_SNo = stu_SNo;
	}
	public double getSC_Score() {
		return SC_Score;
	}
	public void setSC_Score(double sC_Score) {
		SC_Score = sC_Score;
	}
	@Override
	public String toString() {
		return "ScoreEntity [SC_CourseName=" + SC_CourseName + ", SC_Term=" + SC_Term + ", Stu_SNo=" + Stu_SNo
				+ ", SC_Score=" + SC_Score + "]";
	}

}
