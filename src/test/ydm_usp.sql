
-- ----------------------------
-- Table structure for `sys_apperror_logs`
-- ----------------------------
DROP TABLE IF EXISTS `sys_apperror_logs`;
CREATE TABLE `sys_apperror_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8_unicode_ci,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notify` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `receives` text COLLATE utf8_unicode_ci,
  `creator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastOperator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updateTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_index` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_apperror_logs
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_powermenu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_powermenu`;
CREATE TABLE `sys_powermenu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `classname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ptcode` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expn` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastOperator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updateTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_index` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_powermenu
-- ----------------------------
INSERT INTO `sys_powermenu` VALUES ('1', '560BB4062819D22FB45668BE40402E3A', '1', 'none', 'icon-home', '首页', 'root-home', 'default-cdbh', '/admin/homepg/index', null, 'admin', '2015-12-02 10:08:03', 'admin', '2016-08-04 18:51:38');
INSERT INTO `sys_powermenu` VALUES ('3', '6CFFF597BDC5B46C48AE0BDC79141F23', '3', 'none', 'icon-flag', '平台管理', 'root-ptgl', 'default-cdbh', '#', null, 'admin', '2015-12-02 10:08:03', 'admin', '2016-08-04 18:51:38');
INSERT INTO `sys_powermenu` VALUES ('4', '80B2FED858319CF135B6E0940C95600D', '4', 'none', 'icon-lock', '商户管理', 'root-shgl', 'default-cdbh', '#', null, 'admin', '2015-12-02 10:08:03', 'admin', '2016-08-04 18:51:38');
INSERT INTO `sys_powermenu` VALUES ('5', '2ED3BC240F4A9A7231DA7DD53C235813', '5', 'none', 'icon-th-large', '产品管理', 'root-cpgl', 'default-cdbh', '#', null, 'admin', '2015-12-02 10:08:03', 'admin', '2016-08-04 18:51:38');
INSERT INTO `sys_powermenu` VALUES ('6', '3432785559A2BE03EDD8CB6AB8493CE6', '1', 'none', 'default_power_classname', '商户管理', 'buserlistmgr', 'root-shgl', '/admin/buser/info/list/page', '所有代理商开通的商户列表管理', 'admin', '2015-12-02 10:08:03', 'admin', '2016-08-04 18:51:38');
INSERT INTO `sys_powermenu` VALUES ('7', 'E8AA3F8F2CE7A9F40ED52542648CF0BC', '2', 'none', 'default_power_classname', '模块打包管理', 'packlistmgr', 'root-cpgl', '/admin/product/pack/list/page', '', 'admin', '2015-12-02 10:08:03', 'admin', '2016-08-04 18:51:38');
INSERT INTO `sys_powermenu` VALUES ('8', '50A3373214184EA085CCE948DFFC0014', '1', 'none', 'default_power_classname', '授权平台管理', 'pfinfolistmgr', 'root-cpgl', '/admin/product/pfinfo/list/page', '', 'admin', '2015-12-02 10:08:03', 'admin', '2016-08-04 18:51:38');
INSERT INTO `sys_powermenu` VALUES ('9', '8A2608C02B9D30549F3E0E1DF0CC4EB8', '5', 'none', 'default_power_classname', '角色管理', 'ptglrolelist', 'root-ptgl', '/admin/ptgl/role/list/page', '', 'admin', '2015-12-02 10:08:03', 'admin', '2016-08-04 18:51:38');
INSERT INTO `sys_powermenu` VALUES ('10', '60121422E9F7AAB047CA5EF49868FEEF', '2', 'none', 'default_power_classname', '用户管理', 'ptgluserlist', 'root-ptgl', '/admin/ptgl/user/list/page', '', 'admin', '2015-12-02 10:08:03', 'admin', '2016-08-04 18:51:38');
INSERT INTO `sys_powermenu` VALUES ('11', '3B3B15751D1CBEEC29528A7BAA81F774', '2', 'none', 'default_power_classname', '商户列表', 'busermylistmgr', 'root-shgl', '/admin/buser/info/mylist/page', '代理商开通的商户列表管理', 'admin', '2015-12-03 11:49:59', 'admin', '2016-08-04 18:51:38');
INSERT INTO `sys_powermenu` VALUES ('13', '6EADD195B5A3BCA22D1B359744FD3BEF', '4', 'none', 'default_power_classname', '接口授权列表', 'infaceuserlist', 'root-ptgl', '/admin/inface/user/page', '', 'admin', '2016-08-04 18:35:24', 'admin', '2016-08-04 18:51:38');
INSERT INTO `sys_powermenu` VALUES ('14', '94496DB4806B7927E72777417BF63684', '1', 'none', 'glyphicon-edit', '编辑', 'infaceuserstore', 'infaceuserlist', '/admin/inface/user/{urlUid}/store/page', '接口授权列表编辑权限', 'admin', '2016-08-04 18:35:24', 'admin', '2016-08-04 18:51:38');
INSERT INTO `sys_powermenu` VALUES ('15', '73CCB7BFD8895899D4763E7FBBF5E93D', '5', 'none', 'default_power_classname', '新增授权信息', 'infaceuseradd', 'root-ptgl', '/admin/inface/user/add/page', '', 'admin', '2016-08-04 18:35:24', 'admin', '2016-08-04 18:51:38');
INSERT INTO `sys_powermenu` VALUES ('16', 'F0FF35E6D112A3636F640FF2FD348CFF', '3', 'none', 'default_power_classname', '启用|禁用', 'infaceuserupsta', 'infaceuserlist', '/admin/inface/user/upsta', '接口授权列表中启用|禁用权限', 'admin', '2016-08-04 18:35:24', 'admin', '2016-08-04 18:51:38');
INSERT INTO `sys_powermenu` VALUES ('17', '10FF35E6D112A3636F640FF2FD348CFF', '6', 'none', 'icon-home', '短信通道', 'root-sms', 'default-cdbh', '#', null, null, null, null, null);
INSERT INTO `sys_powermenu` VALUES ('18', '20FF35E6D112A3636F640FF2FD348CFF', '3', 'none', 'default_power_classname', '通道管理', 'sms-channel', 'root-sms', '/admin/sms/channel', null, null, null, null, null);
INSERT INTO `sys_powermenu` VALUES ('19', '30FF35E6D112A3636F640FF2FD348CFF', '2', 'none', 'default_power_classname', '模板管理', 'sms-template', 'root-sms', '/admin/sms/template', null, null, null, null, null);
INSERT INTO `sys_powermenu` VALUES ('20', '40FF35E6D112A3636F640FF2FD348CFF', '1', 'none', 'default_power_classname', '发送记录', 'smd-send-record', 'root-sms', '/admin/sms/sendRecord', null, null, null, null, null);

-- ----------------------------
-- Table structure for `usp_AdminFunKey`
-- ----------------------------
DROP TABLE IF EXISTS `usp_adminfunkey`;
CREATE TABLE `usp_adminfunkey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `funName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fkey` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mark` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `furl` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastOperator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updateTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`),
  KEY `uid_2` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of usp_AdminFunKey
-- ----------------------------

-- ----------------------------
-- Table structure for `usp_AdminRole`
-- ----------------------------
DROP TABLE IF EXISTS `usp_adminrole`;
CREATE TABLE `usp_adminrole` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `powerCodes` text COLLATE utf8_unicode_ci,
  `creator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastOperator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updateTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_index` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of usp_AdminRole
-- ----------------------------
INSERT INTO `usp_adminrole` VALUES ('1', 'admin', null, null, 'admin', null, ',all,', null, null, null, null);
INSERT INTO `usp_adminrole` VALUES ('2', '4FB1EDF9FB03FF09572C235D421344BE', null, '启用', '平台管理员', 'system', 'root-home,root-grzx,root-ptgl,ptgluserlist,ptglrolelist,root-shgl,buserlistmgr,busermylistmgr,root-cpgl,pfinfolistmgr,packlistmgr', 'admin', '2015-12-02 10:15:40', 'admin', '2015-12-03 11:50:28');
INSERT INTO `usp_adminrole` VALUES ('3', 'C3BCFDB0F222CCE78CF97A68BADBFAE5', null, '启用', '代理商角色', 'system', 'root-home,root-shgl,busermylistmgr', 'admin', '2015-12-02 10:16:01', 'admin', '2016-07-05 15:04:15');

-- ----------------------------
-- Table structure for `usp_AdminUser`
-- ----------------------------
DROP TABLE IF EXISTS `usp_adminuser`;
CREATE TABLE `usp_adminuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `basicMail` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `roleUids` text COLLATE utf8_unicode_ci,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `baiscName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mark` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loginPsw` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `basicTel` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loginName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastOperator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updateTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_index` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of usp_AdminUser
-- ----------------------------
INSERT INTO `usp_adminuser` VALUES ('1', 'D158F66C63AD3E83F3F114D81AD71667', 'zhang@qq.com', 'admin', null, null, null, null, 'admin@2016', '18109047759', 'admin', 'admin', '2019-02-13 00:00:00', 'admin', '2019-02-13 00:00:00');

-- ----------------------------
-- Table structure for `usp_ApiAccessLogs`
-- ----------------------------
DROP TABLE IF EXISTS `usp_apiaccesslogs`;
CREATE TABLE `usp_apiaccesslogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `times` int(11) DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `req` text COLLATE utf8_unicode_ci,
  `url` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resp` text COLLATE utf8_unicode_ci,
  `ip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastOperator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updateTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`),
  KEY `uid_2` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of usp_ApiAccessLogs
