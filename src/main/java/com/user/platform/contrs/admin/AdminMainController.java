package com.user.platform.contrs.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.user.platform.entity.UserBasic;
import com.user.platform.service.IUserBasicService;

import net.sf.json.JSONArray;

/**
 * @author alixzhang E-mail:alixzhang@qq.com
 * @version:V1.0 2015-11-4下午04:01:12
 * @Description: TODO
 */
@Controller
@RequestMapping("/admin/main")
public class AdminMainController {

	
	@Autowired
	private IUserBasicService  iuserbasicservice;
	/**
	 * 欢迎界面
	 * @return
	 */
	@RequestMapping("/index")
	public String wlcmpage(HttpServletRequest request){
		
		List<UserBasic> usrList = iuserbasicservice.query(new UserBasic());
		System.out.println(usrList.size());
		System.out.println(JSONArray.fromObject(usrList));
		return "page/welcome";
	}

	
}
