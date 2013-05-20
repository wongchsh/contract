DROP TABLE IF EXISTS TBL_USER;
CREATE TABLE TBL_USER(
	ID BIGINT NOT NULL COMMENT '用户ID',
	COMPANY_ID BIGINT COMMENT '用户所属公司ID',
	USER_NAME VARCHAR(32) NOT NULL COMMENT '用户名称',
	PASSWORD VARCHAR(16) NOT NULL COMMENT '密码',
	EMAIL VARCHAR(32) COMMENT '邮箱地址',
	PHONE VARCHAR(32) COMMENT '联系电话',
	PRIMARY KEY(ID)
) COMMENT '用户';

DROP TABLE IF EXISTS TBL_GROUP;
CREATE TABLE TBL_GROUP(
	ID BIGINT NOT NULL COMMENT '组ID',
	GROUP_NAME VARCHAR(128) NOT NULL COMMENT '组名称',
	GRUOP_DESCRIPTION VARCHAR(255) COMMENT '组描述',
	PRIMARY KEY(ID)
) COMMENT '组';

DROP TABLE IF EXISTS TBL_ROLE;
CREATE TABLE TBL_ROLE(
	ID BIGINT NOT NULL COMMENT '角色ID',
	ROLE_NAME VARCHAR(128) NOT NULL COMMENT '角色名称',
	ROLE_DESCRIPTION VARCHAR(255) COMMENT '角色描述',
	PRIMARY KEY(ID)
) COMMENT '角色';

DROP TABLE IF EXISTS REL_USER_GROUP;
CREATE TABLE REL_USER_GROUP(
	ID BIGINT NOT NULL AUTO_INCREMENT COMMENT '用户组ID',
	USER_ID BIGINT NOT NULL COMMENT '用户ID',
	GROUP_ID BIGINT NOT NULL COMMENT '组ID',
	PRIMARY KEY(ID)
) COMMENT '用户组';

DROP TABLE IF EXISTS REL_GROUP_ROLE;
CREATE TABLE REL_GROUP_ROLE(
	ID BIGINT NOT NULL AUTO_INCREMENT COMMENT '组角色ID',
	GROUP_ID BIGINT NOT NULL COMMENT '组ID',
	ROLE_ID BIGINT NOT NULL COMMENT '角色ID',
	PRIMARY KEY(ID)
) COMMENT '组角色';

DROP TABLE IF EXISTS TBL_COMPANY;
CREATE TABLE TBL_COMPANY(
	ID BIGINT NOT NULL COMMENT '公司ID',
	COMPANY_NAME VARCHAR(128) NOT NULL COMMENT '公司名称',
	ADDRESS VARCHAR(128) NOT NULL COMMENT '公司地址',
	REPRESENTATIVE VARCHAR(20) COMMENT '公司法人代表',
	PRIMARY KEY(ID)
) COMMENT '公司';

DROP TABLE IF EXISTS TBL_CONTRACT;
CREATE TABLE TBL_CONTRACT(
	ID BIGINT NOT NULL COMMENT '合同ID',
	CONTRACT_NAME VARCHAR(256) NOT NULL COMMENT '合同名称',
	FILE_URI VARCHAR(128) COMMENT '合同资源标识符',
	MD5 VARCHAR(256) COMMENT '信息摘要',
	CREATE_TIME TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '上传时间',
	PRIMARY KEY(ID)
) COMMENT '合同';

DROP TABLE IF EXISTS REL_INITIATE;
CREATE TABLE REL_INITIATE(
	ID BIGINT NOT NULL AUTO_INCREMENT COMMENT '合同发起公司ID',
	COMPANY_ID BIGINT NOT NULL COMMENT '公司ID',
	CONTRACT_ID BIGINT NOT NULL COMMENT '合同ID',
	PRIMARY KEY(ID)
) COMMENT '合同发起公司';
DROP TABLE IF EXISTS REL_SIGNED;
CREATE TABLE REL_SIGNED(
	ID BIGINT NOT NULL AUTO_INCREMENT COMMENT '合同签订公司ID',
	COMPANY_ID BIGINT NOT NULL COMMENT '公司ID',
	CONTRACT_ID BIGINT NOT NULL COMMENT '合同ID',
	PRIMARY KEY(ID)
) COMMENT '合同签订公司';

DROP TABLE IF EXISTS SYS_SEQUENCE;
CREATE TABLE SYS_SEQUENCE (
	NAME VARCHAR(32) NOT NULL COMMENT '序列名',
	VALUE BIGINT COMMENT '序列值',
	PRIMARY KEY(NAME)
)COMMENT 'ID序列';

DELETE FROM SYS_SEQUENCE;
INSERT INTO SYS_SEQUENCE VALUES
('userId',1),
('companyId',1),
('contractId',1),
('groupId',1),
('roleId',1);