-- ----------------------------

-- ----------------------------
-- Table structure for `usp_BaseUserName`
-- ----------------------------
DROP TABLE IF EXISTS `usp_baseusername`;
CREATE TABLE `usp_baseusername` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slephone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `webName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remindDate` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `landline` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phoneNum` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `county` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slesconst` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expireDate` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkEmail` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `webCity` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastOperator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updateTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_index` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of usp_BaseUserName
-- ----------------------------
INSERT INTO `usp_baseusername` VALUES ('1', '70CDB99CF46DA1CEEAE324B208DE7E3D', '', 'normal', '易多米科技有限公司', '张先生', '2016-11-01 09:36:04', '成都市', '200000', '028-2468254', '18109047759', '天府新区', '天府大道中段', '张先生', '2016-12-02 09:36:04', '易多米科技', 'zhang@qq.com', '成都市', '四川省', 'admin', 'admin', '2015-12-03 09:36:04', 'admin', '2015-12-03 09:36:04');

-- ----------------------------
-- Table structure for `usp_buesuseraccount`
-- ----------------------------
DROP TABLE IF EXISTS `usp_buesuseraccount`;
CREATE TABLE `usp_buesuseraccount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loginPsw` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loginName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastOperator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updateTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `belongagent` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_index` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of usp_buesuseraccount
-- ----------------------------
INSERT INTO `usp_buesuseraccount` VALUES ('1', '99832F4E008F631FF7481CFCCCCEF86C', null, 'ydmkj', 'ydm@2019', 'ydmkj', 'admin', '2019-02-14 09:43:00', 'admin', '2019-02-14 09:43:00', 'admin');
INSERT INTO `usp_buesuseraccount` VALUES ('2', 'C34A6E80B1C0E3B812B52C38CBCDCA2A', null, 'test', 'ydm@2019', 'test', 'admin', '2019-02-14 10:16:39', 'admin', '2019-02-14 10:16:39', 'admin');
INSERT INTO `usp_buesuseraccount` VALUES ('3', '6CF83FDC95EA823A34FE95DE29E70217', null, 'yaqqcs', 'yaqqcs123', 'yaqqcs', 'admin', '2019-03-04 09:08:00', 'admin', '2019-03-04 09:08:00', 'admin');
INSERT INTO `usp_buesuseraccount` VALUES ('4', '05170D2FB6EB0A472A11BDC615879B0F', null, 'nxmzjj', 'nxmzjj123', 'nxmzjj', 'admin', '2019-04-24 18:09:45', 'admin', '2019-04-24 18:09:45', 'admin');
INSERT INTO `usp_buesuseraccount` VALUES ('5', '2E0D9EA6BDB26553C310552904150472', null, 'gyfgs', 'gyfgs123', 'gyfgs', 'admin', '2019-06-06 10:30:31', 'admin', '2019-06-06 10:30:31', 'admin');
INSERT INTO `usp_buesuseraccount` VALUES ('6', 'D3987BFD03301DD66422A5F95F86ED30', null, 'hjxy', 'hjxy123', 'hjxy', 'admin', '2019-06-07 07:02:23', 'admin', '2019-06-07 07:02:23', 'admin');
INSERT INTO `usp_buesuseraccount` VALUES ('7', '2A0311C1358B8170C063CA7DE1CECE3F', null, 'kycm', 'kycm123', 'kycm', 'admin', '2019-08-04 19:40:19', 'admin', '2019-08-04 19:40:19', 'admin');
INSERT INTO `usp_buesuseraccount` VALUES ('8', 'FC665BC7A700D4A04378594B414877C1', null, 'wldz', 'wldz123', 'wldz', 'admin', '2019-09-26 14:22:07', 'admin', '2019-09-26 14:22:07', 'admin');
INSERT INTO `usp_buesuseraccount` VALUES ('9', 'F3A237560F29F12E2E6E8F8FDBA6D6D9', null, 'xmx', 'xmx123', 'xmx', 'admin', '2019-10-13 11:29:36', 'admin', '2019-10-13 11:29:36', 'admin');

-- ----------------------------
-- Table structure for `usp_buesuserinfo`
-- ----------------------------
DROP TABLE IF EXISTS `usp_buesuserinfo`;
CREATE TABLE `usp_buesuserinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salePhone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `landline` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phoneNum` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `saleName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enoticeDate` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `county` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expireDate` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkEmail` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `industry` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uspTtype` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastOperator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updateTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isHelp` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mark` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `utype` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_index` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of usp_buesuserinfo
-- ----------------------------
INSERT INTO `usp_buesuserinfo` VALUES ('1', 'AD523B753BDCD526D705809EE6AD71C6', '18180237112', '冯先生', '成都市', '18180237112', '18180237112', '冯先生', '2024-01-29 09:41:00', '高新区', '成都市天府新区华阳街道锦江路4段', '2024-02-29 09:41:00', '易多米科技有限公司', '2771575726@qq.com', '四川省', 'ydmkj', '互联网', '企业', 'admin', '2019-02-14 09:43:00', 'admin', '2019-08-04 21:20:48', 'yes', '', '正式');
INSERT INTO `usp_buesuserinfo` VALUES ('2', '4A62863611E025EDD0BAAB5F13B1786E', '18180237112', '冯先生', '成都市', '18180237112', '18180237112', '冯先生', '2024-01-29 10:15:00', '高新区', '成都市天府新区华阳街道锦江路4段', '2024-02-29 10:15:00', '易多米科技有限公司', '2771575726@qq.com', '四川省', 'test', '互联网', '企业', 'admin', '2019-02-14 10:16:39', 'admin', '2019-06-15 20:11:12', 'yes', '', '正式');
INSERT INTO `usp_buesuserinfo` VALUES ('3', 'D201E14070DF835846F744082FB68B76', '18160034995', '王兴尧', '雅安市', '028-85980000', '18160034995', '王兴尧', '2020-02-29 09:06:00', '雨城区', '雨城区', '2020-03-31 09:06:00', '雅安青青村社文化传播有限公司', '18160034995@139.com', '四川省', 'yaqqcs', '互联网', '企业', 'admin', '2019-03-04 09:08:00', 'admin', '2019-04-24 18:02:15', 'yes', '', '正式');
INSERT INTO `usp_buesuserinfo` VALUES ('4', 'C95E67B375444F264FE17C0321514680', '18808310088', '古总', '宜宾市', '18808310088', '18808310088', '古总', '2020-03-31 06:02:00', '南溪县', '南溪明珠家居', '2020-05-01 06:02:00', '南溪明珠家居', '18808310088@qq.com', '四川省', 'nxmzjj', '家具', '企业', 'admin', '2019-04-24 18:09:45', 'admin', '2019-04-24 18:09:45', 'yes', '', '正式');
INSERT INTO `usp_buesuserinfo` VALUES ('5', 'BB2FB068B0F68BDB6153F61BD9D04BEC', '18109047759', '张姐', '贵阳市', '13314466615', '13314466615', '张先生', '2020-05-30 10:27:00', '南明区', '贵阳分公司', '2020-06-30 10:27:00', '贵阳分公司', '13314466615@qq.com', '贵州省', 'gyfgs', '互联网', '企业', 'admin', '2019-06-06 10:30:31', 'admin', '2019-06-06 10:30:31', 'yes', '', '正式');
INSERT INTO `usp_buesuserinfo` VALUES ('6', 'F54631854CC83C515CAE418C4C973D63', '18109047759', '朱哥', '成都市', '13072893868', '13072893868', '张先生', '2020-05-15 06:59:00', '锦江区', '汉嘉新源', '2020-06-15 06:59:00', '汉嘉新源', '13072893868@qq.com', '四川省', 'hjxy', '互联网', '企业', 'admin', '2019-06-07 07:02:23', 'admin', '2019-06-07 07:02:23', 'yes', '', '正式');
INSERT INTO `usp_buesuserinfo` VALUES ('7', '6A7A4178E95987AE5DD87611E6CF52BC', '18180237112', '赵先生', '成都市', '18100000000', '18100000000', '张先生', '2020-11-30 07:36:00', '武侯区', '成都市武侯区', '2020-12-31 07:36:00', '快眼传媒', '1234@qq.com', '四川省', 'kycm', '互联网', '企业', 'admin', '2019-08-04 19:40:19', 'admin', '2019-08-14 21:56:25', 'yes', '', '正式');
INSERT INTO `usp_buesuserinfo` VALUES ('8', 'D398F7100AB65901C2C10647B2850DE9', '18109047759', '庞总', '长沙市', '13786129988', '13786129988', '张玉玺', '2020-11-30 02:10:00', '芙蓉区', '湖南温翎定制', '2020-12-31 02:10:00', '湖南温翎定制', '13786129988@qq.com', '湖南省', 'wldz', '服饰', '企业', 'admin', '2019-09-26 14:22:07', 'admin', '2019-09-26 14:22:07', 'yes', '', '正式');
INSERT INTO `usp_buesuserinfo` VALUES ('9', 'F2C87D461A79623130960AFC69D95AAC', '18160136889', '李东', '绵阳市', '18160136889', '18160136889', '李东', '2020-11-30 11:27:00', '涪城区', '绵阳市', '2020-12-31 11:27:00', '乖乖童装店', '18160136889@qq.com', '四川省', 'xmx', '互联网', '个人', 'admin', '2019-10-13 11:29:36', 'admin', '2019-10-13 11:29:36', 'yes', '', '正式');

