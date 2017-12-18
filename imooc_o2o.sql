;; 生活服务分类表
CREATE TABLE `o2o_category`(
`id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
`name` varchar(50) NOT NULL DEFAULT '' COMMENT '分类名称',
`parent_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父级ID',
`listorder` int(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序',
`createtime` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
`updatetime` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
`status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '状态',
PRIMARY KEY(`id`),
KEY parent_id(`parent_id`)
)ENGINE=innoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

;; 城市表
CREATE TABLE `o2o_city`(
`id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
`name` varchar(50) NOT NULL DEFAULT '' COMMENT '城市名称',
`uname` varchar(50) NOT NULL DEFAULT '' COMMENT '城市英文名称',
`parent_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父级ID',
`listorder` int(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序',
`createtime` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
`updatetime` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
`status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '状态',
PRIMARY KEY(`id`),
KEY parent_id(`parent_id`),
UNIQUE KEY uname(`uname`)
)ENGINE=innoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

;; 商圈表
CREATE TABLE `o2o_area`(
`id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
`name` varchar(50) NOT NULL DEFAULT '' COMMENT '商圈名称',
`city_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '城市ID',
`parent_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '父级ID',
`listorder` int(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序',
`createtime` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
`updatetime` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
`status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '状态',
PRIMARY KEY(`id`),
KEY parent_id(`parent_id`),
KEY city_id(`city_id`)
)ENGINE=innoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

;;商户表
CREATE TABLE `o2o_bis`(
`id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
`name` varchar(50) NOT NULL DEFAULT '' COMMENT '商户名称',
`email` varchar(50) NOT NULL DEFAULT '' COMMENT '邮箱地址',
`logo` varchar(255) NOT NULL DEFAULT '' COMMENT '商户LOGO',
`licence_logo` varchar(255) NOT NULL DEFAULT '' COMMENT '营业执照',
`description` text NOT NULL COMMENT '商户描述',
`city_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '城市ID',
`city_path` varchar(50) NOT NULL DEFAULT '' COMMENT '城市路径',
`bank_info` varchar(50) NOT NULL DEFAULT '' COMMENT '银行信息',
`money` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '商户金额',
`bank_name` varchar(50) NOT NULL DEFAULT '' COMMENT '银行名称',
`bank_user` varchar(50) NOT NULL DEFAULT '' COMMENT '银行用户名',
`faren` varchar(50) NOT NULL DEFAULT '' COMMENT '法人',
`faren_tel` varchar(20) NOT NULL DEFAULT '' COMMENT '法人联系方式',
`listorder` int(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序',
`createtime` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
`updatetime` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
`status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '状态',
PRIMARY KEY(`id`),
KEY city_id(`city_id`),
KEY name(`name`)
)ENGINE=innoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

;; 商户账号表
CREATE TABLE `o2o_bis_account`(
`id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
`username` varchar(50) NOT NULL DEFAULT '' COMMENT '商户名称',
`password` char(32) NOT NULL DEFAULT '' COMMENT '商户密码',
`code` varchar(10) NOT NULL DEFAULT '' COMMENT '验',
`bis_id` int(11) NOT NULL DEFAULT 0 COMMENT '商户ID',
`last_login_ip` VARCHAR(20) NOT NULL DEFAULT '' COMMENT '最后登录IP',
`last_login_time` int(11) NOT NULL DEFAULT 0 COMMENT '最后登录时间',
`is_main` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否主商户',
`listorder` int(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序',
`createtime` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
`updatetime` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
`status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '状态',
PRIMARY KEY(`id`),
KEY bis_id(`bis_id`),
KEY username(`username`)
)ENGINE=innoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

;; 商户门店表
CREATE TABLE `o2o_bis_location`(
`id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
`name` varchar(50) NOT NULL DEFAULT '' COMMENT '商户名称',
`email` varchar(50) NOT NULL DEFAULT '' COMMENT '邮箱地址',
`logo` varchar(255) NOT NULL DEFAULT '' COMMENT '商户LOGO',
`licence_logo` varchar(255) NOT NULL DEFAULT '' COMMENT '营业执照',
`description` text NOT NULL COMMENT '商户描述',
`city_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '城市ID',
`city_path` varchar(50) NOT NULL DEFAULT '' COMMENT '城市路径',
`bank_info` varchar(50) NOT NULL DEFAULT '' COMMENT '银行信息',
`money` decimal(20,2) NOT NULL DEFAULT '0.00' COMMENT '商户金额',
`bank_name` varchar(50) NOT NULL DEFAULT '' COMMENT '银行名称',
`bank_user` varchar(50) NOT NULL DEFAULT '' COMMENT '银行用户名',
`faren` varchar(50) NOT NULL DEFAULT '' COMMENT '法人',
`faren_tel` varchar(20) NOT NULL DEFAULT '' COMMENT '法人联系方式',
`listorder` int(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT '排序',
`createtime` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建时间',
`updatetime` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '更新时间',
`status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '状态',
PRIMARY KEY(`id`),
KEY city_id(`city_id`),
KEY name(`name`)
)ENGINE=innoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
