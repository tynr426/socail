package com.user.platform.social;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.dom4j.Attribute;
import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;

import net.sf.json.JSONObject;
import com.user.platform.utils.*;
public class ComponentAuthorizer {
    /// <summary>
    /// 微信通用接口平台服务器地址
    /// </summary>
    public static String MPApiHost = "https://api.weixin.qq.com";

    /// <summary>
    /// 开放平台接口服务器地址
    /// </summary>
    public static String OpenApiHost = "https://open.weixin.qq.com";
	  /// <summary>
    /// Gets the access ticket.
    /// </summary>
    /// <param name="request">The request.</param>
    /// <param name="appId">The appId.</param>
    /// <param name="token">The token.</param>
    /// <param name="encodingAESKey">The encoding aes key.</param>
    /// <param name="errMessage">The error message.</param>
    /// <returns></returns>
    public static JsonResult GetAccessTicket(HttpServletRequest request, String appId, String token, String encodingAESKey)
    {
        try
        {
        	Map<String,String> dic=new HashMap<String,String>();
            String msgXml = WxUtil.DecryptMessage(request, appId, token, encodingAESKey);
           
            Document document = DocumentHelper.parseText(msgXml);

//    		String encrypt = (String)jsonObject.get("Encrypt");
//    		String msgSignature = (String)jsonObject.get("MsgSignature");
//            XmlDocument doc = new XmlDocument();
//            doc.LoadXml(msgXml);
            Element rootElement = document.getRootElement();
            for (Iterator iter = rootElement.elementIterator(); iter.hasNext();) 
            {
	            Element element = (Element) iter.next(); // 获取标签对象
	            Attribute attr = element.attribute("href");  //获得属性
		          if (null != attr  || "".equals(attr))
		          {
		            String attrVal = attr.getValue();
		            String attrName = attr.getName();
		            dic.put(attrName, attrVal);
		          }
            }
            return new JsonResult(dic);
            
        }
        catch (Exception ex)
        {
        	System.out.println(ex.getMessage());
        	return new JsonResult(ex);
        }
    }
    /// <summary>
    /// 获取第三方平台component_access_token
    /// </summary>
    /// <param name="appId">The appid.</param>
    /// <param name="secret">The secret.</param>
    /// <param name="ticket">The ticket.</param>
    /// <param name="errMessage">The error message.</param>
    /// <returns></returns>
    public static JsonResult GetAccessToken(String appId, String secret, String ticket)
    {

        try
        {
        	Map<String, Object> list=new HashMap<String, Object>();
           
            list.put("component_appid", appId);
            list.put("component_appsecret", secret);
            list.put("component_verify_ticket", ticket);

            // 获取授权Token
            String postResult = HttpRequestUtils.sendHttpPost(MPApiHost + "/cgi-bin/component/api_component_token", list);
            Map<Boolean,String> result=WxUtil.Verified(postResult, "");
            if (result.containsKey(true))
            {
            	JSONObject jsonObject = JSONObject.fromObject(postResult);
	              if (jsonObject.containsKey("component_access_token"))
	              {
	            	  return new JsonResult(jsonObject.get("component_access_token"));
	              }
                return new JsonResult(new Exception("component_access_token为空！"));
            }
            else{
            	return new JsonResult(new Exception(result.get(false)));
            }

        }
        catch (Exception ex)
        {
            return new JsonResult(ex);
        }
    }

    /// <summary>
    /// 获取预授权码pre_auth_code
    /// </summary>
    /// <param name="componentAppid">The appid.</param>
    /// <param name="component_access_token">The access token.</param>
    /// <param name="errMessage">The error message.</param>
    /// <returns></returns>
    public static JsonResult GetPreAuthCode(String componentAppid, String component_access_token)
    {
      
        try
        {
            String url = String.format(MPApiHost + "/cgi-bin/component/api_create_preauthcode?component_access_token={0}", component_access_token);
            Map<String, Object> list=new HashMap<String, Object>();
            list.put("component_appid", componentAppid);

            String postResult = HttpRequestUtils.sendHttpPost(url, list);
            Map<Boolean,String> result=WxUtil.Verified(postResult, "");
            if (result.containsKey(true))
            {
            	JSONObject jsonObject = JSONObject.fromObject(postResult);
	              if (jsonObject.containsKey("pre_auth_code"))
	              {
	            	  return new JsonResult(jsonObject.get("pre_auth_code"));
	              }
                return new JsonResult(new Exception("预授权码为空！"));
            }
            else{
            	return new JsonResult(new Exception(result.get(false)));
            }

        }
        catch (Exception ex)
        {
        	return new JsonResult(ex);
        }
    }

    /// <summary>
    /// 获取授权二维码
    /// </summary>
    /// <param name="appid">第三方组件appid</param>
    /// <param name="pre_auth_code">预授权码</param>
    /// <param name="redirect_uri">回调url（必须编码）</param>
    /// <param name="auth_type">1则商户扫码后，手机端仅展示公众号、2表示仅展示小程序，3表示公众号和小程序都展示</param>
    /// <returns></returns>
    public static String GetLoginPageUrl(String appid, String pre_auth_code, String redirect_uri,String auth_type)
    {
        String qr_url = "https://mp.weixin.qq.com/cgi-bin/componentloginpage?component_appid={0}&pre_auth_code={1}&auth_type={3}&redirect_uri={2}";
        return String.format(qr_url, appid, pre_auth_code, redirect_uri,auth_type);
    }

