package util;

import java.security.MessageDigest;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class ThisSystemUtil {

	public static boolean isNone(String s) {
		return s == null || (s.trim()).length() == 0;
	}

	public static int parseInt(String s, int defaultValue) {
		try {
			int value = Integer.parseInt(s);
			return value;
		} catch (Exception e) {
			return defaultValue;
		}
	}

	public static int totalPage(int total, int pageSize) {
		int page = total / pageSize;
		if (total % pageSize != 0) {
			page++;
		}
		return page;
	}

	public static Date StringToDate(String s) {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try {
			Date d = sdf.parse(s);
			return d;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new Date(System.currentTimeMillis());
	}

	public static String md5Password(String password) {
		try {
			// �õ�һ����ϢժҪ��
			MessageDigest digest = MessageDigest.getInstance("md5");
			byte[] result = digest.digest(password.getBytes());
			StringBuffer buffer = new StringBuffer();
			// ��ûһ��byte ��һ�������� 0xff;
			for (byte b : result) {
				// ������
				int number = b & 0xff;// ����
				String str = Integer.toHexString(number);
				if (str.length() == 1) {
					buffer.append("0");
				}
				buffer.append(str);
			}
			// ��׼��md5���ܺ�Ľ��
			return buffer.toString();
		} catch (Exception e) {
			e.printStackTrace();
			return "";
		}
	}

	/**
	 * 获取当前系统时间工具方法
	 * 
	 * @return yyyy-MM-dd HH:mm:ss格式的时间
	 * @author guowenhao
	 */
	public static String getSystemTime() {
		Date date = new Date();
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time = format.format(date);
		return time;
	}
}
