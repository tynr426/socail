package com.user.platform.contrs.utils;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;

import org.apache.log4j.Logger;
import org.springframework.util.StringUtils;

import com.scwc.framework.spring.config.ApplicationConfig;
import com.scwc.framework.spring.utils.SpringContextUtils;
import com.user.platform.constant.AppConfigConstant;
import com.user.platform.constant.ApplicationConstant;


/**
 * @author alixzhang E-mail:alixzhang@qq.com
 * @version:V1.0 2014-9-26上午10:45:33
 * @Description: 利用serlvet初始化application数据
 */
public class ApplicationInitServlet extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Logger logger = Logger.getLogger(this.getClass());

	public void init(ServletConfig config) throws ServletException {
		super.init(config);
		logger.info("ApplicationInitServlet init startting");
		ApplicationConfig applicationConfig = SpringContextUtils.getBean(ApplicationConfig.class);
		
		//上传文件 输出地址
		String upDomain = applicationConfig.get(ApplicationConstant.FILE_UPLOAD_DOMAIN);
		if(!StringUtils.isEmpty(upDomain)){
			logger.info(ApplicationConstant.FILE_UPLOAD_DOMAIN+"="+upDomain);
			config.getServletContext().setAttribute("app_upDomain", upDomain);
		}else{
			logger.error(ApplicationConstant.FILE_UPLOAD_DOMAIN+" is undefined");
		}
		
		//请求url后缀
		String suffix = applicationConfig.get(ApplicationConstant.URL_REQUEST_SUFFIX);
		if(!StringUtils.isEmpty(suffix)){
			AppConfigConstant.app_urlSuffix = suffix;
			config.getServletContext().setAttribute("app_urlSuffix", suffix);
			logger.info(ApplicationConstant.URL_REQUEST_SUFFIX+"="+suffix);
		}else{
			logger.error(ApplicationConstant.URL_REQUEST_SUFFIX+" is undefined");
		}
		
	}
}
