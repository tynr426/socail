package com.user.platform.contrs.admin;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import com.user.platform.social.*;
import com.user.platform.utils.JsonResult;


import net.sf.json.JSONObject;

@Controller
public class ThirdComponentController {

	
	@Autowired
	private static String _AppId="wx618efe0d63406d44";
	private static String _Secret="";
	private static String _Token="";
	private static String _EncodingAESKey="";
	private static String _EncodingToken="tokenkm323";
	private static String _Ticket="";
	@RequestMapping("/WxComponent.axd")
	public void ThirdComponentEvent(HttpServletRequest request,HttpServletResponse response){
	
	    if (request.getParameterMap().containsKey("auth_code"))
	    {
	        //保存授权信息
	    	SaveAuthorizeInfo(request,response);
	    }
	    else if (request.getMethod().toUpperCase() == "POST" && request.getParameterMap().containsKey("nonce")) // 回传AccessTicket
	    {
	        //保存ticket
	       
	    	SaveTicket(request,response);
	    }
        
	}
	/*
	 * 保存ticket
	 * */
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
              _Ticket=ticket;
         }
		 try {
			response.getWriter().write("success");
		} catch (IOException e) {
			e.printStackTrace();
		}
         
	}
	/*
	 * 授权页面
	 * */
	@RequestMapping("/authorize_page.do")
	public String GetAuthUrl(HttpServletRequest request,HttpServletResponse response){
		String apptype=request.getParameter("apptype");
		// get access token
		JsonResult result=ComponentAuthorizer.GetAccessToken(_AppId, _Secret, _Ticket);
		
		if(result.getState()==0){
		
			return "error";
		}
		//get precode
		result = ComponentAuthorizer.GetPreAuthCode(_AppId, (String)result.getData());
		if(result.getState()==0){
			
			return "error";
		}
		String preCode=(String)result.getData();
		if (preCode.isEmpty())
		{
			return "error";
		}
		//get url
		String qurl = ComponentAuthorizer.GetLoginPageUrl(_AppId, preCode, "/authorize_success_page.do", apptype);
		
		return "redirect:"+qurl;
	}
	/*
	 * 授权成功页面
	 * */
	public String SaveAuthorizeInfo(HttpServletRequest request,HttpServletResponse response){
		String authCode=request.getParameter("auth_code");
		JsonResult result=ComponentAuthorizer.GetAccessToken(_AppId, _Secret, _Ticket);
		if(result.getState()==0){
			
			return "";
		}
		_Token=(String)result.getData();
		result = ComponentAuthorizer.QueryAuth(_Token, _AppId, authCode);
		if(result.getState()==0){
			
			return "";
		}
		JSONObject dic=(JSONObject)result.getData();
          
          if (dic.containsKey("authorization_info"))
          {
              
        	  Object authDic = dic.get("authorization_info");
        	  //写入数据库
        	  return "redirect:success";
          }
          return "redirect:error";
	}
	
}