-- ----------------------------
-- Table structure for `usp_buesuserpack`
-- ----------------------------
DROP TABLE IF EXISTS `usp_buesuserpack`;
CREATE TABLE `usp_buesuserpack` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mark` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `puids` varchar(3000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastOperator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updateTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_index` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of usp_buesuserpack
-- ----------------------------
INSERT INTO `usp_buesuserpack` VALUES ('1', 'EEC89FD686770818AC4A4B18B166166A', null, 'ydmkj', null, 'jcdand,F9E57D4008AA78258C46E14EFBD34EC7', 'admin', '2019-02-14 09:43:00', 'admin', '2019-02-14 09:43:00');
INSERT INTO `usp_buesuserpack` VALUES ('2', 'B67280107030D5FA11F596DF23C7618B', null, 'test', null, '8327C83A36D3F8F3945CD3BA31FD0AE4', 'admin', '2019-02-14 10:16:39', 'admin', '2019-02-14 10:16:39');
INSERT INTO `usp_buesuserpack` VALUES ('3', '369F881049FDC334D74764BFA9219543', null, 'yaqqcs', null, '6DD87593B4E65BBE62BDEB4E74F04311,8327C83A36D3F8F3945CD3BA31FD0AE4', 'admin', '2019-03-04 09:08:00', 'admin', '2019-03-04 09:08:00');
INSERT INTO `usp_buesuserpack` VALUES ('4', 'C1792E83892AAE2F9DB1578F4AE9CE80', null, 'nxmzjj', null, '8327C83A36D3F8F3945CD3BA31FD0AE4', 'admin', '2019-04-24 18:09:45', 'admin', '2019-04-24 18:09:45');
INSERT INTO `usp_buesuserpack` VALUES ('5', '7B666FB15B9175AA45A4FFB2E0083E71', null, 'gyfgs', null, '8327C83A36D3F8F3945CD3BA31FD0AE4', 'admin', '2019-06-06 10:30:31', 'admin', '2019-06-06 10:30:31');
INSERT INTO `usp_buesuserpack` VALUES ('6', '5D7B199A04F4C197A3A9271C112E142A', null, 'hjxy', null, '8327C83A36D3F8F3945CD3BA31FD0AE4', 'admin', '2019-06-07 07:02:23', 'admin', '2019-06-07 07:02:23');
INSERT INTO `usp_buesuserpack` VALUES ('7', '3402267A5244F9FAA5E8D81697C863E4', null, 'kycm', null, 'kycm', 'admin', '2019-08-04 19:40:19', 'admin', '2019-08-04 19:40:19');
INSERT INTO `usp_buesuserpack` VALUES ('8', 'EDD6A86F0FF9120990219375346E29BF', null, 'wldz', null, '8327C83A36D3F8F3945CD3BA31FD0AE4', 'admin', '2019-09-26 14:22:07', 'admin', '2019-09-26 14:22:07');
INSERT INTO `usp_buesuserpack` VALUES ('9', '9242D54838156C16F2E0DED6159798A6', null, 'xmx', null, '8327C83A36D3F8F3945CD3BA31FD0AE4', 'admin', '2019-10-13 11:29:36', 'admin', '2019-10-13 11:29:36');

-- ----------------------------
-- Table structure for `usp_BuesUserServer`
-- ----------------------------
DROP TABLE IF EXISTS `usp_buesuserserver`;
CREATE TABLE `usp_buesuserserver` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wfxDomain` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `disbUid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userpf` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastOperator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updateTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`),
  KEY `uid_2` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of usp_BuesUserServer
-- ----------------------------

-- ----------------------------
-- Table structure for `usp_buesuspsmallprice`
-- ----------------------------
DROP TABLE IF EXISTS `usp_buesuspsmallprice`;
CREATE TABLE `usp_buesuspsmallprice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `userName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `creator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastOperator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updateTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_index` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of usp_buesuspsmallprice
-- ----------------------------
INSERT INTO `usp_buesuspsmallprice` VALUES ('1', 'E46B7A221B2774A271195CE961C762A8', '600', 'ydmkj', '25', 'admin', '2019-02-14 09:43:00', 'admin', '2019-02-14 09:43:00');
INSERT INTO `usp_buesuspsmallprice` VALUES ('2', '4FC9A0E79001E8823F5A6C5E42ECFC24', '600', 'test', '25', 'admin', '2019-02-14 10:16:39', 'admin', '2019-02-14 10:16:39');
INSERT INTO `usp_buesuspsmallprice` VALUES ('3', 'B5516604304705DC90DAD679F3428DAF', '600', 'yaqqcs', '25', 'admin', '2019-03-04 09:08:00', 'admin', '2019-03-04 09:08:00');
INSERT INTO `usp_buesuspsmallprice` VALUES ('4', '3473DDDED037628B3CC6C5AA64966AFF', '600', 'nxmzjj', '25', 'admin', '2019-04-24 18:09:45', 'admin', '2019-04-24 18:09:45');
INSERT INTO `usp_buesuspsmallprice` VALUES ('5', '5DAA67DF7B6F5A95A697C4E473C83167', '600', 'gyfgs', '25', 'admin', '2019-06-06 10:30:31', 'admin', '2019-06-06 10:30:31');
INSERT INTO `usp_buesuspsmallprice` VALUES ('6', 'B6D289F92DC5630886C4E5680B307997', '600', 'hjxy', '25', 'admin', '2019-06-07 07:02:23', 'admin', '2019-06-07 07:02:23');
INSERT INTO `usp_buesuspsmallprice` VALUES ('7', '550A717791F26B921E4A9E3CE6E3EABB', '600', 'kycm', '25', 'admin', '2019-08-04 19:40:19', 'admin', '2019-08-04 19:40:19');
INSERT INTO `usp_buesuspsmallprice` VALUES ('8', 'DC660FCE409971E0ACCCE5FDBC06C2B4', '600', 'wldz', '25', 'admin', '2019-09-26 14:22:07', 'admin', '2019-09-26 14:22:07');
INSERT INTO `usp_buesuspsmallprice` VALUES ('9', '894DC2B7A953DEAAA2293DD02E7E67C9', '600', 'xmx', '25', 'admin', '2019-10-13 11:29:36', 'admin', '2019-10-13 11:29:36');

-- ----------------------------
-- Table structure for `usp_DisbServer`
-- ----------------------------
DROP TABLE IF EXISTS `usp_disbserver`;
CREATE TABLE `usp_disbserver` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `domian` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `system` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `maxServ` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mark` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userpf` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastOperator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updateTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`),
  KEY `uid_2` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of usp_DisbServer
-- ----------------------------

-- ----------------------------
-- Table structure for `usp_infaceuser`
-- ----------------------------
DROP TABLE IF EXISTS `usp_infaceuser`;
CREATE TABLE `usp_infaceuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isUse` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `secret` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mark` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastOperator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updateTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_index` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of usp_infaceuser
-- ----------------------------
INSERT INTO `usp_infaceuser` VALUES ('7', '5A3C6B69C50740C7B0463BB3EC298605', 'Y', 'NSTKQ8aeBejK3Z6htKrHFnKEQickB8Np', 's', 'usp.wfx_commn', '^.*$', 'admin', '2016-08-04 17:12:24', 'admin', '2018-10-08 19:16:29');
INSERT INTO `usp_infaceuser` VALUES ('13', 'F820B7551AD70010EDB6761BF62645A0', 'Y', 'ppYDHMxkSkQ8Tix8weZ5KDY4fFy438sW', 'liunx', 'usp.wfx_commn_liunx', '^.*$', 'admin', '2016-09-23 10:47:11', 'admin', '2018-10-08 19:14:53');
INSERT INTO `usp_infaceuser` VALUES ('15', '769BAC0682D1691B0FB663359C59F672', 'Y', 'XWGYMRpWHE5c3TXEJ4ecxeii7cMKRzbF', ' ', 'usp.wfx_liunx_commn', '^.*$', 'admin', '2016-12-28 14:31:34', 'admin', '2018-10-08 19:03:50');
INSERT INTO `usp_infaceuser` VALUES ('18', 'A1F11EB57F3FDBC553ABCF6F82E5CCD2', 'Y', '8QNwKzkp7JXa7dsPRCFpiJGKnm4Qw4hP', '微信宝2', 'usp.wcs_commn_145', '^.*$', 'admin', '2017-01-17 14:37:27', 'admin', '2018-10-08 19:15:18');
INSERT INTO `usp_infaceuser` VALUES ('19', '1480E61D940D50ECDAE9266BC5C10EE7', 'Y', 'ZXbTzzmWWNbSGmHKQRjjJcSnS8NB3npk', '智慧城市买断', 'usp.wcs_xammwl', '^.*$', 'admin', '2017-10-10 15:10:03', 'admin', '2018-10-08 19:15:13');

-- ----------------------------
-- Table structure for `usp_MemberCard`
-- ----------------------------
DROP TABLE IF EXISTS `usp_membercard`;
CREATE TABLE `usp_membercard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cardId` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `headImgUrl` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uuId` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `storeUid` text COLLATE utf8_unicode_ci,
  `levelUid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `totalIntegral` int(11) DEFAULT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `integral` int(11) DEFAULT NULL,
  `cardNo` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `balance` decimal(10,2) DEFAULT NULL,
  `cardName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expense` decimal(10,2) DEFAULT NULL,
  `nickName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `times` int(11) DEFAULT NULL,
  `activated` tinyint(4) DEFAULT NULL,
  `levelName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `storeId` text COLLATE utf8_unicode_ci,
  `openId` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastOperator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updateTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deposit` decimal(10,2) DEFAULT NULL,
  `name` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_index` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of usp_MemberCard
-- ----------------------------

-- ----------------------------
-- Table structure for `usp_MemberCardConfig`
-- ----------------------------
DROP TABLE IF EXISTS `usp_membercardconfig`;
CREATE TABLE `usp_membercardconfig` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiresDate` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deposit` tinyint(4) DEFAULT NULL,
  `cardNoPrefix` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `signedIntegral` tinyint(4) DEFAULT NULL,
  `activateMethod` tinyint(4) DEFAULT NULL,
  `integral` int(11) DEFAULT NULL,
  `expenseRate` decimal(10,2) DEFAULT NULL,
  `open` tinyint(4) DEFAULT NULL,
  `cardName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rule` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `minIntegral` int(11) DEFAULT NULL,
  `servicePhone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notice` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `exchange` tinyint(4) DEFAULT NULL,
  `cardId` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `maxIntegral` int(11) DEFAULT NULL,
  `storeUid` text COLLATE utf8_unicode_ci,
  `signed` tinyint(4) DEFAULT NULL,
  `expenseIntegral` tinyint(4) DEFAULT NULL,
  `openIntegral` tinyint(4) DEFAULT NULL,
  `depositMethod` tinyint(4) DEFAULT NULL,
  `openLevel` tinyint(4) DEFAULT NULL,
  `storeId` text COLLATE utf8_unicode_ci,
  `integralRemark` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cardStyle` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cashRate` int(11) DEFAULT NULL,
  `creator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastOperator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updateTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_index` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of usp_MemberCardConfig
-- ----------------------------

-- ----------------------------
-- Table structure for `usp_MemberCardLog`
-- ----------------------------
DROP TABLE IF EXISTS `usp_membercardlog`;
CREATE TABLE `usp_membercardlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `money` decimal(10,2) DEFAULT NULL,
  `userName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `residual` decimal(10,2) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `cardUid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `integral` int(11) DEFAULT NULL,
  `creator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastOperator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updateTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `couponName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `couponUid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_index` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of usp_MemberCardLog
