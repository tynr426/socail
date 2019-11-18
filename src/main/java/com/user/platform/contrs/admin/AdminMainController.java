package com.user.platform.contrs.admin;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.user.platform.entity.UserBasic;
import com.user.platform.service.IUserBasicService;
import com.user.platform.social.*;
import com.user.platform.utils.JsonResult;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

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
	private static String _AppId="";
	private static String _Secret="";
	private static String _EncodingAESKey="";
	private static String _EncodingToken="";
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
	@RequestMapping("/postTicket.do")
	public void SaveTicket(HttpServletRequest request,HttpServletResponse response){
		JsonResult result = ComponentAuthorizer.GetAccessTicket(request, _AppId, _EncodingToken, _EncodingAESKey);
		if(result.getState()==0){
			
			return;
		}
		Map<String,String> dic=(Map<String,String>)result.getData();
		 if (dic.containsKey("ComponentVerifyTicket"))
         {
              String ticket = dic.get("ComponentVerifyTicket");
             //写入数据库
            
         }
		 try {
			response.getWriter().write("success");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
         
	}
	@RequestMapping("/getAuthUrl.do")
	public String GetAuthUrl(HttpServletRequest request,HttpServletResponse response){
		String ticket="";
		String apptype=request.getParameter("apptype");
		// get access token
		JsonResult result=ComponentAuthorizer.GetAccessToken(_AppId, _Secret, ticket);
		
		if(result.getState()==0){
		
			return "";
		}
		//get precode
		result = ComponentAuthorizer.GetPreAuthCode(_AppId, (String)result.getData());
		if(result.getState()==0){
			
			return "";
		}
		String preCode=(String)result.getData();
		if (preCode.isEmpty())
		{
			return "";
		}
		//get url
		String qurl = ComponentAuthorizer.GetLoginPageUrl(_AppId, preCode, "/WxComponent.do?", apptype);
		
		return "redirect:"+qurl;
	}
	@RequestMapping("/getAuthorizeInfo.do")
	public String SaveAuthorizeInfo(HttpServletRequest request,HttpServletResponse response){
		String token="",ticket="";
		String authCode=request.getParameter("auth_code");
		JsonResult result=ComponentAuthorizer.GetAccessToken(_AppId, _Secret, ticket);
		if(result.getState()==0){
			
			return "";
		}
		token=(String)result.getData();
		result = ComponentAuthorizer.QueryAuth(token, _AppId, authCode);
		if(result.getState()==0){
			
			return "";
		}
		Map<String,JSONObject> dic=(Map<String,JSONObject>)result.getData();
          
          if (dic.containsKey("authorization_info"))
          {
              
        	  Object authDic = dic.get("authorization_info");
        	  //写入数据库
        	  //
          }
          return "redirect:";
	}
	
}
