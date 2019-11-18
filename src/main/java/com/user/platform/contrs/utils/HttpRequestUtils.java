/**
 * 
 */
package com.user.platform.contrs.utils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * @author alixzhang E-mail:alixzhang@qq.com
 * @version:V1.0 2015-7-23上午11:27:48
 * @Description: TODO
 */
public class HttpRequestUtils {
	
	/**
	 * 判断ajax请求
	 * @param request
	 * @return
	 */
	public static boolean isAjax(HttpServletRequest request){
	    return  (request.getHeader("X-Requested-With") != null  && "XMLHttpRequest".equals( request.getHeader("X-Requested-With").toString())   ) ;
	}
	
	public static String replUserName(String url,String usreName){
		return url.replaceAll("\\{userName\\}", usreName);
	}

	/**
	 * 保存验签信息
	 * @param request
	 * @return
	 */
	public static void addSmsAcct(HttpSession session, String userName, String map){
		session.setAttribute(userName+"sinMap", map);
	}
	
	/**
	 * 获取后台登录用户
	 * @return
	 */
	public static final Object getSmsAcct(HttpSession session,String userName){
		Object object = session.getAttribute(userName+"sinMap");
		return object;
	}
	
	
	private static final Pattern URL_ADMIN_USER_NAME_PATTERN = Pattern.compile("/smspt/.*/([^/]+)/.*/");
	
	public static String getAdminUserName(HttpServletRequest request){
		String reqPath = request.getServletPath();
		Matcher matcher = URL_ADMIN_USER_NAME_PATTERN.matcher(reqPath);
		if(matcher.find()){
			return matcher.group(1);
		}
		return "nouser";
	}
	
	/**
	 * 获取url 中 传输协议+域名+端口+项目名
	 * @param request
	 * @return
	 */
	public static String getNcpUrl(HttpServletRequest request){
		int port = request.getServerPort();
		String path = request.getScheme()+"://"+request.getServerName();
		if(port != 80){
//			path = path+":"+port;
		}
		path = path+request.getContextPath();
		return path;
	}

}