-- ----------------------------

-- ----------------------------
-- Table structure for `usp_MemberCardSignLog`
-- ----------------------------
DROP TABLE IF EXISTS `usp_membercardsignlog`;
CREATE TABLE `usp_membercardsignlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `signTime` bigint(20) DEFAULT NULL,
  `cardUid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `integral` int(11) DEFAULT NULL,
  `creator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastOperator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updateTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_index` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of usp_MemberCardSignLog
-- ----------------------------

-- ----------------------------
-- Table structure for `usp_MemberConsume`
-- ----------------------------
DROP TABLE IF EXISTS `usp_memberconsume`;
CREATE TABLE `usp_memberconsume` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `remark` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `money` decimal(10,2) DEFAULT NULL,
  `newIntegral` int(11) DEFAULT NULL,
  `userName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `residual` decimal(10,2) DEFAULT NULL,
  `couponUid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cardUid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `integral` int(11) DEFAULT NULL,
  `creator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastOperator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updateTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `couponName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_index` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of usp_MemberConsume
-- ----------------------------

-- ----------------------------
-- Table structure for `usp_MemberCoupon`
-- ----------------------------
DROP TABLE IF EXISTS `usp_membercoupon`;
CREATE TABLE `usp_membercoupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cardId` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `remark` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prizeUid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `cardUid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `configUid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount` decimal(5,2) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `present` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expense` decimal(10,2) DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `start` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastOperator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updateTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `method` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_index` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of usp_MemberCoupon
-- ----------------------------

-- ----------------------------
-- Table structure for `usp_MemberCouponConfig`
-- ----------------------------
DROP TABLE IF EXISTS `usp_membercouponconfig`;
CREATE TABLE `usp_membercouponconfig` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cardId` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `present` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expense` decimal(10,2) DEFAULT NULL,
  `days` int(11) DEFAULT NULL,
  `remark` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `end` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount` decimal(5,2) DEFAULT NULL,
  `creator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastOperator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updateTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_index` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of usp_MemberCouponConfig
-- ----------------------------

-- ----------------------------
-- Table structure for `usp_MemberDeposit`
-- ----------------------------
DROP TABLE IF EXISTS `usp_memberdeposit`;
CREATE TABLE `usp_memberdeposit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `remark` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `orderNumber` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cardUid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastOperator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updateTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_index` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of usp_MemberDeposit
-- ----------------------------

-- ----------------------------
-- Table structure for `usp_MemberFunction`
-- ----------------------------
DROP TABLE IF EXISTS `usp_memberfunction`;
CREATE TABLE `usp_memberfunction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `funcName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orderNum` int(11) DEFAULT NULL,
  `url` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastOperator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updateTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `groupNum` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_index` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of usp_MemberFunction
-- ----------------------------

-- ----------------------------
-- Table structure for `usp_MemberInfo`
-- ----------------------------
DROP TABLE IF EXISTS `usp_memberinfo`;
CREATE TABLE `usp_memberinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `itemUid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cardUid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastOperator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updateTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_index` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of usp_MemberInfo
-- ----------------------------

-- ----------------------------
-- Table structure for `usp_MemberItem`
-- ----------------------------
DROP TABLE IF EXISTS `usp_memberitem`;
CREATE TABLE `usp_memberitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` int(11) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `length` int(11) DEFAULT NULL,
  `userName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `required` tinyint(4) DEFAULT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `option` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastOperator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updateTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `fixed` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_index` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of usp_MemberItem
-- ----------------------------

-- ----------------------------
-- Table structure for `usp_MemberLevel`
-- ----------------------------
DROP TABLE IF EXISTS `usp_memberlevel`;
CREATE TABLE `usp_memberlevel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expense` decimal(10,2) DEFAULT NULL,
  `remark` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `times` int(11) DEFAULT NULL,
  `condition` tinyint(4) DEFAULT NULL,
  `sortOrder` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `levelName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount` tinyint(4) DEFAULT NULL,
  `cardStyle` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastOperator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updateTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_index` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of usp_MemberLevel
-- ----------------------------

-- ----------------------------
-- Table structure for `usp_MemberPrize`
-- ----------------------------
DROP TABLE IF EXISTS `usp_memberprize`;
CREATE TABLE `usp_memberprize` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `beforeBirthDay` tinyint(4) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `couponUid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `integral` int(11) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `expense` int(11) DEFAULT NULL,
  `start` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `target` tinyint(4) DEFAULT NULL,
  `userName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastOperator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updateTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_index` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of usp_MemberPrize
-- ----------------------------

