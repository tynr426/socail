package com.user.platform.social;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

import com.user.platform.social.aes.WXBizMsgCrypt;
public class WxUtil {
    public static String getBodyString(HttpServletRequest request) {
        StringBuilder buffer = new StringBuilder("");
        try{
            request.setCharacterEncoding("UTF-8");
            BufferedReader reader=null;
            reader = new BufferedReader(new InputStreamReader(request.getInputStream(),"UTF-8"));
            String line=null;
            while((line = reader.readLine())!=null){
                buffer.append(line);
            }
        }catch (IOException e) {
        }
        return buffer.toString();
    }
    /// <summary>
    /// 错误代码验证
    /// </summary>
    private static Pattern reJsonErrorCode = Pattern.compile("\"errcode\":(?<errorCode>[^,|\\}]+)", Pattern.CASE_INSENSITIVE);

    /// <summary>
    /// 错误信息验证
    /// </summary>
    private static Pattern reJsonErrorMessage = Pattern.compile("\"errmsg\":(?<errorMessage>[^\"]+)", Pattern.CASE_INSENSITIVE);
	/// <summary>
    /// DecryptMessage the message.
    /// </summary>
    /// <param name="request">The request.</param>
    /// <param name="appId">The appId.</param>
    /// <param name="secret">The secret.</param>
    /// <param name="token">The token.</param>
    /// <param name="encodingAESKey">The encoding aes key.</param>
    /// <returns></returns>
    public static String DecryptMessage(HttpServletRequest request, String appId, String token, String encodingAESKey) throws Exception
    {
    	String nonce = request.getParameter("nonce"),
                timestamp = request.getParameter("timestamp"),
                msgSignature = request.getParameter("msg_signature");

         if (nonce.isEmpty() || timestamp.isEmpty() || msgSignature.isEmpty())
         {
             throw new Exception("None timestamp msgSignature 中有空值");
         }

         if (request.getMethod().toUpperCase() != "POST")
         {
        	 throw new Exception(" No Post Request ");
         }
         
         String postXml = getBodyString(request);
         WXBizMsgCrypt pc = new WXBizMsgCrypt(token, encodingAESKey, appId);
         String decryptMsg = pc.decryptMsg(msgSignature, timestamp, nonce, postXml);
         if (decryptMsg.isEmpty()) 
         {
        	 throw new Exception("签名数据错误，错误代码为：" + postXml);

         }
         else
         {
             return decryptMsg;
         }
    }

    /// <summary>
    /// 使用公共异常处理接口, 记录当前模板文档的异常信息
    /// </summary>
    /// <param name="responseInfo">微信服务器响应信息</param>
    /// <param name="info">处理什么接口时报错.</param>
    /// <param name="errMessage">返回错误消息.</param>
    /// <returns>
    /// System.Boolean
    /// </returns>
    public static Map<Boolean,String> Verified(String responseInfo, String info)
    {
    	Map<Boolean,String> result=new HashMap<Boolean,String>();
    	Matcher matchErrorMessage = reJsonErrorMessage.matcher(responseInfo);
    	Matcher matchErrorCode = reJsonErrorCode.matcher(responseInfo);

        if (!matchErrorMessage.matches() && !matchErrorCode.matches())
        { 
        	result.put(true,"");
        	return result;
        }

        String errorMessage = matchErrorMessage.group("errorMessage");
        String errorCode = matchErrorCode.group("errorCode");

        if (errorMessage.isEmpty() || errorCode.isEmpty() || errorCode.compareToIgnoreCase("0")==0 || errorMessage.compareToIgnoreCase("ok")==0)
        { 
        	result.put(true,"");
        	return result;
        }

        String errMessage = GetCodeMessage(errorCode);

        result.put(false,errMessage);
    	return result;
    }
   
