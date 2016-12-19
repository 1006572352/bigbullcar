package com.bigbullcar.utils;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

public abstract class ProjectEntity {

	public static String[] str = { "1", "2", "3", "4", "5", "6", "7", "8", "9",
			"0", "q", "w", "e", "r", "t", "y", "u", "i", "o", "p", "a", "s",
			"d", "f", "g", "h", "j", "k", "l", "z", "x", "c", "v", "b", "n",
			"m", "Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P", "A", "S",
			"D", "F", "G", "H", "J", "K", "L", "Z", "X", "C", "V", "B", "N",
			"M" };

	/**
	 * 传入随机码的位数，获取相应的随机码。
	 * <p>
	 * @author 刘源远 2016年11月4日 下午6:01:49
	 * @param args 传入的随机码位数
	 * @return {@link String} 
	 */
	public static String code(int args) {
		StringBuffer codeSb = new StringBuffer();
		for (int i = 0; i < args; i++) {
			int num = (int) (Math.random() * 62);
			codeSb.append(str[num]);
		}
		return codeSb.toString();
	}

	/**
	 * 把数据库中的获取的时间转化为String 型的yyyy-MM-dd HH:mm:ss格式时间。
	 * <p>
	 * 
	 * @author 刘源远 2016年11月4日 下午6:03:35
	 * @param timestamp
	 * @return {@link String}
	 * 
	 */
	public static String timestampToString(Timestamp timestamp) {
		if(null==timestamp){return null; }
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return sdf.format(timestamp);
	}

	/**
	 * 把给定的日期转化为String型的yyyy-MM-dd HH:mm:ss格式时间。
	 * <p>
	 * 
	 * @author 刘源远 2016年11月4日 下午6:04:46
	 * @param date
	 *            {@link Date}
	 * @return {@link String}
	 * 
	 */
	public static String dateToString(Date date) {
		if(null==date){return null; }
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return sdf.format(date);
	}

	/**
	 * 把字符串型的时间转化为Date，提供四钟格式字符串时间的转换，yyyy-MM-dd、"yyyy-MM-dd HH"、<br>
	 * "yyyy-MM-dd HH:mm"、"yyyy-MM-dd HH:mm:ss"
	 * <p>
	 * 
	 * @param {@link String} 字符串时间戳
	 * @return {@link Date} 
	 * 
	 */
	public static Date stringToDate(String DateTime) {
		Date date = null;
		String format = null;
		int len = DateTime.length();
		switch (len) {
		case 10:
			format = "yyyy-MM-dd";
			break;
		case 13:
			format = "yyyy-MM-dd HH";
			break;
		case 16:
			format = "yyyy-MM-dd HH:mm";
			break;
		case 19:
			format = "yyyy-MM-dd HH:mm:ss";
			break;
		default:
			break;
		}
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(format);
		try {
			date = simpleDateFormat.parse(DateTime);
		} catch (ParseException e) {
			e.printStackTrace();
			return date;
		}
		return date;
	}

	/**
	 * 传入未来的一个日期，获得所传入的日期距离现在的毫秒数。
	 * <p>
	 * @author 刘源远 2016年11月4日 下午6:06:40
	 * @param date
	 * @return 
	 * 
	 */
	public static long timeToSec(Date date) {
		Date now = new Date();
		return (date.getTime() - now.getTime());
	}

	/**
	 * 传入一个Map集合，返回包含集合中所有的Value的List.
	 * <p>
	 * 
	 * @author 刘源远 2016年11月4日 下午6:07:31
	 * @param map
	 *            {@link Map}
	 * @return {@link List}
	 * 
	 */
	public static <K, V> List<V> mapValueToList(Map<K, V> map) {
		List<V> list = new ArrayList<V>();
		for (Object key : map.keySet()) {
			list.add(map.get(key));
		}
		return list;
	}

	/**
	 * <p>
	 * 
	 * @author 刘源远 2016年11月4日 下午5:46:49
	 * @param dayNum
	 *            传入一个int型的天数。
	 * @return {@link Date} 返回以距现在dayNum天后的日期。
	 * 
	 */
	public static Date dayToDate(int dayNum) {
		Date date = new Date();
		long sec = dayNum * 24 * 60 * 60 * 1000;
		return new Date(sec + date.getTime());
	}

	/**
	 * <p>
	 * @author 刘源远
	 * 2016年11月4日 下午7:27:53
	 * @param limitDay 产品的投资期限
	 * @param rate 产品的利率
	 * @param price 用户购买的金额。
	 * @return {@link Double}返回用户赎回产品时的本息和。
	 *
	 */
	public synchronized static double moaney(int limitDay, double rate,
			double price) {
		return price * (1 + rate * limitDay / 365);
	}
	
	/**
	 * 把String格式的时间直接转化为毫秒。
	 * <p>
	 * @author 刘源远
	 * 2016年11月6日 下午3:10:10
	 * @param date
	 * @return
	 */
	public static long dateStringToSec(String date){
		Date dateTime = stringToDate(date);
		return timeToSec(dateTime);
	}
	
	/**
	 * 比较传入的时间与现在的迟早。
	 * <p>
	 * @author 刘源远
	 * 2016年11月8日 上午11:01:07
	 * @param date
	 * @return
	 */
	public static boolean compareDate(String date){
		return new Date().before(stringToDate(date));
	}
	
	/**
	 * 传入两个时间，比较两个人时间的迟早。
	 * <p>
	 * @author 刘源远
	 * 2016年11月8日 上午11:08:48
	 * @param date1
	 * @param date2
	 * @return
	 */
	public static boolean compareTwoDate(String date1,String date2){
		return stringToDate(date1).before(stringToDate(date2));
		}
	
	public static String nowTime(){
		return dateToString(new Date())+": ";
		} 
}