-- ----------------------------
-- Table structure for `usp_MemberPutin`
-- ----------------------------
DROP TABLE IF EXISTS `usp_memberputin`;
CREATE TABLE `usp_memberputin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `bounty` decimal(10,2) DEFAULT NULL,
  `userName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `couponUid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  `creator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastOperator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updateTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_index` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of usp_MemberPutin
-- ----------------------------

-- ----------------------------
-- Table structure for `usp_PlatformMember`
-- ----------------------------
DROP TABLE IF EXISTS `usp_platformmember`;
CREATE TABLE `usp_platformmember` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cardNo` int(11) DEFAULT NULL,
  `uuId` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastOperator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updateTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_index` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of usp_PlatformMember
-- ----------------------------

-- ----------------------------
-- Table structure for `usp_productmodel`
-- ----------------------------
DROP TABLE IF EXISTS `usp_productmodel`;
CREATE TABLE `usp_productmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkey` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `power` varchar(7000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `explain` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastOperator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updateTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_index` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of usp_productmodel
-- ----------------------------
INSERT INTO `usp_productmodel` VALUES ('1', 'F57CD35057E309C94732639903A51251', '1000', null, 'wsc', '单店版', 'root-home,home,messagecenter,messagenotice,messagenew,messageteach,root-goods,goodsmgr,goodslist,goodsedit,goodsmkt,usergoodsseter,goodsupdel,goodsadd,goodsseter,goodsbasetypemgr,goodsbasetypelist,goodsbasetypeedit,goodsbasetypedel,goodsbasetypeadd,goodsclassifymgr,goodsclassifylist,goodsbaseptymgr,goodsbaseptylist,goodsbaseptyedit,goodsbaseptydel,goodsbaseptyadd,goodsbasebrandmgr,goodsbasebrandlist,goodsbasebrandedit,goodsbasebranddel,goodsbasebrandadd,goodsbasespecsmgr,goodsbasespecslist,goodsbasespecsedit,goodsbasespecsdel,goodsbasespecsadd,goodsbaseshippersmgr,goodsbaseshipperslist,goodsbaseshippersedit,goodsbaseshippersdel,goodsbaseshippersadd,goodscoment,goodscomtlist,goodscomtseter,root-member,userbasicmgr,userbasicmgrlist,userajtbce,userajtitl,useralevel,userrechargmgr,userlevelmgr,userlevellist,userleveledit,userleveldel,userlevelstore,userlevelseter,usercontactaddress,usercontactaddresslist,shopwdmsetermgr,shopwdmcoutpelist,shopwdmseterstore,root-business,orderinfomgr,orderinflist,orderlistall,orderlistyqx,orderlistygq,orderlistytj,orderlistdfk,orderlistdfh,orderlistdsh,orderlistdpj,orderlistywc,orderplfh,ordercanellist,ordertxhlist,tradingmgr,orderseter,ordermsgunform,cardmgr,cardmgrlist,root-market,goodsspikemgr,goodsspikelist,goodsspikeedit,goodsspikedel,goodsspikeonline,goodsspikeadd,goodstgbuymgr,goodstgbuylist,goodstgbuyedit,goodstgbuydel,goodstgbuyonline,goodstgbuyadd,goodstgbuyOdrListmgr,setsingralralmgr,ingralseter,signigralseter,ingralruleseter,usesingralralmgr,ingralgdsedit,ingralgdsdel,ingralgdsonline,ingralgdsadd,bargainmgr,bargainlist,bargainedit,goodsbargaindel,bargainonline,bargainadd,goodscouponsemgr,goodscouponlist,goodscouponstore,goodsrulesemgr,goodsruleslist,goodsrulesstore,root-layout,waplayoutcustommgr,waplayoutcustomlist,waplayoutcustomedit,waplayoutcustomdel,waplayoutremsquare,waplayoutcustomsview,waplayoutsquarelist,waplayoutcustomadd,wapnavmgr,wapctmnav,root-weixin,wxpushmsg,wxpushmsgtmplist,wxpushmsglog,wxpbasicmgr,wxpmenumgr,wxpmsgmaterialmgr,wxpkeywordrespmgr,wxpredpackmgr,wxppayrecordmgr,wxprefundrecordmgr,root-stores,storesmdlmgr,stores-Lbs-List,stores-Lbs-add,storesqrcodemgr,root-consu,baseifmgr,root-set,syssetmgr,shopinfo,shoploginImg,shoppayment,shoptmssetermgr,freightrulesstore,freightsinceseterstore,rolemgr,rolelist,roleaedit,roledel,roleadd,usermgr,userlist,userupdate,userdel,useradd,sysctmmgr,customerchatconfig', '', 'admin', '2015-12-02 10:35:32', 'admin', '2019-08-04 21:19:21');
INSERT INTO `usp_productmodel` VALUES ('2', 'D0A84A0F42E947E396B54550206446C6', '5000', null, 'wsc', '分销版', 'root-home,home,messagecenter,messagenotice,messagenew,messageteach,root-goods,goodsmgr,goodslist,goodsedit,goodsmkt,usergoodsseter,goodsupdel,goodspdctsouc,goodsadd,goodsseter,goodsbasetypemgr,goodsbasetypelist,goodsbasetypeedit,goodsbasetypedel,goodsbasetypeadd,goodsclassifymgr,goodsclassifylist,goodsbaseptymgr,goodsbaseptylist,goodsbaseptyedit,goodsbaseptydel,goodsbaseptyadd,goodsbasebrandmgr,goodsbasebrandlist,goodsbasebrandedit,goodsbasebranddel,goodsbasebrandadd,goodsbasespecsmgr,goodsbasespecslist,goodsbasespecsedit,goodsbasespecsdel,goodsbasespecsadd,goodsbaseshippersmgr,goodsbaseshipperslist,goodsbaseshippersedit,goodsbaseshippersdel,goodsbaseshippersadd,goodscoment,goodscomtlist,goodscomtseter,root-member,userbasicmgr,userbasicmgrlist,userajtbce,userajtitl,useralevel,userrechargmgr,userrecordmgr,userlevelmgr,userlevellist,userleveledit,userleveldel,levesinonline,userlevelstore,userlevelseter,usercontactaddress,usercontactaddresslist,shopwdmsetermgr,shopwdmcoutpelist,shopwdmseterstore,root-business,orderinfomgr,orderinflist,orderlistall,orderlistyqx,orderlistygq,orderlistytj,orderlistdfk,orderlistdfh,orderlistdsh,orderlistdpj,orderlistywc,orderplfh,ordercanellist,ordertxhlist,tradingmgr,orderseter,ordermsgunform,cardmgr,cardmgrlist,root-market,goodsspikemgr,goodsspikelist,goodsspikeedit,goodsspikedel,goodsspikeonline,goodsspikeadd,goodstgbuymgr,goodstgbuylist,goodstgbuyedit,goodstgbuydel,goodstgbuyonline,goodstgbuyadd,setsingralralmgr,ingralseter,signigralseter,ingralruleseter,usesingralralmgr,ingralgdsedit,ingralgdsdel,ingralgdsonline,ingralgdsadd,bargainmgr,bargainlist,bargainedit,goodsbargaindel,bargainonline,bargainadd,goodscouponsemgr,goodscouponlist,goodscouponstore,goodsrulesemgr,goodsruleslist,goodsrulesstore,root-drp,drpsysmgr,drpsysseter,drpsqunform,drpfycmgr,drpfycseter,drpgoodsruleslist,drpfycwltmgr,drpfycwltcoutpelist,drpmater,drpmaterimg,drpmaterlist,drpaddmater,drpfyclevelmgr,drpfyclevellist,drpfycleveladd,drpusermgr,drpuserlist,drpuserinfo,drpuserupsta,drpuseruppt,root-layout,waplayoutcustommgr,waplayoutcustomlist,waplayoutcustomedit,waplayoutcustomdel,waplayoutremsquare,waplayoutcustomsview,waplayoutsquarelist,waplayoutcustomadd,wapnavmgr,wapctmnav,root-weixin,wxpushmsg,wxpushmsgtmplist,wxpushmsglog,wxpbasicmgr,wxpmenumgr,wxpmsgmaterialmgr,wxpkeywordrespmgr,wxpredpackmgr,wxppayrecordmgr,wxprefundrecordmgr,root-stores,storesmdlmgr,stores-Lbs-List,stores-Lbs-add,storesqrcodemgr,root-set,syssetmgr,shopinfo,shoploginImg,shoppayment,shoptmssetermgr,freightrulesstore,freightsinceseterstore,rolemgr,rolelist,roleaedit,roledel,roleadd,usermgr,userlist,userupdate,userdel,useradd,sysctmmgr,customerchatconfig', '微分销', 'admin', '2015-12-02 10:36:41', 'admin', '2019-05-16 20:04:46');
INSERT INTO `usp_productmodel` VALUES ('4', '4AFAC68A14FD29DF2805CA523A47ED0E', '30000', null, 'wcs', '智慧城市', 'root-home,root-csmf,newsheadlines,newstypecolumn,citynewsinfo,aroundmgr,convenintmgr,classifInformation,clsbasictmgr,jobhuntmgr,housetmgr,secdgdstmgr,secdcartmgr,petstmgr,publish,root-channel,columntmgr,channel,adsmgr,root-merch,businestmgr,businesseslistabl,admin-appction-module,hotel-module-facilities,shopgoodstype,root-activ,activitytmgr,activtydatalist,activtyorderlist,reportexcption,reprtexcptionsetinfo,reportcometrecode,reportexcerecode,withdrawalrecode,yungoumodelmager,yungoubsictmgr,yungougoodstable,yungougoodslsttable,yungouwinningtable,yungoubasksingletable,yungoushipadrstable,microvotingmation,micvoteslistpage,micvotesauditlsttpage,micvotesponsorInfo,root-cityhome,platpagedecort,templistsmgr,tempcifgtmgr,root-members,memberusermager,memberlistmager,root-wxp,wxpbasicmgr,wxpmenumgr,wxpmsgmaterialmgr,wxpkeywordrespmgr,weixingmsgcifglist,weixingmsgtmplist,wxpushmsglog,wxpredpackmgr,wxppayrecordmgr,root-xtsz,userrolermgr,usermgr,rolemgr,shoprolemgr,messagetmgr,customerchatconfig,platformTemtmgr,weixinshare,pclginlist', '', 'admin', '2015-12-02 10:38:04', 'admin', '2017-03-21 14:24:35');
INSERT INTO `usp_productmodel` VALUES ('11', '6A499F27F9FC15A5213F95002523BA0B', '0', null, 'wcs', '平台管理', 'root-home,root-csmf,newsheadlines,newstypecolumn,citynewsinfo,aroundmgr,convenintmgr,classifInformation,clsbasictmgr,jobhuntmgr,housetmgr,secdgdstmgr,secdcartmgr,petstmgr,publish,root-channel,columntmgr,channel,adsmgr,root-merch,businestmgr,businesseslistabl,admin-appction-module,hotel-module-facilities,shopgoodstype,root-activ,activitytmgr,activtydatalist,reportexcption,reprtexcptionsetinfo,reportcometrecode,reportexcerecode,withdrawalrecode,yungoumodelmager,yungoubsictmgr,yungougoodstable,yungougoodslsttable,yungouwinningtable,yungoubasksingletable,yungoushipadrstable,root-cityhome,platpagedecort,templistsmgr,tempcifgtmgr,root-members,memberusermager,memberlistmager,memberlevelmager,root-wxp,wxpbasicmgr,wxpmenumgr,wxpmsgmaterialmgr,wxpkeywordrespmgr,weixingmsgcifglist,weixingmsgtmplist,wxpushmsgtmpconfig,wxpushmsgtmpconfigadd,wxpushmsglog,wxpredpackmgr,wxppayrecordmgr,wxprefundrecordmgr,root-xtsz,userrolermgr,usermgr,rolemgr,shoprolemgr,messagetmgr,customerchatconfig,infacemgr,infaceuserlist,infaceuserstore,infaceuserupsta,infaceuseradd,platformTemtmgr,weixinshare,systemtmgr,pclginlist', '智慧城市平台管理模块', 'admin', '2015-12-02 15:18:04', 'admin', '2017-03-21 14:24:42');
INSERT INTO `usp_productmodel` VALUES ('12', '3866F5BF6294BA402D034C1C2CE17C26', '0', null, 'wfx', '平台管理', 'root-home,messagecenter,messagenotice,messagenew,messageteach,root-layout,messagectrl,messagectrllist,messagectrllistedit,messagectrlpush,waplayoutcustommgr,waplayoutcustomlist,waplayoutcustomedit,waplayoutcustomdel,waplayoutcustomsview,waplayoutremsquare,waplayoutcustomadd,waplayoutsquarelist,waplayoutsquaremgr,waplayoutsquaremksta,waplayoutsquareedit,waplayoutsquaredel,root-weixin,wxpushmsg,wxpushmsgtmpconfig,wxpushmsgtmpconfigadd,root-set,syssetmgr,shopinfo,infacemgr,infaceuserlist,infaceuserstore,infaceuserupsta,infaceuseradd,shoptmssetermgr,shoptmsgloballist,shoptmsglobalstore,shoptmsglobaldel,shoptmsglobalupsta', '微分销平台管理模块', 'admin', '2015-12-02 15:20:09', 'admin', '2016-08-04 19:22:44');
INSERT INTO `usp_productmodel` VALUES ('14', '96A36EEBE53D03014CEF4577CB19DD5C', '8800', null, 'wsc', '高级版', 'root-market,goodstgbuymgr,goodstgbuyOdrListmgr,root-drp,drpsqunform,drpsqunformlist,drpsqunformadd,drpfycmgr,drpgoodsruleslist,drpfyclevelmgr,drpfyclevellist,drpfycleveladd,drpusermgr,drpuserupleve,sharedPointmgr,sharedingral', '微分销', 'admin', '2016-03-03 16:08:05', 'admin', '2018-08-22 21:15:43');
INSERT INTO `usp_productmodel` VALUES ('18', '63E7FFB3092C4F37A9AA31358911401F', '99999', null, 'wsc', '平台管理', 'root-home,home,messagecenter,messagenotice,messagenew,messageteach,websitetongji,druid,root-goods,goodsmgr,goodslist,goodsedit,goodsmkt,usergoodsseter,goodsupdel,goodsadd,goodsseter,goodsbasetypemgr,goodsbasetypelist,goodsbasetypeedit,goodsbasetypedel,goodsbasetypeadd,goodglobalsmgr,goodgloballayout,goodgloballayoutstore,goodgloballayoutptystore,goodgloballayoutuserType,goodsclassifymgr,goodsclassifylist,goodsbaseptymgr,goodsbaseptylist,goodsbaseptyedit,goodsbaseptydel,goodsbaseptyadd,goodsbasebrandmgr,goodsbasebrandlist,goodsbasebrandedit,goodsbasebranddel,goodsbasebrandbatch,goodsbasebrandadd,goodsbasespecsmgr,goodsbasespecslist,goodsbasespecsedit,goodsbasespecsdel,goodsbasespecsadd,goodsbaseshippersmgr,goodsbaseshipperslist,goodsbaseshippersedit,goodsbaseshippersdel,goodsbaseshippersadd,goodscoment,goodscomtlist,goodscomtseter,root-member,userbasicmgr,userbasicmgrlist,userajtbce,userajtitl,useralevel,userrechargmgr,userrecordmgr,userlevelmgr,userlevellist,userleveledit,userleveldel,levesinonline,userlevelstore,userlevelseter,usercontactaddress,usercontactaddresslist,shopwdmsetermgr,shopwdmcoutpelist,shopwdmseterstore,root-business,orderinfomgr,orderinflist,orderlistall,orderlistyqx,orderlistygq,orderlistytj,orderlistdfk,orderlistdfh,orderlistdsh,orderlistdpj,orderlistywc,orderplfh,orderdeleylist,ordercanellist,ordertxhlist,tradingmgr,orderseter,ordermsgunform,cardmgr,cardmgrlist,orderdelaymgr,orderseterinfo,orderlistmgr,root-market,goodsspikemgr,goodsspikelist,goodsspikeedit,goodsspikedel,goodsspikeonline,goodsspikeadd,goodstgbuymgr,goodstgbuylist,goodstgbuyedit,goodstgbuydel,goodstgbuyonline,goodstgbuyadd,setsingralralmgr,ingralseter,signigralseter,ingralruleseter,usesingralralmgr,ingralgdsedit,ingralgdsdel,ingralgdsonline,ingralgdsadd,bargainmgr,bargainlist,bargainedit,goodsbargaindel,bargainonline,bargainadd,goodscouponsemgr,goodscouponlist,goodscouponstore,goodsrulesemgr,goodsruleslist,goodsrulesstore,root-drp,drpsysmgr,drpsysseter,drpsqunform,drpreportmgr,drpreportdata,drpfycmgr,drpfycseter,drpgoodsruleslist,drpfycwltmgr,drpfycwltcoutpelist,drpfycwltcoutpeIntger,drpmater,drpmaterimg,drpmaterlist,drpaddmater,drpfyclevelmgr,drpfyclevellist,drpfycleveladd,drpusermgr,drpuserlist,drpuserinfo,drpuserupsta,drpuserupleve,drpuseruppt,drpdistrbmgr,drpdistrblist,root-layout,wapsitetmplmgr,wapsitetmpluser,wapsitetmplbazaar,wapsitetmpllist,wapsitetmpladd,wapsitetmplemplist,wapsitetmplempadd,messagectrl,messagectrllist,messagectrllistedit,messagectrlpush,waplayoutcustommgr,waplayoutcustomlist,waplayoutcustomedit,waplayoutcustomdel,waplayoutremsquare,waplayoutcustomsview,waplayoutsquarelist,waplayoutcustomadd,waplayoutsquaremgr,waplayoutsquaremksta,waplayoutsquareedit,waplayoutsquaredel,wapnavmgr,wapctmnav,root-weixin,wxpushmsg,wxpushmsgtmplist,wxpushmsglog,wxpushmsgtmpconfig,wxpushmsgtmpconfigadd,wxpbasicmgr,wxpmenumgr,wxpmsgmaterialmgr,wxpkeywordrespmgr,wxpmessagemgr,wxpredpackmgr,wxppayrecordmgr,wxprefundrecordmgr,root-stores,storesmdlmgr,stores-Lbs-List,stores-Lbs-add,storesqrcodemgr,root-set,syssetmgr,shopinfo,shoploginImg,shoppayment,ptglmgr,ptglrolelist,ptgluserlist,infacemgr,infaceuserlist,infaceuserstore,infaceuserupsta,infaceuseradd,shoptmssetermgr,freightrulesstore,freightsinceseterstore,shoptmsgloballist,shoptmsglobalstore,shoptmsglobaldel,shoptmsglobalupsta,rolemgr,rolelist,roleaedit,roledel,roleadd,usermgr,userlist,userupdate,userdel,useradd,sysctmmgr,customerchatconfig,custmsgunform,custmsStaticform', '', 'admin', '2016-08-09 14:54:35', 'admin', '2019-05-10 13:05:53');
INSERT INTO `usp_productmodel` VALUES ('19', '40A681AACBF587358BDE14D7670E38B0', '99999', null, 'wsc', '买断版', 'root-home,messagecenter,messagenotice,messagenew,messageteach,druid,root-layout,messagectrl,messagectrllist,messagectrllistedit,messagectrlpush,wapnavmgr,wapctmnav,root-set,shoptmssetermgr,freightrulesstore,freightsinceseterstore,shoptmsgloballist,shoptmsglobalstore,shoptmsglobaldel,shoptmsglobalupsta', '单独买断部署基础的管理权限', 'admin', '2016-08-30 15:08:32', 'admin', '2018-06-12 21:34:53');
INSERT INTO `usp_productmodel` VALUES ('24', '04DD55E9108D86057F8D18CF29E5E535', '13000', null, 'wsc', '微分销定制', 'root-home,home,messagecenter,messagenotice,messagenew,messageteach,root-goods,goodsmgr,goodslist,goodsedit,goodsmkt,usergoodsseter,goodsupdel,goodspdctsouc,goodsadd,goodsseter,goodsbasetypemgr,goodsbasetypelist,goodsbasetypeedit,goodsbasetypedel,goodsbasetypeadd,goodsclassifymgr,goodsclassifylist,goodsbaseptymgr,goodsbaseptylist,goodsbaseptyedit,goodsbaseptydel,goodsbaseptyadd,goodsbasebrandmgr,goodsbasebrandlist,goodsbasebrandedit,goodsbasebranddel,goodsbasebrandadd,goodsbasespecsmgr,goodsbasespecslist,goodsbasespecsedit,goodsbasespecsdel,goodsbasespecsadd,goodsbaseshippersmgr,goodsbaseshipperslist,goodsbaseshippersedit,goodsbaseshippersdel,goodsbaseshippersadd,goodscoment,goodscomtlist,goodscomtseter,root-member,userbasicmgr,userbasicmgrlist,userajtbce,userajtitl,useralevel,userrechargmgr,userlevelmgr,userlevellist,userleveledit,userleveldel,levesinonline,userlevelstore,userlevelseter,usercontactaddress,usercontactaddresslist,shopwdmsetermgr,shopwdmcoutpelist,shopwdmseterstore,root-business,orderinfomgr,orderinflist,orderlistall,orderlistyqx,orderlistygq,orderlistytj,orderlistdfk,orderlistdfh,orderlistdsh,orderlistdpj,orderlistywc,orderplfh,orderdeleylist,ordercanellist,ordertxhlist,tradingmgr,orderseter,ordermsgunform,cardmgr,cardmgrlist,orderdelaymgr,orderseterinfo,orderlistmgr,root-market,goodsspikemgr,goodsspikelist,goodsspikeedit,goodsspikedel,goodsspikeonline,goodsspikeadd,goodstgbuymgr,goodstgbuylist,goodstgbuyedit,goodstgbuydel,goodstgbuyonline,goodstgbuyadd,goodstgbuyOdrListmgr,setsingralralmgr,ingralseter,signigralseter,ingralruleseter,usesingralralmgr,ingralgdsedit,ingralgdsdel,ingralgdsonline,ingralgdsadd,bargainmgr,bargainlist,bargainedit,goodsbargaindel,bargainonline,bargainadd,goodscouponsemgr,goodscouponlist,goodscouponstore,goodsrulesemgr,goodsruleslist,goodsrulesstore,root-drp,drpsysmgr,drpsysseter,drpsqunform,drpfycmgr,drpfycseter,drpgoodsruleslist,drpfycwltmgr,drpfycwltcoutpelist,drpmater,drpmaterimg,drpmaterlist,drpaddmater,drpfyclevelmgr,drpfyclevellist,drpfycleveladd,drpusermgr,drpuserlist,drpuserinfo,drpuserupsta,drpuserupleve,drpuseruppt,drpdistrbmgr,drpdistrblist,root-layout,waplayoutcustommgr,waplayoutcustomlist,waplayoutcustomedit,waplayoutcustomdel,waplayoutremsquare,waplayoutcustomsview,waplayoutsquarelist,waplayoutcustomadd,wapnavmgr,wapctmnav,root-weixin,wxpushmsg,wxpushmsgtmplist,wxpushmsglog,wxpbasicmgr,wxpmenumgr,wxpmsgmaterialmgr,wxpkeywordrespmgr,wxpredpackmgr,wxppayrecordmgr,wxprefundrecordmgr,root-stores,storesmdlmgr,stores-Lbs-List,stores-Lbs-add,storesqrcodemgr,root-branch,shopBrachmgr,shopBraclist,shopBracadd,shopBracShop,shopRolemgr,shopRolelist,shopRoleaedit,shopRoledel,shopRoleadd,shopdistibset,shopdrplistord,root-purch,shopPurchmgr,shopPurchlist,shomyordlist,shopaudtordlist,root-set,syssetmgr,shopinfo,shoploginImg,shoppayment,shoptmssetermgr,freightrulesstore,freightsinceseterstore,shoptmsglobalupsta,rolemgr,rolelist,roleaedit,roledel,roleadd,usermgr,userlist,userupdate,userdel,useradd,sysctmmgr,customerchatconfig', '', 'admin', '2018-05-16 10:26:44', 'admin', '2019-05-16 20:54:56');
INSERT INTO `usp_productmodel` VALUES ('25', 'F65FFA0779247F3FA756BA3F3DEEE562', '1000000', null, 'wsc', '多米旺铺平台', 'root-home,home,messagecenter,messagenotice,messagenew,messageteach,websitetongji,druid,root-goods,goodsmgr,goodslist,goodsedit,goodsmkt,usergoodsseter,goodsupdel,goodsadd,goodsseter,goodsbasetypemgr,goodsbasetypelist,goodsbasetypeedit,goodsbasetypedel,goodsbasetypeadd,goodglobalsmgr,goodgloballayout,goodgloballayoutstore,goodgloballayoutptystore,goodgloballayoutuserType,goodsclassifymgr,goodsclassifylist,goodsbaseptymgr,goodsbaseptylist,goodsbaseptyedit,goodsbaseptydel,goodsbaseptyadd,goodsbasebrandmgr,goodsbasebrandlist,goodsbasebrandedit,goodsbasebranddel,goodsbasebrandbatch,goodsbasebrandadd,goodsbasespecsmgr,goodsbasespecslist,goodsbasespecsedit,goodsbasespecsdel,goodsbasespecsadd,goodsbaseshippersmgr,goodsbaseshipperslist,goodsbaseshippersedit,goodsbaseshippersdel,goodsbaseshippersadd,goodscoment,goodscomtlist,goodscomtseter,root-member,userbasicmgr,userbasicmgrlist,userajtbce,userajtitl,useralevel,userrechargmgr,userrecordmgr,userlevelmgr,userlevellist,userleveledit,userleveldel,levesinonline,userlevelstore,userlevelseter,usercontactaddress,usercontactaddresslist,shopwdmsetermgr,shopwdmcoutpelist,shopwdmseterstore,root-business,orderinfomgr,orderinflist,orderlistall,orderlistyqx,orderlistygq,orderlistytj,orderlistdfk,orderlistdfh,orderlistdsh,orderlistdpj,orderlistywc,orderplfh,orderdeleylist,ordercanellist,ordertxhlist,tradingmgr,orderseter,ordermsgunform,cardmgr,cardmgrlist,orderdelaymgr,orderseterinfo,orderlistmgr,root-market,goodsspikemgr,goodsspikelist,goodsspikeedit,goodsspikedel,goodsspikeonline,goodsspikeadd,goodstgbuymgr,goodstgbuylist,goodstgbuyedit,goodstgbuydel,goodstgbuyonline,goodstgbuyadd,setsingralralmgr,ingralseter,signigralseter,ingralruleseter,usesingralralmgr,ingralgdsedit,ingralgdsdel,ingralgdsonline,ingralgdsadd,bargainmgr,bargainlist,bargainedit,goodsbargaindel,bargainonline,bargainadd,goodscouponsemgr,goodscouponlist,goodscouponstore,goodsrulesemgr,goodsruleslist,goodsrulesstore,root-drp,drpsysmgr,drpsysseter,drpsqunform,drpreportmgr,drpreportdata,drpfycmgr,drpfycseter,drpgoodsruleslist,drpfycwltmgr,drpfycwltcoutpelist,drpfycwltcoutpeIntger,drpmater,drpmaterimg,drpmaterlist,drpaddmater,drpfyclevelmgr,drpfyclevellist,drpfycleveladd,drpusermgr,drpuserlist,drpuserinfo,drpuserupsta,drpuserupleve,drpuseruppt,drpdistrbmgr,drpdistrblist,root-layout,wapsitetmplmgr,wapsitetmpluser,wapsitetmplbazaar,wapsitetmpllist,wapsitetmpladd,wapsitetmplemplist,wapsitetmplempadd,messagectrl,messagectrllist,messagectrllistedit,messagectrlpush,waplayoutcustommgr,waplayoutcustomlist,waplayoutcustomedit,waplayoutcustomdel,waplayoutremsquare,waplayoutcustomsview,waplayoutsquarelist,waplayoutcustomadd,waplayoutsquaremgr,waplayoutsquaremksta,waplayoutsquareedit,waplayoutsquaredel,wapnavmgr,wapctmnav,root-weixin,wxpushmsg,wxpushmsgtmplist,wxpushmsglog,wxpushmsgtmpconfig,wxpushmsgtmpconfigadd,wxpbasicmgr,wxpmenumgr,wxpmsgmaterialmgr,wxpkeywordrespmgr,wxpmessagemgr,wxpredpackmgr,wxppayrecordmgr,wxprefundrecordmgr,root-stores,storesmdlmgr,stores-Lbs-List,stores-Lbs-add,storesqrcodemgr,root-set,syssetmgr,shopinfo,shoploginImg,shoppayment,ptglmgr,ptglrolelist,ptgluserlist,infacemgr,infaceuserlist,infaceuserstore,infaceuserupsta,infaceuseradd,shoptmssetermgr,freightrulesstore,freightsinceseterstore,shoptmsgloballist,shoptmsglobalstore,shoptmsglobaldel,shoptmsglobalupsta,rolemgr,rolelist,roleaedit,roledel,roleadd,usermgr,userlist,userupdate,userdel,useradd,sysctmmgr,customerchatconfig,custmsgunform,custmsStaticform', '多米旺铺平台', 'admin', '2019-02-14 14:33:48', 'admin', '2019-05-10 13:04:51');
INSERT INTO `usp_productmodel` VALUES ('26', 'D7277D4A7D202A36C997743DA9C8687C', '10000', null, 'wsc', '快眼传媒', 'root-home,messagecenter,messagenotice,messagenew,messageteach,root-consu,consupagemgr,consutoalmgr,billdetalmgr', '', 'admin', '2019-08-04 19:43:39', 'admin', '2019-08-04 20:36:12');