    /// <summary>
    /// 获取状态码消息
    /// </summary>
    /// <param name="code">状态码.</param>
    /// <returns>
    /// System.String
    /// </returns>
    public static String GetCodeMessage(String code)
    {
        if (!code.isEmpty())
        {
        	 Map<String, String> codes=getStatusCode();
            if (codes.containsKey(code))
            {
                return codes.get(code);
            }
        }
        return "";
    }
    /// <summary>
    /// 处理微信返回状态查询结果
    /// </summary>
    private static Map<String, String> getStatusCode()
    {
        Map<String, String> codes = new HashMap<String, String>();
        codes.put("-1", "系统繁忙");
        codes.put("0", "请求成功");

        codes.put("40001", "获取access_token时AppSecret错误，或者access_token无效");
        codes.put("40002", "不合法的凭证类型");
        codes.put("40003", "不合法的OpenID");
        codes.put("40004", "不合法的媒体文件类型");
        codes.put("40005", "不合法的文件类型");
        codes.put("40006", "不合法的文件大小");
        codes.put("40007", "不合法的媒体文件id");
        codes.put("40008", "不合法的消息类型");
        codes.put("40009", "不合法的图片文件大小");
        codes.put("40010", "不合法的语音文件大小");
        codes.put("40011", "不合法的视频文件大小");
        codes.put("40012", "不合法的缩略图文件大小");
        codes.put("40013", "40013:不合法的 appid，appid或open_appid无效");
        codes.put("40014", "不合法的access_token");
        codes.put("40015", "不合法的菜单类型");
        codes.put("40016", "不合法的按钮个数");
        codes.put("40017", "不合法的缩略图文件大小");
        codes.put("40018", "不合法的按钮名字长度");
        codes.put("40019", "不合法的按钮KEY长度");
        codes.put("40020", "不合法的按钮URL长度");
        codes.put("40021", "不合法的菜单版本号");
        codes.put("40022", "不合法的子菜单级数");
        codes.put("40023", "不合法的子菜单按钮个数");
        codes.put("40024", "不合法的子菜单按钮类型");
        codes.put("40025", "不合法的子菜单按钮名字长度");
        codes.put("40026", "不合法的子菜单按钮KEY长度");
        codes.put("40027", "不合法的子菜单按钮URL长度");
        codes.put("40028", "不合法的自定义菜单使用用户");
        codes.put("40029", "不合法的oauth_code");
        codes.put("40030", "不合法的refresh_token");
        codes.put("40031", "不合法的openid列表");
        codes.put("40032", "不合法的openid列表长度");
        codes.put("40033", "不合法的请求字符，不能包含\\uxxxx格式的字符");
        codes.put("40035", "不合法的参数");
        codes.put("40038", "不合法的请求格式");
        codes.put("40039", "不合法的URL长度");
        codes.put("40050", "不合法的分组id");
        codes.put("40051", "分组名字不合法");
        codes.put("40054","不合法的子菜单按钮url域名");
        codes.put("40055","不合法的菜单按钮url域名");
        codes.put("40066","不合法的url");

        codes.put("41001", "缺少access_token参数");
        codes.put("41002", "缺少appid参数");
        codes.put("41003", "缺少refresh_token参数");
        codes.put("41004", "缺少secret参数");
        codes.put("41005", "缺少多媒体文件数据");
        codes.put("41006", "缺少media_id参数");
        codes.put("41007", "缺少子菜单数据");
        codes.put("41008", "缺少oauth code");
        codes.put("41009", "缺少openid");
        codes.put("41010", "missing url 缺失url参数");
        codes.put("40119", "invalid use button type");
        codes.put("40120", "invalid use sub button type");
        codes.put("42001", "access_token超时");
        codes.put("42002", "refresh_token超时");
        codes.put("42003", "oauth_code超时");

        codes.put("43001", "需要GET请求");
        codes.put("43002", "需要POST请求");
        codes.put("43003", "需要HTTPS请求");
        codes.put("43004", "需要接收者关注");
        codes.put("43005", "需要好友关系");

        codes.put("44001", "多媒体文件为空");
        codes.put("44002", "POST的数据包为空");
        codes.put("44003", "图文消息内容为空");
        codes.put("44004", "文本消息内容为空");

        codes.put("45001", "多媒体文件大小超过限制");
        codes.put("45002", "消息内容超过限制");
        codes.put("45003", "标题字段超过限制");
        codes.put("45004", "描述字段超过限制");
        codes.put("45005", "链接字段超过限制");
        codes.put("45006", "图片链接字段超过限制");
        codes.put("45007", "语音播放时间超过限制");
        codes.put("45008", "图文消息超过限制");
        codes.put("45009", "接口调用超过限制");
        codes.put("45010", "创建菜单个数超过限制");
        codes.put("45015", "回复时间超过限制");
        codes.put("45016", "系统分组，不允许修改");
        codes.put("45017", "分组名字过长");
        codes.put("45018", "分组数量超过上限");
        codes.put("45047", "客服接口下行条数超过上限");

        codes.put("46001", "不存在媒体数据");
        codes.put("46002", "不存在的菜单版本");
        codes.put("46003", "不存在的菜单数据");
        codes.put("46004", "不存在的用户");

        codes.put("47001", "解析JSON/XML内容错误");

        codes.put("48001", "api功能未授权");
        codes.put("48002","粉丝拒收消息（粉丝在公众号选项中，关闭了 “ 接收消息 ” ）");
        codes.put("48004","api 接口被封禁，请登录 mp.weixin.qq.com 查看详情");
        codes.put("48005","api 禁止删除被自动回复和自定义菜单引用的素材");
        codes.put("48006","api 禁止清零调用次数，因为清零次数达到上限");
        codes.put("48008","没有该类型消息的发送权限");

        codes.put("50001", "用户未授权该api");
        codes.put("50002","用户受限，可能是违规后接口被封禁");

        codes.put("61006","ticket is invalid");
        codes.put("61451","参数错误 (invalid parameter)");
        codes.put("61452","无效客服账号 (invalid kf_account)");
        codes.put("61453","客服帐号已存在 (kf_account exsited)");
        codes.put("61454","客服帐号名长度超过限制 ( 仅允许 10 个英文字符，不包括 @ 及 @ 后的公众号的微信号 )(invalid kf_acount length)");
        codes.put("61455","客服帐号名包含非法字符 ( 仅允许英文 + 数字 )(illegal character in kf_account)");
        codes.put("61456","客服帐号个数超过限制 (10 个客服账号 )(kf_account count exceeded)");
        codes.put("61457","无效头像文件类型 (invalid file type)");
        codes.put("61450","系统错误 (system error)");
        codes.put("61500","日期格式错误");

        codes.put("65301","不存在此 menuid 对应的个性化菜单");
        codes.put("65302","没有相应的用户");
        codes.put("65303","没有默认菜单，不能创建个性化菜单");
        codes.put("65304","MatchRule 信息为空");
        codes.put("65305","个性化菜单数量受限");
        codes.put("65306","不支持个性化菜单的帐号");
        codes.put("65307","个性化菜单信息为空");
        codes.put("65308","包含没有响应类型的 button");
        codes.put("65309","个性化菜单开关处于关闭状态");
        codes.put("65310","填写了省份或城市信息，国家信息不能为空");
        codes.put("65311","填写了城市信息，省份信息不能为空");
        codes.put("65312","不合法的国家信息");
        codes.put("65313","不合法的省份信息");
        codes.put("65314","不合法的城市信息");
        codes.put("65316","该公众号的菜单设置了过多的域名外跳（最多跳转到 3 个域名的链接）");
        codes.put("65317","不合法的 URL");

        codes.put("89000","89000:account has bound open，该公众号/小程序已经绑定了开放平台帐号");
        codes.put("89001","89001:not same contractor，Authorizer与开放平台帐号主体不相同");
        codes.put("89002","89002:open not exists，该公众号/小程序未绑定微信开放平台帐号" );
        codes.put("89003","89003:该开放平台帐号并非通过api创建，不允许操作" );
        codes.put("89004","89004:该开放平台帐号所绑定的公众号/小程序已达上限(100个)");

        codes.put("85015","该账号不是小程序账号");
        codes.put("85016","域名数量超过限制");
        codes.put("85017","没有新增域名，请确认小程序已经添加了域名或该域名是否没有在第三方平台添加");
        codes.put("85018","域名没有在第三方平台设置");

        codes.put("89019","业务域名无更改，无需重复设置");
        codes.put("89020","尚未设置小程序业务域名，请先在第三方平台中设置小程序业务域名后在调用本接口");
        codes.put("89021","请求保存的域名不是第三方平台中已设置的小程序业务域名或子域名");
        codes.put("89029","业务域名数量超过限制");
        codes.put("89231","个人小程序不支持调用setwebviewdomain 接口");

        codes.put("85064","找不到草稿/模版");
        codes.put("85065","模版库已满");

        codes.put("85013","无效的自定义配置");
        codes.put("85014","无效的模版编号");
        codes.put("85043","模版错误");
        codes.put("85044","代码包超过大小限制");
        codes.put("85045","ext_json有不存在的路径");
        codes.put("85046","tabBar中缺少path");
        codes.put("85047","pages字段为空");
        codes.put("85048","ext_json解析失败");

        codes.put("85006","标签格式错误");
        codes.put("85007","页面路径错误");

        codes.put("85008","类目填写错误");
        codes.put("85009","已经有正在审核的版本");
        codes.put("85010","item_list有项目为空");
        codes.put("85011","标题填写错误");
        codes.put("85012","无效的审核id");
        codes.put("85023","审核列表填写的项目数不在1-5以内");
        codes.put("85077","小程序类目信息失效（类目中含有官方下架的类目，请重新选择类目）");
        codes.put("86002","小程序还未设置昵称、头像、简介。请先设置完后再重新提交。");
        codes.put("85085","近7天提交审核的小程序数量过多，请耐心等待审核完毕后再次提交");
        codes.put("85086","提交代码审核之前需提前上传代码");
        codes.put("85019","没有审核版本");
        codes.put("85020","审核状态未满足发布");
        codes.put("85021","状态不可变");
        codes.put("85022","action非法");
        codes.put("85052","小程序已经发布过");
        codes.put("86000","不是由第三方代小程序进行调用");
        codes.put("86001","不存在第三方的已经提交的代码");
        codes.put("87013","撤回次数达到上限（每天一次，每个月10次）");

        codes.put("9001001","POST 数据参数不合法");
        codes.put("9001002","远端服务不可用");
        codes.put("9001003","Ticket 不合法");
        codes.put("9001004","获取摇周边用户信息失败");
        codes.put("9001005","获取商户信息失败");
        codes.put("9001006","获取 OpenID 失败");
        codes.put("9001007","上传文件缺失");
        codes.put("9001008","上传素材的文件类型不合法");
        codes.put("9001009","上传素材的文件尺寸不合法");
        codes.put("9001010","上传失败");
        codes.put("9001020","帐号不合法");
        
        return codes;
        
    }

}
