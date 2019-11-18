/**
 * 
 */
package com.user.platform.entity;

import com.scwc.framework.spring.entity.Entity;
import com.scwc.framework.spring.sql.base.Orm;

@Orm(tableName="mall_${class}")
public class UserBasic extends Entity {

	/**
	 * 
	 */
	private static final long serialVersionUID = 688934676270055784L;

	private @Orm String userName;//企业名称
	private @Orm String nickName;//昵称
	private @Orm(dataType="VARCHAR(400)") String headImgUrl;//用户头像
	private @Orm(dataType="VARCHAR(100)") String openId;//用户标识
	private @Orm String loginUser;
	private @Orm String loginPsw;
	private @Orm String levelUid;//会员等级
	
	private @Orm String lasyncsDate;//最后同步时间
	private @Orm String laloginDate;//最后登录时间
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getHeadImgUrl() {
		return headImgUrl;
	}
	public void setHeadImgUrl(String headImgUrl) {
		this.headImgUrl = headImgUrl;
	}
	public String getOpenId() {
		return openId;
	}
	public void setOpenId(String openId) {
		this.openId = openId;
	}
	public String getLoginUser() {
		return loginUser;
	}
	public void setLoginUser(String loginUser) {
		this.loginUser = loginUser;
	}
	public String getLoginPsw() {
		return loginPsw;
	}
	public void setLoginPsw(String loginPsw) {
		this.loginPsw = loginPsw;
	}
	public String getLasyncsDate() {
		return lasyncsDate;
	}
	public void setLasyncsDate(String lasyncsDate) {
		this.lasyncsDate = lasyncsDate;
	}
	public String getLaloginDate() {
		return laloginDate;
	}
	public void setLaloginDate(String laloginDate) {
		this.laloginDate = laloginDate;
	}
	public String getLevelUid() {
		return levelUid;
	}
	public void setLevelUid(String levelUid) {
		this.levelUid = levelUid;
	}
	@Override
	public String toString() {
		return "UserBasic [userName=" + userName + ", nickName=" + nickName + ", headImgUrl=" + headImgUrl + ", openId="
				+ openId + ", loginUser=" + loginUser + ", loginPsw=" + loginPsw + ", levelUid=" + levelUid
				+ ", lasyncsDate=" + lasyncsDate + ", laloginDate=" + laloginDate + "]";
	}
	
	
}