-- ----------------------------
-- Table structure for `usp_productpack`
-- ----------------------------
DROP TABLE IF EXISTS `usp_productpack`;
CREATE TABLE `usp_productpack` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `models` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `explain` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastOperator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updateTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_index` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of usp_productpack
-- ----------------------------
INSERT INTO `usp_productpack` VALUES ('13', 'CC839B18CEC035903026BE51AEC0B3A5', '4256B5959C4D31A89FA306D4D3B8CE38,96A36EEBE53D03014CEF4577CB19DD5C,D0A84A0F42E947E396B54550206446C6', '5980', '上线', '微分销-标准版', '', 'admin', '2015-12-02 13:48:20', 'admin', '2017-07-26 09:18:59');
INSERT INTO `usp_productpack` VALUES ('14', '75561B6D1BA995D7D0C9BFA120E798ED', '4256B5959C4D31A89FA306D4D3B8CE38,4AFAC68A14FD29DF2805CA523A47ED0E', '30000', '上线', '智慧城市', '智慧城市', 'admin', '2015-12-02 13:57:26', 'admin', '2015-12-17 09:38:04');
INSERT INTO `usp_productpack` VALUES ('15', 'FA454A41F58035497C3A26E023DC5F05', '4256B5959C4D31A89FA306D4D3B8CE38', '980', '上线', '标准版-全行业', '包含所有行业应用', 'admin', '2015-12-02 14:11:15', 'admin', '2015-12-02 15:14:19');
INSERT INTO `usp_productpack` VALUES ('18', 'F9E57D4008AA78258C46E14EFBD34EC7', '40A681AACBF587358BDE14D7670E38B0,63E7FFB3092C4F37A9AA31358911401F', '500000', '上线', '微分销平台管理', '微分销平台管理权限', 'admin', '2016-01-15 10:22:37', 'admin', '2019-02-14 14:17:09');
INSERT INTO `usp_productpack` VALUES ('19', '8327C83A36D3F8F3945CD3BA31FD0AE4', '4256B5959C4D31A89FA306D4D3B8CE38,96A36EEBE53D03014CEF4577CB19DD5C,D0A84A0F42E947E396B54550206446C6', '8800', '上线', '微分销-高级版', '微分销高级版', 'admin', '2016-03-03 16:11:33', 'admin', '2017-07-26 09:19:31');
INSERT INTO `usp_productpack` VALUES ('27', '6DD87593B4E65BBE62BDEB4E74F04311', '04DD55E9108D86057F8D18CF29E5E535', '13000', '上线', '微分销定制', '', 'admin', '2018-05-16 10:27:10', 'admin', '2018-05-16 10:27:13');
INSERT INTO `usp_productpack` VALUES ('28', 'kycm', 'D7277D4A7D202A36C997743DA9C8687C', '10000', '上线', '快眼传媒', '', null, null, 'admin', '2019-08-04 19:44:51');
INSERT INTO `usp_productpack` VALUES ('29', 'jcdand', 'F57CD35057E309C94732639903A51251', '11111', '上线', '基础单店', '', null, null, 'admin', '2019-08-04 21:20:17');

-- ----------------------------
-- Table structure for `usp_ProductPFApi`
-- ----------------------------
DROP TABLE IF EXISTS `usp_productpfapi`;
CREATE TABLE `usp_productpfapi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkey` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aptCode` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mark` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastOperator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updateTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_index` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of usp_ProductPFApi
-- ----------------------------
INSERT INTO `usp_productpfapi` VALUES ('2', '4EACA591AD7C30667DA7B36F67F731A8', 'wcs', 'POWER_ALL', null, 'http://wcs.366wxb.cn/server/power/get.php', 'admin', '2015-12-02 10:29:02', 'admin', '2015-12-02 10:29:02');
INSERT INTO `usp_productpfapi` VALUES ('3', 'EEDE86CCB3598380A6D891E677DC6D3C', 'wsc', 'POWER_ALL', null, 'http://ydmkj.ydmyun.cn/server/power/get.php', 'admin', '2015-12-02 10:29:20', 'admin', '2019-07-22 22:14:10');

