package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.UUID;

public class DBUtil {
	private static final String USER = "root";
	private static final String PASSWROD = "9527";
	private static final String URL="jdbc:mysql://127.0.0.1:3306/db_dxz";
	private static final ThreadLocal<Connection> THREAD_LOCAL=new ThreadLocal<Connection>();
	
	static{
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 连接数据库
	 * @return
	 */
	static public Connection getConnection()throws SQLException{
		Connection connection=THREAD_LOCAL.get();
		if(connection==null||connection.isClosed()){
			connection = DriverManager.getConnection(URL, USER, PASSWROD);
			THREAD_LOCAL.set(connection);
		}
		return connection;
	}
	
	/**
	 * 关闭数据库连接
	 * @throws SQLException
	 */
	public static void closeConnection()throws SQLException{
		Connection connection=THREAD_LOCAL.get();
		if(connection!=null&&!connection.isClosed()){
			connection.close();
		}
	}
	
	/**
	 * 转换utilDate为sqlDate
	 * @param d
	 * @return
	 */
	public static java.sql.Date toSqlDate(java.util.Date d){
		return new java.sql.Date(d.getTime());
	}
	
	/**
	 * 生成32位的唯一字符串
	 * @return
	 */
	public static String uuid(){
		String uuid=UUID.randomUUID().toString();
		char[] cs=new char[32];
		int j=0;
		for(int i=uuid.length();i-->0;){
			if(uuid.charAt(i)!='-'){
				cs[j++]=uuid.charAt(i);
			}
		}
		return new String(cs);
	}
	
	/**
	 * 转换为正常的时间格式
	 * @param strdate
	 * @return
	 * @throws Exception
	 */
	public static String toNormalStringDate(String strdate) throws Exception {
		SimpleDateFormat sdf1= new SimpleDateFormat("EEE MMM dd HH:mm:ss z yyyy", Locale.ENGLISH);

		SimpleDateFormat sdf2= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

		return sdf2.format(sdf1.parse(strdate));
	}

}