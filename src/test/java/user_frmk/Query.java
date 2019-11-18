package user_frmk;

import com.aliyun.common.utils.HttpUtil;

import net.sf.json.JSONObject;

public class Query {
	
	    public static final String APPKEY = "your_appkey_here";// 你的appkey
	    public static final String URL = "https://api.jisuapi.com/idcard/query";
	    public static final String idcard = "41272519800102067x";
	 
	    public static void Get() {
	        String result = null;
	        String url = URL + "?appkey=" + APPKEY + "&idcard=" + idcard;
	 
	      /*  try {
	            result = HttpUtil.sendGet(url, "utf-8");
	            JSONObject json = JSONObject.fromObject(result);
	            if (json.getInt("status") != 0) {
	                System.out.println(json.getString("msg"));
	            } else {
	                JSONObject resultarr = json.optJSONObject("result");
	                String province = resultarr.getString("province");
	                String city = resultarr.getString("city");
	                String town = resultarr.getString("town");
	                String lastflag = resultarr.getString("lastflag");
	                String sex = resultarr.getString("sex");
	                String birth = resultarr.getString("birth");
	                System.out.println(province + " " + city + " " + town + " " + lastflag + " " + sex + " " + birth);
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }*/
	}
}