-- ----------------------------
-- Table structure for `usp_ProductPFInfo`
-- ----------------------------
DROP TABLE IF EXISTS `usp_productpfinfo`;
CREATE TABLE `usp_productpfinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `secretKey` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pkey` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `explain` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastOperator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updateTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_index` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of usp_ProductPFInfo
-- ----------------------------
INSERT INTO `usp_productpfinfo` VALUES ('1', 'FBA083D8A67E1FD4C67E6E0215D12E86', '2kezc6SKkxPNeF2Qk5Sy4CGw8P4BQ68T', null, 'wsc', '微商城', '', 'admin', '2015-12-02 10:24:44', 'admin', '2016-08-05 14:36:47', 'wfx.usp_commn');
INSERT INTO `usp_productpfinfo` VALUES ('2', '10C9845E3327790FB093C769D025A11F', 'BnKJc4n2JdiZt6pZxfrN3wzNyHQAbcKf', null, 'wcs', '智慧城市', '', 'admin', '2015-12-02 10:25:22', 'admin', '2017-02-09 15:05:14', 'wcs.usp_commn');

-- ----------------------------
-- Table structure for `usp_ShopPayRecord`
-- ----------------------------
DROP TABLE IF EXISTS `usp_shoppayrecord`;
CREATE TABLE `usp_shoppayrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `total` double DEFAULT NULL,
  `body` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payCode` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `payType` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `outCode` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `outType` int(11) DEFAULT NULL,
  `merchId` int(11) DEFAULT NULL,
  `payTimes` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `openId` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastOperator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updateTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`),
  KEY `uid_2` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of usp_ShopPayRecord
