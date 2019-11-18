package com.user.platform.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.scwc.framework.spring.dao.ISingleDataManager;
import com.user.platform.entity.UserBasic;
import com.user.platform.service.IUserBasicService;


/**
 * 接口实现类
 * @author Administrator
 *
 */
@Component("userbasicserviceimpl")
public class UserBasicServiceImpl implements IUserBasicService {

	@Autowired
	private ISingleDataManager singleDataManager;

	@Override
	public int delete(UserBasic arg0) {
		return singleDataManager.delete(arg0);
	}

	@Override
	public List<UserBasic> query(UserBasic arg0) {
		return singleDataManager.findByQuery(arg0);
	}

	@Override
	public UserBasic store(UserBasic arg0) {
		return singleDataManager.store(arg0);
	}
	
}
