package util;

import java.security.MessageDigest;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class ThisSystemUtil {

	/**
	 * 字符串是否为空
	 * 
	 * @param s
	 * @return
	 */
	public static boolean isNone(String s) {
		return s == null || (s.trim()).length() == 0;
	}

	/**
	 * 转换为正常的时间格式
	 * 
	 * @param strdate
	 * @return
	 * @throws Exception
	 * @author 莫天金
	 */
	public static String toNormalStringDate(String strdate) throws Exception {
		SimpleDateFormat sdf1 = new SimpleDateFormat("EEE MMM dd HH:mm:ss z yyyy", Locale.ENGLISH);

		SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

		return sdf2.format(sdf1.parse(strdate));
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
			// 得到一个信息摘要器
			MessageDigest digest = MessageDigest.getInstance("md5");
			byte[] result = digest.digest(password.getBytes());
			StringBuffer buffer = new StringBuffer();
			// 把没一个byte 做一个与运算 0xff;
			for (byte b : result) {
				// 与运算
				int number = b & 0xff;// 加盐
				String str = Integer.toHexString(number);
				if (str.length() == 1) {
					buffer.append("0");
				}
				buffer.append(str);
			}
			// 标准的md5加密后的结果
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