-- ----------------------------

-- ----------------------------
-- Table structure for `usp_SMSAccount`
-- ----------------------------
DROP TABLE IF EXISTS `usp_smsaccount`;
CREATE TABLE `usp_smsaccount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `userId` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `type` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastOperator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updateTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sended` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_index` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of usp_SMSAccount
-- ----------------------------

-- ----------------------------
-- Table structure for `usp_SMSChannel`
-- ----------------------------
DROP TABLE IF EXISTS `usp_smschannel`;
CREATE TABLE `usp_smschannel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `sended` int(11) DEFAULT NULL,
  `userId` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `channel` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastOperator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updateTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_index` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of usp_SMSChannel
-- ----------------------------
INSERT INTO `usp_smschannel` VALUES ('1', 'C085549781AB2C7C8D6B02896BD5F852', null, '98558', null, 'renwoxing', 'renwoxing', 'jct', 'cvxu42r2', '任我行科技', 'admin', '2017-03-28 15:54:23', 'admin', '2017-03-28 15:54:36');

-- ----------------------------
-- Table structure for `usp_SMSDeposit`
-- ----------------------------
DROP TABLE IF EXISTS `usp_smsdeposit`;
CREATE TABLE `usp_smsdeposit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `addtime` bigint(20) DEFAULT NULL,
  `remark` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `orderNumber` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `creator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastOperator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updateTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_index` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of usp_SMSDeposit
-- ----------------------------

-- ----------------------------
-- Table structure for `usp_SMSOderRecord`
-- ----------------------------
DROP TABLE IF EXISTS `usp_smsoderrecord`;
CREATE TABLE `usp_smsoderrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `opengId` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payCode` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `paytype` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `userName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paytimes` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastOperator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updateTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`),
  KEY `uid_2` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of usp_SMSOderRecord
-- ----------------------------

-- ----------------------------
-- Table structure for `usp_SMSSendRecord`
-- ----------------------------
DROP TABLE IF EXISTS `usp_smssendrecord`;
CREATE TABLE `usp_smssendrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `error` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `pkey` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `number` tinyint(4) DEFAULT NULL,
  `content` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `failure` text COLLATE utf8_unicode_ci,
  `addtime` bigint(20) DEFAULT NULL,
  `sendNumber` int(11) DEFAULT NULL,
  `mobiles` text COLLATE utf8_unicode_ci,
  `userName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sendTime` bigint(20) DEFAULT NULL,
  `channel` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `success` int(11) DEFAULT NULL,
  `creator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastOperator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updateTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `errorNum` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_index` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of usp_SMSSendRecord
-- ----------------------------

-- ----------------------------
-- Table structure for `usp_SMSTemplate`
-- ----------------------------
DROP TABLE IF EXISTS `usp_smstemplate`;
CREATE TABLE `usp_smstemplate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastOperator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updateTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`),
  KEY `uid_2` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of usp_SMSTemplate
-- ----------------------------

-- ----------------------------
-- Table structure for `usp_SMSUnsubscribue`
-- ----------------------------
DROP TABLE IF EXISTS `usp_smsunsubscribue`;
CREATE TABLE `usp_smsunsubscribue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addtime` bigint(20) DEFAULT NULL,
  `channel` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `creator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastOperator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updateTime` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid_index` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of usp_SMSUnsubscribue
-- ----------------------------

-- ----------------------------
-- Table structure for `wxp_weixinopenaccountentity`
-- ----------------------------
DROP TABLE IF EXISTS `wxp_weixinopenaccountentity`;
CREATE TABLE `wxp_weixinopenaccountentity` (
  `id` int(11) NOT NULL,
  `uid` varchar(50) DEFAULT NULL,
  `getTicketTime` varchar(50) DEFAULT NULL,
  `ticket` varchar(200) DEFAULT NULL,
  `appid` varchar(50) DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `createdTime` varchar(50) DEFAULT NULL,
  `lastOperator` varchar(50) DEFAULT NULL,
  `updateTime` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wxp_weixinopenaccountentity
-- ----------------------------