    /// <summary>
    /// 使用授权码换取公众号的授权信息
    /// </summary>
    /// <param name="componentAccessToken">服务开发方的access_token</param>
    /// <param name="componentAppId">服务开发方的appid</param>
    /// <param name="authorizationCode">授权code,会在授权成功时返回给第三方平台，详见第三方平台授权流程说明</param>
    /// <param name="errMessage">The error message.</param>
    /// <returns></returns>
    public static JsonResult QueryAuth(String componentAccessToken, String componentAppId, String authorizationCode)
    {
        try
        {
            String url = String.format(MPApiHost + "/cgi-bin/component/api_query_auth?component_access_token={0}", componentAccessToken);

            Map<String,Object> list = new HashMap<String, Object>();
            list.put("component_appid", componentAppId);
            list.put("authorization_code", authorizationCode);

            String postResult = HttpRequestUtils.sendHttpPost(url, list);
            Map<Boolean,String> result=WxUtil.Verified(postResult, "");
            if (result.containsKey(true))
            {
            	JSONObject jsonObject = JSONObject.fromObject(postResult);
                return new JsonResult(jsonObject);
            }
            else{
            	return new JsonResult(new Exception(result.get(false)));
            }
        }
        catch (Exception ex)
        {
           return new JsonResult(ex);
        }
    }


    /// <summary>
    /// 获取（刷新）授权公众号或小程序的接口调用凭据（令牌）
    /// </summary>
    /// <param name="componentAppid">The component appid.</param>
    /// <param name="componentAccess_token">The component access token.</param>
    /// <param name="authorize_appid">The authorize appid.</param>
    /// <param name="authorizer_refresh_token">The authorizer refresh token.</param>
    /// <param name="errMessage">The error message.</param>
    /// <returns></returns>
    public static JsonResult GetRefreshToken(String componentAppid, String componentAccess_token, String authorize_appid, String authorizer_refresh_token)
    {
        try
        {
            Map<String, Object> list = new HashMap<String, Object>();
            list.put("component_appid", componentAppid);
            list.put("authorizer_appid", authorize_appid);
            list.put("authorizer_refresh_token", authorizer_refresh_token);

            String postResult = HttpRequestUtils.sendHttpPost(String.format(MPApiHost + "/cgi-bin/component/api_authorizer_token?component_access_token={0}", componentAccess_token), list);

            Map<Boolean,String> result=WxUtil.Verified(postResult, "");
            if (result.containsKey(true))
            {
            	JSONObject jsonObject = JSONObject.fromObject(postResult);
                return new JsonResult(jsonObject);
            }
            else{
            	return new JsonResult(new Exception(result.get(false)));
            }
        }
        catch (Exception ex)
        {
           return new JsonResult(ex);
        }
    }

    /// <summary>
    /// 获取授权方的帐号基本信息
    /// </summary>
    /// <param name="componentAppid">The component appid.</param>
    /// <param name="componentAccess_token">The component access token.</param>
    /// <param name="authorize_appid">The authorize appid.</param>
    /// <param name="errMessage">The error message.</param>
    /// <returns></returns>
    public static JsonResult GetAuthorizerInfo(String componentAppid, String componentAccess_token, String authorize_appid)
    {
        if (componentAccess_token.isEmpty() || componentAppid.isEmpty() || authorize_appid.isEmpty())
        {
            return new JsonResult(new Exception("提交的对参数为"));
       
        }
        try
        {
            String url = String.format(MPApiHost + "/cgi-bin/component/api_get_authorizer_info?component_access_token={0}", componentAccess_token);
            Map<String, Object> list = new HashMap<String, Object>();
            list.put("component_appid", componentAppid);
            list.put("authorizer_appid", authorize_appid);

            String postResult = HttpRequestUtils.sendHttpPost(url, list);
            Map<Boolean,String> result=WxUtil.Verified(postResult, "");
            if (result.containsKey(true))
            {
            	JSONObject jsonObject = JSONObject.fromObject(postResult);
                return new JsonResult(jsonObject);
            }
            else{
            	return new JsonResult(new Exception(result.get(false)));
            }
        }
        catch (Exception ex)
        {
           return new JsonResult(ex);
        }

    }  

    /// <summary>
    /// 确认授权
    /// </summary>
    /// <param name="componentAppId">服务开发方的appid</param>
    /// <param name="componentAccessToken">服务开发方的access_token</param>
    /// <param name="authorizerAppid">授权code,会在授权成功时返回给第三方平台，详见第三方平台授权流程说明</param>
    /// <param name="funscopeCategoryId">服务开发方的access_token</param>
    /// <param name="confirmValue">服务开发方的access_token</param>
    /// <param name="error">返回错误信息</param>
    /// <returns></returns>
    public static JsonResult ApiConfirmAuth(String componentAccessToken, String componentAppId, String authorizerAppid, int funscopeCategoryId, int confirmValue)
    {

        try
        {
            String url = String.format(MPApiHost + "/cgi-bin/component/api_confirm_authorization?component_access_token={0}", componentAccessToken);


            Map<String, Object> list = new HashMap<String, Object>();
            list.put("component_appid", componentAppId);
            list.put("authorizer_appid", authorizerAppid);
            list.put("funscope_category_id", funscopeCategoryId);
            list.put("confirm_value", confirmValue);

            String postResult = HttpRequestUtils.sendHttpPost(url, list);

            Map<Boolean,String> result=WxUtil.Verified(postResult, "");
            if (result.containsKey(true))
            {
            	JSONObject jsonObject = JSONObject.fromObject(postResult);
                return new JsonResult(jsonObject);
            }
            else{
            	return new JsonResult(new Exception(result.get(false)));
            }
        }
        catch (Exception ex)
        {
           return new JsonResult(ex);
        }
    }
}
