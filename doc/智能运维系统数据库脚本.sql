prompt
prompt Creating table ANLS_CONFIG
prompt ==========================
prompt
create table ANLS_CONFIG
(
  guid              VARCHAR2(50),
  anls_cfg_id       VARCHAR2(50) not null,
  app_id            VARCHAR2(50),
  pjt_id            VARCHAR2(50),
  job_id            VARCHAR2(50),
  table_id          VARCHAR2(50),
  cfg_desc          VARCHAR2(50),
  compare_type      VARCHAR2(50),
  table_field       VARCHAR2(50),
  table_field_value VARCHAR2(50),
  table_status      VARCHAR2(50),
  create_date       DATE,
  par_anls_cfg_id   VARCHAR2(50)
)
;
comment on table ANLS_CONFIG
  is '��������-����';
comment on column ANLS_CONFIG.anls_cfg_id
  is '�������ñ��';
comment on column ANLS_CONFIG.app_id
  is 'Ӧ��ϵͳ���';
comment on column ANLS_CONFIG.pjt_id
  is '��Ŀ���';
comment on column ANLS_CONFIG.job_id
  is 'ҵ����';
comment on column ANLS_CONFIG.table_id
  is '����';
comment on column ANLS_CONFIG.cfg_desc
  is '����';
comment on column ANLS_CONFIG.compare_type
  is '�ȽϷ�ʽ:����,������,����';
comment on column ANLS_CONFIG.table_field
  is '�ֶ�(�Ƚϵ��ֶ�)';
comment on column ANLS_CONFIG.table_field_value
  is '�ֶ�ֵ';
comment on column ANLS_CONFIG.table_status
  is '״̬(�ȶ�ֵ,�ο�ֵ)';
comment on column ANLS_CONFIG.par_anls_cfg_id
  is '��״̬';
alter table ANLS_CONFIG
  add constraint PK_ANLS_CONFIG primary key (ANLS_CFG_ID);

prompt
prompt Creating table ANLS_RESULT_RECORD
prompt =================================
prompt
create table ANLS_RESULT_RECORD
(
  guid        VARCHAR2(50) default sys_guid() not null,
  anls_bat_no VARCHAR2(50),
  work_mark   VARCHAR2(5),
  create_date DATE default sysdate,
  war_count   NUMBER
)
;
comment on table ANLS_RESULT_RECORD
  is '���������¼-�ʼ���,ҳ����ץȡ���¼�¼';
comment on column ANLS_RESULT_RECORD.anls_bat_no
  is '���κ�';
comment on column ANLS_RESULT_RECORD.work_mark
  is '����״̬';
comment on column ANLS_RESULT_RECORD.war_count
  is 'Ԥ������';
alter table ANLS_RESULT_RECORD
  add constraint PK_ANLS_RESULT_RECORD primary key (GUID);

prompt
prompt Creating table APP_CONFIG
prompt =========================
prompt
create table APP_CONFIG
(
  app_code     VARCHAR2(50),
  job_code     VARCHAR2(50),
  config_value VARCHAR2(4000),
  guid         VARCHAR2(50) default sys_guid() not null,
  project_code VARCHAR2(50),
  server_code  VARCHAR2(50),
  db_code      VARCHAR2(50)
)
;
comment on column APP_CONFIG.app_code
  is 'ϵͳ����';
comment on column APP_CONFIG.job_code
  is '��ҵ����';
comment on column APP_CONFIG.config_value
  is '��������';
comment on column APP_CONFIG.project_code
  is '��Ŀ����';
comment on column APP_CONFIG.server_code
  is '����������';
comment on column APP_CONFIG.db_code
  is '���ݿ�GUID(server_db_conn-GUID)';
alter table APP_CONFIG
  add constraint PK_APP_CONFIG_KEY primary key (GUID);

prompt
prompt Creating table APP_PROJECT_MANAGE
prompt =================================
prompt
create table APP_PROJECT_MANAGE
(
  guid                VARCHAR2(50) not null,
  project_code        VARCHAR2(150),
  project_name        VARCHAR2(50),
  project_online_time DATE,
  project_region      VARCHAR2(50),
  project_explain     VARCHAR2(250),
  creater_person_guid VARCHAR2(50),
  create_time         DATE,
  updater_person_guid VARCHAR2(50),
  update_time         DATE
)
;
comment on table APP_PROJECT_MANAGE
  is 'Ӧ��ϵͳ-��Ŀ����';
comment on column APP_PROJECT_MANAGE.project_code
  is '��Ŀ����';
comment on column APP_PROJECT_MANAGE.project_name
  is '��Ŀ����';
comment on column APP_PROJECT_MANAGE.project_online_time
  is '��Ŀ����ʱ��';
comment on column APP_PROJECT_MANAGE.project_region
  is '����';
comment on column APP_PROJECT_MANAGE.project_explain
  is '��Ŀ˵��';
comment on column APP_PROJECT_MANAGE.creater_person_guid
  is '������';
comment on column APP_PROJECT_MANAGE.create_time
  is '����ʱ��';
comment on column APP_PROJECT_MANAGE.updater_person_guid
  is '��������';
comment on column APP_PROJECT_MANAGE.update_time
  is '������ʱ��';
alter table APP_PROJECT_MANAGE
  add constraint PK_APP_PROJECT_MANAGE primary key (GUID);

prompt
prompt Creating table APP_SERVER_PROJECT
prompt =================================
prompt
create table APP_SERVER_PROJECT
(
  guid              VARCHAR2(50) default sys_guid() not null,
  server_guid       VARCHAR2(50),
  project_guid      VARCHAR2(50),
  data_commands     VARCHAR2(2000),
  app_region        VARCHAR2(50),
  app_business_type VARCHAR2(50),
  extend_varchar1   VARCHAR2(50),
  extend_varchar2   VARCHAR2(250),
  extend_number1    NUMBER,
  extend_date       DATE,
  create_date       DATE default sysdate
)
;
comment on table APP_SERVER_PROJECT
  is 'Ӧ��ϵͳ-������-��Ŀ';
comment on column APP_SERVER_PROJECT.server_guid
  is '������GUID';
comment on column APP_SERVER_PROJECT.project_guid
  is '��Ŀguid';
comment on column APP_SERVER_PROJECT.data_commands
  is 'ָ��';
comment on column APP_SERVER_PROJECT.app_region
  is '����';
comment on column APP_SERVER_PROJECT.app_business_type
  is 'ҵ������';
comment on column APP_SERVER_PROJECT.extend_varchar1
  is 'varchar��չ�ֶ�';
comment on column APP_SERVER_PROJECT.extend_varchar2
  is 'varchar��չ�ֶ�';
comment on column APP_SERVER_PROJECT.extend_number1
  is 'number��չ�ֶ�';
comment on column APP_SERVER_PROJECT.extend_date
  is 'date��չ�ֶ�';
comment on column APP_SERVER_PROJECT.create_date
  is '����ʱ��';
alter table APP_SERVER_PROJECT
  add constraint PK_APP_SERVER_PROJECT primary key (GUID);

prompt
prompt Creating table APP_TABLE_FIELD_DESP
prompt ===================================
prompt
create table APP_TABLE_FIELD_DESP
(
  guid               VARCHAR2(50) default sys_guid() not null,
  table_version_code VARCHAR2(50) not null,
  field_name         VARCHAR2(150),
  field_desp         VARCHAR2(250),
  is_key_field       VARCHAR2(4),
  check_type         VARCHAR2(4),
  check_value        VARCHAR2(150),
  create_date        DATE default sysdate
)
;
comment on table APP_TABLE_FIELD_DESP
  is 'Ӧ��ϵͳ-���ֶ�����';
comment on column APP_TABLE_FIELD_DESP.table_version_code
  is '�汾��(MPI_NAME)';
comment on column APP_TABLE_FIELD_DESP.field_name
  is '�ֶ���';
comment on column APP_TABLE_FIELD_DESP.field_desp
  is '���ֶ�����';
comment on column APP_TABLE_FIELD_DESP.is_key_field
  is '�Ƿ��ǹؼ��ֶ�(ǰ̨����չʾ)';
comment on column APP_TABLE_FIELD_DESP.check_type
  is '�ȶ�����';
comment on column APP_TABLE_FIELD_DESP.check_value
  is '�ȶ�ֵ';
comment on column APP_TABLE_FIELD_DESP.create_date
  is '����ʱ��';
create index IX_APP_TABLE_FIELD_DESP_TVC on APP_TABLE_FIELD_DESP (TABLE_VERSION_CODE, FIELD_NAME);
alter table APP_TABLE_FIELD_DESP
  add constraint PK_APP_TABLE_FILED_DESP primary key (GUID);

prompt
prompt Creating table APP_TABLE_FIELD_STATUS
prompt =====================================
prompt
create table APP_TABLE_FIELD_STATUS
(
  guid               VARCHAR2(50) default sys_guid() not null,
  table_version_code VARCHAR2(50) not null,
  field_name         VARCHAR2(150) not null,
  status_code        VARCHAR2(150),
  status_name        VARCHAR2(150),
  create_date        DATE default sysdate
)
;
comment on table APP_TABLE_FIELD_STATUS
  is 'Ӧ��ϵͳ-���ֶ�״̬��Ϣ';
comment on column APP_TABLE_FIELD_STATUS.table_version_code
  is '�汾��(MPI_NAME)';
comment on column APP_TABLE_FIELD_STATUS.field_name
  is '�ֶ���';
comment on column APP_TABLE_FIELD_STATUS.status_code
  is '�ֶ�ֵ״̬';
comment on column APP_TABLE_FIELD_STATUS.status_name
  is '�ֶ�ֵ״̬����';
alter table APP_TABLE_FIELD_STATUS
  add constraint PK_APP_TABLE_FIELD_STATUS primary key (GUID);

prompt
prompt Creating table APP_TABLE_INFO
prompt =============================
prompt
create table APP_TABLE_INFO
(
  guid               VARCHAR2(50) default sys_guid() not null,
  app_code           VARCHAR2(50),
  region_code        VARCHAR2(50),
  app_business_type  VARCHAR2(50),
  table_version_code VARCHAR2(50) not null,
  table_name         VARCHAR2(150),
  table_name_desp    VARCHAR2(150),
  create_date        DATE default sysdate,
  table_remark       VARCHAR2(150),
  table_query_sql    VARCHAR2(2150)
)
;
comment on table APP_TABLE_INFO
  is 'Ӧ��ϵͳ-����Ϣ';
comment on column APP_TABLE_INFO.app_code
  is 'Ӧ��ϵͳ����';
comment on column APP_TABLE_INFO.region_code
  is '�������';
comment on column APP_TABLE_INFO.app_business_type
  is '��������(ҵ������)';
comment on column APP_TABLE_INFO.table_version_code
  is '�汾��(MPI_NAME)';
comment on column APP_TABLE_INFO.table_name
  is '����';
comment on column APP_TABLE_INFO.table_name_desp
  is '�������(չʾ��)';
comment on column APP_TABLE_INFO.create_date
  is '����ʱ��';
comment on column APP_TABLE_INFO.table_remark
  is '��ע��Ϣ(ά����)';
comment on column APP_TABLE_INFO.table_query_sql
  is '��ѯ���';
alter table APP_TABLE_INFO
  add constraint PK_APP_TABLE_INFO primary key (TABLE_VERSION_CODE);

prompt
prompt Creating table APP_TABLE_OPER
prompt =============================
prompt
create table APP_TABLE_OPER
(
  guid              VARCHAR2(50) default sys_guid() not null,
  table_id          VARCHAR2(50) not null,
  oper_type         VARCHAR2(50),
  oper_desp         VARCHAR2(50),
  oper_field        VARCHAR2(50),
  query_field       VARCHAR2(50),
  query_field_value VARCHAR2(50),
  server_id         VARCHAR2(50),
  server_db_conn_id VARCHAR2(50),
  oper_sql          VARCHAR2(2000),
  create_date       DATE default sysdate,
  return_show_title VARCHAR2(80),
  return_show_desp  VARCHAR2(80)
)
;
comment on table APP_TABLE_OPER
  is 'Ӧ��ϵͳ-�����(��ԭ�����ط�����)';
comment on column APP_TABLE_OPER.table_id
  is '����';
comment on column APP_TABLE_OPER.oper_type
  is '��������(��:MPI_RE_SEND)';
comment on column APP_TABLE_OPER.oper_desp
  is '��������(��:�ط������)';
comment on column APP_TABLE_OPER.oper_field
  is '�����ֶ�(��:SEQNO)';
comment on column APP_TABLE_OPER.query_field
  is '�������ֶ���(��:MESSAGETYPE)';
comment on column APP_TABLE_OPER.query_field_value
  is '�������ֶ�ֵ(��:CIQ_GDS_SKU)';
comment on column APP_TABLE_OPER.server_id
  is '���������';
comment on column APP_TABLE_OPER.server_db_conn_id
  is '�����������ַ������';
comment on column APP_TABLE_OPER.oper_sql
  is '����ִ�е����';
comment on column APP_TABLE_OPER.return_show_title
  is '����չʾ�ı���';
comment on column APP_TABLE_OPER.return_show_desp
  is '����չʾ������';
alter table APP_TABLE_OPER
  add constraint PK_APP_TABLE_OPER primary key (GUID);

prompt
prompt Creating table BASE_CONTROL_VALUE
prompt =================================
prompt
create table BASE_CONTROL_VALUE
(
  code  VARCHAR2(10),
  name  VARCHAR2(20),
  value VARCHAR2(20)
)
;

prompt
prompt Creating table BASE_DEPARTMENT
prompt ==============================
prompt
create table BASE_DEPARTMENT
(
  guid                VARCHAR2(50) default sys_GUID() not null,
  dept_id             VARCHAR2(50),
  dept_name           VARCHAR2(50),
  dept_path           VARCHAR2(150),
  dept_phone          VARCHAR2(50),
  create_date         DATE default sysdate,
  dept_region         VARCHAR2(100),
  dept_manage_region  VARCHAR2(1000),
  dept_manage_project VARCHAR2(2000),
  extend_varchar1     VARCHAR2(50),
  extend_varchar2     VARCHAR2(250),
  extend_number1      NUMBER,
  extend_date         DATE
)
;
comment on table BASE_DEPARTMENT
  is '������-���ű�';
comment on column BASE_DEPARTMENT.dept_id
  is '���:dep_region_';
comment on column BASE_DEPARTMENT.dept_name
  is '����/�ֹ�˾��';
comment on column BASE_DEPARTMENT.dept_path
  is '��ַ';
comment on column BASE_DEPARTMENT.dept_phone
  is '�绰';
comment on column BASE_DEPARTMENT.dept_region
  is '������������';
comment on column BASE_DEPARTMENT.dept_manage_region
  is '���Ź�������';
comment on column BASE_DEPARTMENT.dept_manage_project
  is '���Ź�����Ŀ';
comment on column BASE_DEPARTMENT.extend_varchar1
  is 'varchar��չ�ֶ�';
comment on column BASE_DEPARTMENT.extend_varchar2
  is 'varchar��չ�ֶ�';
comment on column BASE_DEPARTMENT.extend_number1
  is 'number��չ�ֶ�';
comment on column BASE_DEPARTMENT.extend_date
  is 'date��չ�ֶ�';
alter table BASE_DEPARTMENT
  add constraint PK_BASE_DEPARTMENT primary key (GUID);

prompt
prompt Creating table BASE_PARAMETERS
prompt ==============================
prompt
create table BASE_PARAMETERS
(
  guid            VARCHAR2(50) default sys_guid() not null,
  code            VARCHAR2(250),
  name            VARCHAR2(250),
  group_code      VARCHAR2(50),
  key             VARCHAR2(250),
  value           VARCHAR2(4000),
  enable          VARCHAR2(2) default 1,
  extend_varchar1 VARCHAR2(50),
  extend_varchar2 VARCHAR2(250),
  extend_number1  NUMBER,
  extend_date     DATE,
  create_date     DATE default sysdate
)
;
comment on table BASE_PARAMETERS
  is '������Ϣ-������';
comment on column BASE_PARAMETERS.code
  is '����';
comment on column BASE_PARAMETERS.name
  is '����';
comment on column BASE_PARAMETERS.group_code
  is '�����';
comment on column BASE_PARAMETERS.key
  is '��';
comment on column BASE_PARAMETERS.value
  is 'ֵ';
comment on column BASE_PARAMETERS.enable
  is '����״̬';
comment on column BASE_PARAMETERS.extend_varchar1
  is 'varchar��չ�ֶ�';
comment on column BASE_PARAMETERS.extend_varchar2
  is 'varchar��չ�ֶ�';
comment on column BASE_PARAMETERS.extend_number1
  is 'number��չ�ֶ�';
comment on column BASE_PARAMETERS.extend_date
  is 'date��չ�ֶ�';
comment on column BASE_PARAMETERS.create_date
  is '����ʱ��';
create index IDX_BASE_PARAMETERS_01 on BASE_PARAMETERS (CODE);
alter table BASE_PARAMETERS
  add constraint PK_BASE_PARAMETERS primary key (GUID);

prompt
prompt Creating table BASE_PERSON_INFO
prompt ===============================
prompt
create table BASE_PERSON_INFO
(
  person_id          VARCHAR2(50) default sys_guid() not null,
  person_name        VARCHAR2(50),
  person_email       VARCHAR2(50),
  person_mobilephone VARCHAR2(50),
  person_login_no    VARCHAR2(50),
  person_login_pwd   VARCHAR2(50),
  person_type        VARCHAR2(50),
  person_department  VARCHAR2(50),
  person_id_temp     VARCHAR2(50)
)
;
comment on table BASE_PERSON_INFO
  is '������Ϣ-��Ա��Ϣ��';
comment on column BASE_PERSON_INFO.person_name
  is '����';
comment on column BASE_PERSON_INFO.person_email
  is '����';
comment on column BASE_PERSON_INFO.person_mobilephone
  is '�ƶ��绰';
comment on column BASE_PERSON_INFO.person_login_no
  is '�û���¼�˺�';
comment on column BASE_PERSON_INFO.person_login_pwd
  is '�û���¼����';
comment on column BASE_PERSON_INFO.person_type
  is '�û�����role_type';
comment on column BASE_PERSON_INFO.person_department
  is '��������';
comment on column BASE_PERSON_INFO.person_id_temp
  is '�û������ʱ';
create index INDEX_PERSON_LOGIN_NO on BASE_PERSON_INFO (PERSON_LOGIN_NO);
create index IX_PERSON_LOGIN_PWD on BASE_PERSON_INFO (PERSON_ID, PERSON_LOGIN_NO, PERSON_LOGIN_PWD);
alter table BASE_PERSON_INFO
  add constraint PK_BASE_PERSON_INFO primary key (PERSON_ID);

prompt
prompt Creating table BASE_PERSON_REC_ADDRESS
prompt ======================================
prompt
create table BASE_PERSON_REC_ADDRESS
(
  guid        VARCHAR2(50) default sys_guid() not null,
  person_id   VARCHAR2(50) not null,
  rec_type    VARCHAR2(50) not null,
  rec_address VARCHAR2(100) not null,
  create_date DATE default sysdate not null,
  remark      VARCHAR2(50)
)
;
comment on table BASE_PERSON_REC_ADDRESS
  is '�û���Ϣ��-���յ�ַ';
comment on column BASE_PERSON_REC_ADDRESS.person_id
  is '��Ա����';
comment on column BASE_PERSON_REC_ADDRESS.rec_type
  is '��������';
comment on column BASE_PERSON_REC_ADDRESS.rec_address
  is '���յ�ַ';
comment on column BASE_PERSON_REC_ADDRESS.remark
  is '��ע:APP���';
alter table BASE_PERSON_REC_ADDRESS
  add constraint PK_BASE_PERSON_REC_ADDRESS primary key (GUID);

prompt
prompt Creating table BASE_PROJECT_MANAGE
prompt ==================================
prompt
create table BASE_PROJECT_MANAGE
(
  guid                    VARCHAR2(50),
  project_code            VARCHAR2(150) not null,
  project_name            VARCHAR2(50),
  project_online_time     DATE,
  project_region          VARCHAR2(50),
  project_explain         VARCHAR2(250),
  creater_person_guid     VARCHAR2(50),
  create_time             DATE default SYSDATE,
  updater_person_guid     VARCHAR2(50),
  update_time             DATE default SYSDATE,
  project_topo_graph_path VARCHAR2(250)
)
;
comment on table BASE_PROJECT_MANAGE
  is '������Ϣ-��Ŀ����';
comment on column BASE_PROJECT_MANAGE.project_code
  is '��Ŀ����';
comment on column BASE_PROJECT_MANAGE.project_name
  is '��Ŀ����';
comment on column BASE_PROJECT_MANAGE.project_online_time
  is '��Ŀ����ʱ��';
comment on column BASE_PROJECT_MANAGE.project_region
  is '����';
comment on column BASE_PROJECT_MANAGE.project_explain
  is '��Ŀ˵��';
comment on column BASE_PROJECT_MANAGE.creater_person_guid
  is '������';
comment on column BASE_PROJECT_MANAGE.create_time
  is '����ʱ��';
comment on column BASE_PROJECT_MANAGE.updater_person_guid
  is '��������';
comment on column BASE_PROJECT_MANAGE.update_time
  is '������ʱ��';
comment on column BASE_PROJECT_MANAGE.project_topo_graph_path
  is '��Ŀ����ͼ���·��';
create index PK_PROJ_PROJECT_CODE_REGION on BASE_PROJECT_MANAGE (PROJECT_CODE, PROJECT_REGION);
alter table BASE_PROJECT_MANAGE
  add constraint PK_BASE_PROJECT_MANAGE primary key (PROJECT_CODE);

prompt
prompt Creating table BASE_SERVER_DBCONN
prompt =================================
prompt
create table BASE_SERVER_DBCONN
(
  guid             VARCHAR2(50) default SYS_guid() not null,
  server_guid      VARCHAR2(50),
  server_data_link VARCHAR2(250),
  db_type          VARCHAR2(50),
  db_name          VARCHAR2(50),
  db_userid        VARCHAR2(51),
  db_password      VARCHAR2(500),
  db_conn          VARCHAR2(250),
  create_date      DATE default SYSDATE,
  server_id        VARCHAR2(50)
)
;
comment on table BASE_SERVER_DBCONN
  is '��������-������-���ݿ������ַ���';
comment on column BASE_SERVER_DBCONN.server_guid
  is '������GUID(Ԥ��)';
comment on column BASE_SERVER_DBCONN.server_data_link
  is '��������·';
comment on column BASE_SERVER_DBCONN.db_type
  is '���ݿ�����';
comment on column BASE_SERVER_DBCONN.db_name
  is '���ݿ���';
comment on column BASE_SERVER_DBCONN.server_id
  is '���������';
alter table BASE_SERVER_DBCONN
  add constraint PK_BASE_SERVER_DBCONN primary key (GUID);

prompt
prompt Creating table BASE_SERVER_INFO
prompt ===============================
prompt
create table BASE_SERVER_INFO
(
  guid                    VARCHAR2(36) default SYS_GUID() not null,
  sys_menu_detail_id      VARCHAR2(200),
  name                    VARCHAR2(255),
  ip                      VARCHAR2(32),
  processor               VARCHAR2(100),
  system_type             VARCHAR2(50),
  system_version          VARCHAR2(50),
  cur_date                DATE,
  work_group              VARCHAR2(100),
  is_active               VARCHAR2(2),
  remark                  VARCHAR2(255),
  create_date             DATE default sysdate not null,
  status                  NUMBER default 1 not null,
  url                     VARCHAR2(255),
  data_link               VARCHAR2(255),
  data_type               VARCHAR2(255),
  execute_model           VARCHAR2(255),
  ip_internal_network     VARCHAR2(255),
  ip_virtual              VARCHAR2(255),
  server_type             VARCHAR2(255),
  remark_close_controllor VARCHAR2(255),
  server_id               VARCHAR2(50),
  server_region           VARCHAR2(50),
  enable                  VARCHAR2(4) default 1,
  server_model            VARCHAR2(15),
  memory                  VARCHAR2(50),
  disk                    VARCHAR2(50)
)
;
comment on table BASE_SERVER_INFO
  is '������Ϣ-��������Ϣ';
comment on column BASE_SERVER_INFO.guid
  is '����';
comment on column BASE_SERVER_INFO.sys_menu_detail_id
  is '������������';
comment on column BASE_SERVER_INFO.name
  is '������';
comment on column BASE_SERVER_INFO.ip
  is '����IP��ַ';
comment on column BASE_SERVER_INFO.processor
  is '������������';
comment on column BASE_SERVER_INFO.system_type
  is '����ϵͳ����';
comment on column BASE_SERVER_INFO.system_version
  is '����ϵͳ�汾';
comment on column BASE_SERVER_INFO.cur_date
  is '����ϵͳ��ǰʱ��';
comment on column BASE_SERVER_INFO.work_group
  is '������';
comment on column BASE_SERVER_INFO.is_active
  is '�������Ƿ񼤻�';
comment on column BASE_SERVER_INFO.remark
  is '��ע';
comment on column BASE_SERVER_INFO.create_date
  is '��������';
comment on column BASE_SERVER_INFO.status
  is '0�쳣 1����';
comment on column BASE_SERVER_INFO.data_link
  is 'IP��';
comment on column BASE_SERVER_INFO.data_type
  is '�ɼ������б�';
comment on column BASE_SERVER_INFO.execute_model
  is 'ִ��ģʽ:TCP,MQ,TCP+MQ';
comment on column BASE_SERVER_INFO.ip_internal_network
  is '����IP';
comment on column BASE_SERVER_INFO.ip_virtual
  is '����/��ȺIP';
comment on column BASE_SERVER_INFO.server_type
  is '����������:��ת,WEB,����,���ݿ�';
comment on column BASE_SERVER_INFO.remark_close_controllor
  is '�ı�ܿ�״̬��˵��';
comment on column BASE_SERVER_INFO.server_id
  is '���������:����+������+4λ��ˮ��';
comment on column BASE_SERVER_INFO.server_region
  is '��������������';
comment on column BASE_SERVER_INFO.enable
  is '�Ƿ�����  ����1 ����0';
comment on column BASE_SERVER_INFO.server_model
  is '������ָ���ģʽ';
comment on column BASE_SERVER_INFO.memory
  is '�ڴ�';
comment on column BASE_SERVER_INFO.disk
  is 'Ӳ��';
create index INDEX_SERVER_INFO_IP on BASE_SERVER_INFO (IP);
create index INDEX_SVR_INFO_SERVER_ID on BASE_SERVER_INFO (SERVER_ID);
alter table BASE_SERVER_INFO
  add constraint PK_BASE_SERVER_INFO primary key (GUID);

prompt
prompt Creating table BASE_SERVER_INFO_CONTROL
prompt =======================================
prompt
create table BASE_SERVER_INFO_CONTROL
(
  guid             VARCHAR2(50) default sys_GUID() not null,
  data_type        VARCHAR2(50) not null,
  data_value       VARCHAR2(2000) not null,
  create_date      DATE default sysdate,
  server_data_link VARCHAR2(500),
  status           VARCHAR2(1) default 1,
  description      VARCHAR2(50),
  extend_varchar1  VARCHAR2(50),
  extend_varchar2  VARCHAR2(250),
  extend_number1   NUMBER,
  extend_date      DATE,
  server_id        VARCHAR2(50),
  server_id_temp   VARCHAR2(50),
  warning_value    VARCHAR2(50)
)
;
comment on table BASE_SERVER_INFO_CONTROL
  is '������Ϣ-��������Ϣ�ܿر�';
comment on column BASE_SERVER_INFO_CONTROL.data_type
  is 'ҵ������';
comment on column BASE_SERVER_INFO_CONTROL.data_value
  is 'ҵ��ֵ:����Ҫ�ܿص���Ϣ������,��������';
comment on column BASE_SERVER_INFO_CONTROL.create_date
  is '����ʱ��';
comment on column BASE_SERVER_INFO_CONTROL.server_data_link
  is 'IP��';
comment on column BASE_SERVER_INFO_CONTROL.status
  is '״̬';
comment on column BASE_SERVER_INFO_CONTROL.description
  is '����';
comment on column BASE_SERVER_INFO_CONTROL.extend_varchar1
  is 'varchar��չ�ֶ�';
comment on column BASE_SERVER_INFO_CONTROL.extend_varchar2
  is 'varchar��չ�ֶ�';
comment on column BASE_SERVER_INFO_CONTROL.extend_number1
  is 'number��չ�ֶ�';
comment on column BASE_SERVER_INFO_CONTROL.extend_date
  is 'date��չ�ֶ�';
comment on column BASE_SERVER_INFO_CONTROL.warning_value
  is 'Ԥ��ֵ';
alter table BASE_SERVER_INFO_CONTROL
  add constraint PK_BASE_SERVER_INFO_CONTROL primary key (GUID);

prompt
prompt Creating table BASE_SERVER_PERSON
prompt =================================
prompt
create table BASE_SERVER_PERSON
(
  guid        VARCHAR2(50) default sys_guid() not null,
  server_guid VARCHAR2(50) not null,
  person_guid VARCHAR2(50) not null,
  role_type   VARCHAR2(10)
)
;
comment on table BASE_SERVER_PERSON
  is '������Ϣ-��������Ϣ-��Ա��Ϣ��ϵ��Ӧ��';
comment on column BASE_SERVER_PERSON.server_guid
  is '������ϢGUID';
comment on column BASE_SERVER_PERSON.person_guid
  is '��ԱGUID';
comment on column BASE_SERVER_PERSON.role_type
  is '��ɫ����(DBA,MGR)';
alter table BASE_SERVER_PERSON
  add constraint PK_BASE_SERVER_PERSON primary key (GUID);

prompt
prompt Creating table BASE_SERVER_PROJECT
prompt ==================================
prompt
create table BASE_SERVER_PROJECT
(
  guid           VARCHAR2(50) default sys_GUID() not null,
  server_guid    VARCHAR2(50),
  project_guid   VARCHAR2(50),
  server_id_temp VARCHAR2(50)
)
;
comment on table BASE_SERVER_PROJECT
  is '������Ϣ��-����������Ŀ��ϵ���ձ�';
comment on column BASE_SERVER_PROJECT.server_guid
  is '������GUID';
comment on column BASE_SERVER_PROJECT.project_guid
  is '��Ŀguid';
comment on column BASE_SERVER_PROJECT.server_id_temp
  is '��ʱ';
create index INDEX_SVR_PJT_PROJECT_GUID on BASE_SERVER_PROJECT (PROJECT_GUID);
alter table BASE_SERVER_PROJECT
  add constraint PK_BASE_SERVER_PROJECT primary key (GUID);

prompt
prompt Creating table BASE_SYSTEM_INFO
prompt ===============================
prompt
create table BASE_SYSTEM_INFO
(
  system_id   VARCHAR2(50) default SYS_GUID(),
  system_name VARCHAR2(50),
  remark      VARCHAR2(200),
  project_id  VARCHAR2(50)
)
;
comment on column BASE_SYSTEM_INFO.system_name
  is 'ϵͳ����';
comment on column BASE_SYSTEM_INFO.remark
  is 'ϵͳ��ע';
comment on column BASE_SYSTEM_INFO.project_id
  is 'ϵͳ������Ŀ';

prompt
prompt Creating table BASE_THRESHOLD_SET
prompt =================================
prompt
create table BASE_THRESHOLD_SET
(
  mpi_interval             VARCHAR2(100),
  warning_timeout          VARCHAR2(100),
  warning_disk_used        VARCHAR2(100),
  warning_msmq_qty         VARCHAR2(100),
  oracle_warning_used_rate VARCHAR2(100)
)
;
comment on column BASE_THRESHOLD_SET.mpi_interval
  is '�ɼ�ʱ����';
comment on column BASE_THRESHOLD_SET.warning_timeout
  is '��ʱԤ��ʱ��';
comment on column BASE_THRESHOLD_SET.warning_disk_used
  is '����Ԥ������';
comment on column BASE_THRESHOLD_SET.warning_msmq_qty
  is 'MSMQԤ������';
comment on column BASE_THRESHOLD_SET.oracle_warning_used_rate
  is 'Oracle Ԥ������';

prompt
prompt Creating table BASE_THRESHOLD_SET_GRADE
prompt =======================================
prompt
create table BASE_THRESHOLD_SET_GRADE
(
  type        VARCHAR2(100),
  name        VARCHAR2(100),
  code        VARCHAR2(100),
  value       VARCHAR2(100),
  create_date DATE default SYSDATE
)
;
comment on column BASE_THRESHOLD_SET_GRADE.type
  is '���� �ɼ�ʱ����MPI_INTERVAL  ��ʱԤ��ʱ��WARNING_TIMEOUT ����Ԥ������WARNING_DISK_USED MSMQԤ������WARNING_MSMQ_QTY Oracle Ԥ������ORACLE_WARNING_USED_RATE';

prompt
prompt Creating table BASE_TRADE
prompt =========================
prompt
create table BASE_TRADE
(
  code VARCHAR2(10),
  name VARCHAR2(20)
)
;

prompt
prompt Creating table DICTATE_PENDING_LIST
prompt ===================================
prompt
create table DICTATE_PENDING_LIST
(
  guid        VARCHAR2(50) default sys_guid() not null,
  server_id   VARCHAR2(50) not null,
  msg_type    VARCHAR2(10) not null,
  msg_content CLOB,
  create_date DATE default sysdate not null,
  work_mark   VARCHAR2(10),
  work_date   DATE,
  msg_remark  VARCHAR2(250)
)
;
comment on table DICTATE_PENDING_LIST
  is 'ָ�����:�������б�';
comment on column DICTATE_PENDING_LIST.msg_content
  is '��������';
comment on column DICTATE_PENDING_LIST.create_date
  is '����ʱ��';
comment on column DICTATE_PENDING_LIST.work_mark
  is '״̬:0-��ʼ;1-���ͳɹ�;2-����ʧ��;3-��������';
comment on column DICTATE_PENDING_LIST.work_date
  is '�޸�ʱ��';
comment on column DICTATE_PENDING_LIST.msg_remark
  is '��ע';
alter table DICTATE_PENDING_LIST
  add constraint PK_DICTATE_PENDING_LIST primary key (GUID);

prompt
prompt Creating table GRANT_SYSTEM_INFO
prompt ================================
prompt
create table GRANT_SYSTEM_INFO
(
  guid     VARCHAR2(50) default sys_guid() not null,
  sys_id   VARCHAR2(10),
  sys_name VARCHAR2(110)
)
;
comment on table GRANT_SYSTEM_INFO
  is 'Ȩ��ƽ̨-Ӧ��ϵͳ��Ϣ';
comment on column GRANT_SYSTEM_INFO.sys_id
  is 'ϵͳid';
comment on column GRANT_SYSTEM_INFO.sys_name
  is 'ϵͳName';
alter table GRANT_SYSTEM_INFO
  add constraint PK_GRANT_SYSTEM_INFO primary key (GUID);

prompt
prompt Creating table ITF_APP_MESSAGE
prompt ==============================
prompt
create table ITF_APP_MESSAGE
(
  message_id       VARCHAR2(50) not null,
  message_type     VARCHAR2(10),
  order_no         VARCHAR2(50),
  veh_no           VARCHAR2(32),
  controller_name  VARCHAR2(50),
  action_name      VARCHAR2(50),
  action_params    VARCHAR2(1000),
  push_type        VARCHAR2(10),
  push_obj         VARCHAR2(20),
  is_jump          VARCHAR2(10),
  message_cmd_id   VARCHAR2(20),
  message_from     VARCHAR2(50),
  message_to       VARCHAR2(50),
  message_content  VARCHAR2(500),
  remark           VARCHAR2(255),
  login_no         VARCHAR2(50),
  user_id          VARCHAR2(50),
  base_id          VARCHAR2(100),
  company_code     VARCHAR2(50),
  is_read          VARCHAR2(10),
  function_code    VARCHAR2(10),
  send_mark        VARCHAR2(1) default '0',
  message_date     DATE,
  receiver_id      VARCHAR2(18),
  receiver_address VARCHAR2(255),
  message_sign     VARCHAR2(1024),
  sender_id        VARCHAR2(18),
  send_address     VARCHAR2(255),
  create_date      DATE default SYSDATE
)
;
comment on column ITF_APP_MESSAGE.message_id
  is '��Ϣ���';
comment on column ITF_APP_MESSAGE.message_type
  is '��Ϣ����';
comment on column ITF_APP_MESSAGE.order_no
  is 'ҵ��֤���';
comment on column ITF_APP_MESSAGE.veh_no
  is '���ƺ�';
comment on column ITF_APP_MESSAGE.controller_name
  is 'Controller����';
comment on column ITF_APP_MESSAGE.action_name
  is '��������';
comment on column ITF_APP_MESSAGE.action_params
  is '��������';
comment on column ITF_APP_MESSAGE.push_type
  is '��������';
comment on column ITF_APP_MESSAGE.push_obj
  is '���Ͷ���';
comment on column ITF_APP_MESSAGE.is_jump
  is '�Ƿ���Ҫ��תҳ��(0����/1��)';
comment on column ITF_APP_MESSAGE.message_cmd_id
  is '������';
comment on column ITF_APP_MESSAGE.message_from
  is '��Ϣ��Դ';
comment on column ITF_APP_MESSAGE.message_to
  is '��Ϣȥ��';
comment on column ITF_APP_MESSAGE.message_content
  is '��Ϣ����';
comment on column ITF_APP_MESSAGE.remark
  is '��ע';
comment on column ITF_APP_MESSAGE.login_no
  is '�û���';
comment on column ITF_APP_MESSAGE.user_id
  is '�û�ID';
comment on column ITF_APP_MESSAGE.company_code
  is '��˾����';
comment on column ITF_APP_MESSAGE.is_read
  is '�Ѷ���־(0δ��1�Ѷ�)';
comment on column ITF_APP_MESSAGE.function_code
  is '���ܴ��루0-��������һ�ˣ�1-������һ�ˣ�';
comment on column ITF_APP_MESSAGE.send_mark
  is '���ͱ�־';
comment on column ITF_APP_MESSAGE.message_date
  is '���Ĵ���ʱ��';
comment on column ITF_APP_MESSAGE.receiver_id
  is '���Ľ��ձ��';
comment on column ITF_APP_MESSAGE.receiver_address
  is '���Ľ��յ�ַ';
comment on column ITF_APP_MESSAGE.message_sign
  is '���ļ�ǩ';
comment on column ITF_APP_MESSAGE.sender_id
  is '���ķ��ͱ��';
comment on column ITF_APP_MESSAGE.send_address
  is '���ķ��͵�ַ';
comment on column ITF_APP_MESSAGE.create_date
  is '����ʱ��';
create index IDX_ITF_APP_MESSAGE1 on ITF_APP_MESSAGE (LOGIN_NO);
create index IDX_ITF_APP_MESSAGE2 on ITF_APP_MESSAGE (COMPANY_CODE);
create index IDX_ITF_APP_MESSAGE3 on ITF_APP_MESSAGE (BASE_ID);
create index IDX_ITF_APP_MESSAGE4 on ITF_APP_MESSAGE (SEND_MARK);
alter table ITF_APP_MESSAGE
  add constraint PK_ITF_APP_MESSAGE primary key (MESSAGE_ID);

prompt
prompt Creating table LOG_TEST
prompt =======================
prompt
create table LOG_TEST
(
  guid     VARCHAR2(50) default sys_GUID(),
  log_name VARCHAR2(50),
  log_time DATE default sysdate,
  log_info VARCHAR2(500)
)
;
comment on table LOG_TEST
  is '������־';

prompt
prompt Creating table MG_TODO_TASKS
prompt ============================
prompt
create table MG_TODO_TASKS
(
  guid                      VARCHAR2(50) default sys_guid() not null,
  todo_tools_type           VARCHAR2(50),
  todo_module_name          VARCHAR2(50),
  todo_overview             VARCHAR2(50),
  todo_keyword              VARCHAR2(50),
  todo_description          VARCHAR2(50),
  todo_remark               VARCHAR2(50),
  todo_start_time           DATE,
  todo_expected_time        DATE,
  todo_deadline_time        DATE,
  todo_actual_finish_time   DATE,
  create_person             VARCHAR2(50),
  create_date               DATE default sysdate,
  last_update_person        VARCHAR2(50),
  last_update_date          DATE,
  todo_finish_status        VARCHAR2(50),
  todo_finish_status_person VARCHAR2(50),
  todo_finish_status_time   DATE,
  extend_varchar1           VARCHAR2(50),
  extend_varchar2           VARCHAR2(250),
  extend_number1            NUMBER,
  extend_date               DATE
)
;
comment on table MG_TODO_TASKS
  is '����ϵͳ-��������';
comment on column MG_TODO_TASKS.todo_tools_type
  is '��������(web,����,wpf����)';
comment on column MG_TODO_TASKS.todo_module_name
  is 'ģ����';
comment on column MG_TODO_TASKS.todo_overview
  is '����';
comment on column MG_TODO_TASKS.todo_keyword
  is '�ؼ���';
comment on column MG_TODO_TASKS.todo_description
  is '��ϸ˵��';
comment on column MG_TODO_TASKS.todo_remark
  is '��ע';
comment on column MG_TODO_TASKS.todo_start_time
  is '��ʼʱ��';
comment on column MG_TODO_TASKS.todo_expected_time
  is 'Ԥ�����ʱ��';
comment on column MG_TODO_TASKS.todo_deadline_time
  is '�������';
comment on column MG_TODO_TASKS.todo_actual_finish_time
  is 'ʵ�����ʱ��';
comment on column MG_TODO_TASKS.create_person
  is '������';
comment on column MG_TODO_TASKS.create_date
  is '����ʱ��';
comment on column MG_TODO_TASKS.last_update_person
  is '����޸���';
comment on column MG_TODO_TASKS.last_update_date
  is '����޸�ʱ��';
comment on column MG_TODO_TASKS.todo_finish_status
  is '���״̬';
comment on column MG_TODO_TASKS.todo_finish_status_person
  is '���״̬������';
comment on column MG_TODO_TASKS.todo_finish_status_time
  is '���״̬ʱ��';
comment on column MG_TODO_TASKS.extend_varchar1
  is 'varchar��չ�ֶ�';
comment on column MG_TODO_TASKS.extend_varchar2
  is 'varchar��չ�ֶ�';
comment on column MG_TODO_TASKS.extend_number1
  is 'number��չ�ֶ�';
comment on column MG_TODO_TASKS.extend_date
  is 'date��չ�ֶ�';
alter table MG_TODO_TASKS
  add constraint PK_MG_TODO_TASKS primary key (GUID);

prompt
prompt Creating table MONITOR_DB_MSSQL_01
prompt ==================================
prompt
create table MONITOR_DB_MSSQL_01
(
  guid                  VARCHAR2(50) default sys_guid() not null,
  server_id             VARCHAR2(250),
  connections           VARCHAR2(50),
  cpu_busy              VARCHAR2(50),
  io_busy               VARCHAR2(50),
  idle                  VARCHAR2(50),
  create_date           DATE default SYSDATE not null,
  pack_sent             VARCHAR2(50),
  pack_received         VARCHAR2(50),
  packet_errors         VARCHAR2(50),
  total_disk_errors     VARCHAR2(50),
  total_read            VARCHAR2(50),
  total_write           VARCHAR2(50),
  mssql_monitoring_type VARCHAR2(50),
  db_id                 VARCHAR2(50)
)
;
comment on table MONITOR_DB_MSSQL_01
  is '���ݿ�ȫ������-MSSQL';
comment on column MONITOR_DB_MSSQL_01.server_id
  is '������������Ϣ';
comment on column MONITOR_DB_MSSQL_01.connections
  is '���ϴ����������ӻ���ͼ���ӵĴ���';
comment on column MONITOR_DB_MSSQL_01.cpu_busy
  is '���ϴ�������CPU�Ĺ���ʱ��';
comment on column MONITOR_DB_MSSQL_01.io_busy
  is '���ϴ�������ִ����������������ʱ��';
comment on column MONITOR_DB_MSSQL_01.idle
  is '���ϴ����������õ�ʱ��';
comment on column MONITOR_DB_MSSQL_01.create_date
  is '����ʱ��';
comment on column MONITOR_DB_MSSQL_01.pack_sent
  is '���ϴ�������д�������ϵ�������ݰ���';
comment on column MONITOR_DB_MSSQL_01.pack_received
  is '���ϴ�������������϶�ȡ���������ݰ���';
comment on column MONITOR_DB_MSSQL_01.packet_errors
  is '���ϴ������������������ݰ�������';
comment on column MONITOR_DB_MSSQL_01.total_disk_errors
  is '���ϴ���������̶�/д������';
comment on column MONITOR_DB_MSSQL_01.total_read
  is '���ϴ��������ȡ���̵Ĵ���';
comment on column MONITOR_DB_MSSQL_01.total_write
  is '���ϴ�������д����̵Ĵ���';
comment on column MONITOR_DB_MSSQL_01.mssql_monitoring_type
  is '�������';
comment on column MONITOR_DB_MSSQL_01.db_id
  is '�������ݿ���Ϣ';
alter table MONITOR_DB_MSSQL_01
  add constraint PK_MONITOR_DB_MSSQL_1 primary key (GUID);

prompt
prompt Creating table MONITOR_DB_MSSQL_02
prompt ==================================
prompt
create table MONITOR_DB_MSSQL_02
(
  guid                  VARCHAR2(50) not null,
  server_id             VARCHAR2(250),
  connections           VARCHAR2(50),
  cpu_busy              VARCHAR2(50),
  io_busy               VARCHAR2(50),
  idle                  VARCHAR2(50),
  create_date           DATE not null,
  pack_sent             VARCHAR2(50),
  pack_received         VARCHAR2(50),
  packet_errors         VARCHAR2(50),
  total_disk_errors     VARCHAR2(50),
  total_read            VARCHAR2(50),
  total_write           VARCHAR2(50),
  mssql_monitoring_type VARCHAR2(50),
  db_id                 VARCHAR2(50)
)
;

prompt
prompt Creating table MONITOR_DB_MSSQL_03
prompt ==================================
prompt
create table MONITOR_DB_MSSQL_03
(
  guid                      VARCHAR2(50) default sys_guid() not null,
  server_id                 VARCHAR2(250),
  database_name             VARCHAR2(50),
  data_file_size            VARCHAR2(50),
  log_file_size             VARCHAR2(50),
  log_file_used             VARCHAR2(50),
  log_used_percent          VARCHAR2(50),
  active_trans              VARCHAR2(50),
  trans_rate                VARCHAR2(50),
  repl_pending_xacts        VARCHAR2(50),
  log_cache_read_rate       VARCHAR2(50),
  log_cache_hit_percent     VARCHAR2(50),
  bulk_copy_rate            VARCHAR2(50),
  bulk_copy_throughput      VARCHAR2(50),
  backup_restore_throughput VARCHAR2(50),
  dbcc_scan_rate            VARCHAR2(50),
  shrink_data_move_rate     VARCHAR2(50),
  log_flush_rate            VARCHAR2(50),
  log_bytes_flush_rate      VARCHAR2(50),
  log_wait_rate             VARCHAR2(50),
  log_flush_wait_time       VARCHAR2(50),
  log_truncations           VARCHAR2(50),
  log_growths               VARCHAR2(50),
  log_shrinks               VARCHAR2(50),
  mssql_monitoring_type     VARCHAR2(50),
  create_date               DATE default SYSDATE not null,
  db_id                     VARCHAR2(50),
  repl_trans_rate           VARCHAR2(50)
)
;
comment on column MONITOR_DB_MSSQL_03.data_file_size
  is '���е������ļ����ۼƴ�С';
comment on column MONITOR_DB_MSSQL_03.log_file_size
  is '���е�������־�ļ����ۼƴ�С';
comment on column MONITOR_DB_MSSQL_03.log_file_used
  is 'ȫ����־�ļ������ò����ۻ���С';
comment on column MONITOR_DB_MSSQL_03.log_used_percent
  is '������־�ٷֱ�';
comment on column MONITOR_DB_MSSQL_03.active_trans
  is '�������';
comment on column MONITOR_DB_MSSQL_03.trans_rate
  is 'Ϊ���ݿ�������������';
comment on column MONITOR_DB_MSSQL_03.repl_pending_xacts
  is '�������ݿ�������־���������Ʊ�ǣ�����δ���͸��ַ����ݿ���������';
comment on column MONITOR_DB_MSSQL_03.log_cache_read_rate
  is 'ÿ��ͨ����־���������ٻ�����еĶ�ȡ';
comment on column MONITOR_DB_MSSQL_03.log_cache_hit_percent
  is '��־����������';
comment on column MONITOR_DB_MSSQL_03.bulk_copy_rate
  is '���������Ƶ�����';
comment on column MONITOR_DB_MSSQL_03.bulk_copy_throughput
  is '���������Ƶ�������';
comment on column MONITOR_DB_MSSQL_03.backup_restore_throughput
  is 'ÿ�뱸�ݺͻ�ԭ�����Ķ�/д������';
comment on column MONITOR_DB_MSSQL_03.dbcc_scan_rate
  is 'DBCCÿ���߼���ɨ����ֽ���';
comment on column MONITOR_DB_MSSQL_03.shrink_data_move_rate
  is '���Զ�������������DBCC SHRINKDATABASE��DBCC SHRINKFILE����ƶ���������';
comment on column MONITOR_DB_MSSQL_03.log_flush_rate
  is '��־ˢ����';
comment on column MONITOR_DB_MSSQL_03.log_bytes_flush_rate
  is 'ˢ�µ���־�ֽ�����';
comment on column MONITOR_DB_MSSQL_03.log_wait_rate
  is '�ȴ���־ˢ�µ��ύ��';
comment on column MONITOR_DB_MSSQL_03.log_flush_wait_time
  is 'Ϊˢ����־�����ѵ��ܵȴ�ʱ��';
comment on column MONITOR_DB_MSSQL_03.log_truncations
  is '��־�ضϵ��ܴ���';
comment on column MONITOR_DB_MSSQL_03.log_growths
  is '��־�������ܴ���';
comment on column MONITOR_DB_MSSQL_03.log_shrinks
  is '��־�������ܴ���';
comment on column MONITOR_DB_MSSQL_03.repl_trans_rate
  is '�ӷ������ݿ�������־�ж����������͸��ַ����ݿ���������';
alter table MONITOR_DB_MSSQL_03
  add constraint PK_MONITOR_DB_MSSQL_03 primary key (GUID);

prompt
prompt Creating table MONITOR_DB_MSSQL_04
prompt ==================================
prompt
create table MONITOR_DB_MSSQL_04
(
  guid                  VARCHAR2(50) default sys_guid() not null,
  server_id             VARCHAR2(250),
  logins_rate           VARCHAR2(50),
  logouts_rate          VARCHAR2(50),
  user_connections      VARCHAR2(50),
  mssql_monitoring_type VARCHAR2(50),
  create_date           DATE default SYSDATE not null,
  db_id                 VARCHAR2(50)
)
;
comment on column MONITOR_DB_MSSQL_04.guid
  is '����';
comment on column MONITOR_DB_MSSQL_04.server_id
  is '������ID';
comment on column MONITOR_DB_MSSQL_04.logins_rate
  is '��¼Ƶ��';
comment on column MONITOR_DB_MSSQL_04.logouts_rate
  is 'ע��Ƶ��';
comment on column MONITOR_DB_MSSQL_04.user_connections
  is '�û�������';
comment on column MONITOR_DB_MSSQL_04.mssql_monitoring_type
  is '�������';
comment on column MONITOR_DB_MSSQL_04.create_date
  is '��������';
comment on column MONITOR_DB_MSSQL_04.db_id
  is '���ݿ�ID';
alter table MONITOR_DB_MSSQL_04
  add constraint PK_MONITOR_DB_MSSQL_04 primary key (GUID);

prompt
prompt Creating table MONITOR_DB_MSSQL_05
prompt ==================================
prompt
create table MONITOR_DB_MSSQL_05
(
  guid                    VARCHAR2(50) default sys_guid() not null,
  server_id               VARCHAR2(250),
  mssql_monitoring_type   VARCHAR2(50),
  create_date             DATE default SYSDATE not null,
  db_id                   VARCHAR2(50),
  batch_request_rate      VARCHAR2(50),
  auto_param_attempt_rate VARCHAR2(50),
  failed_auto_param_rate  VARCHAR2(50),
  safe_auto_param_rate    VARCHAR2(50),
  unsafe_auto_param_rate  VARCHAR2(50),
  sql_compliation_rate    VARCHAR2(50),
  sql_recompliation_rate  VARCHAR2(50)
)
;
comment on column MONITOR_DB_MSSQL_05.guid
  is '����';
comment on column MONITOR_DB_MSSQL_05.server_id
  is '������ID';
comment on column MONITOR_DB_MSSQL_05.mssql_monitoring_type
  is '�������';
comment on column MONITOR_DB_MSSQL_05.create_date
  is '��������';
comment on column MONITOR_DB_MSSQL_05.db_id
  is '���ݿ�ID';
comment on column MONITOR_DB_MSSQL_05.batch_request_rate
  is 'SQL��������';
comment on column MONITOR_DB_MSSQL_05.auto_param_attempt_rate
  is '�Զ�������������';
comment on column MONITOR_DB_MSSQL_05.failed_auto_param_rate
  is '�Զ�����������ʧ�ܴ���';
comment on column MONITOR_DB_MSSQL_05.safe_auto_param_rate
  is '��ȫ�Զ����������Դ���';
comment on column MONITOR_DB_MSSQL_05.unsafe_auto_param_rate
  is '����ȫ���Զ����������Դ���';
comment on column MONITOR_DB_MSSQL_05.sql_compliation_rate
  is 'SQL������';
comment on column MONITOR_DB_MSSQL_05.sql_recompliation_rate
  is 'SQL���±�����';
alter table MONITOR_DB_MSSQL_05
  add constraint PK_MONITOR_DB_MSSQL_05 primary key (GUID);

prompt
prompt Creating table MONITOR_DB_MSSQL_06
prompt ==================================
prompt
create table MONITOR_DB_MSSQL_06
(
  guid                     VARCHAR2(50) default sys_guid() not null,
  server_id                VARCHAR2(250),
  mssql_monitoring_type    VARCHAR2(50),
  create_date              DATE default SYSDATE not null,
  db_id                    VARCHAR2(50),
  awe_lookup_map_rate      VARCHAR2(50),
  awe_stolen_map_rate      VARCHAR2(50),
  awe_unmap_call_rate      VARCHAR2(50),
  awe_unmap_page_rate      VARCHAR2(50),
  awe_write_map_rate       VARCHAR2(50),
  buffer_cache_hit_percent VARCHAR2(50),
  checkpoint_page_rate     VARCHAR2(50),
  database_pages           VARCHAR2(50),
  free_list_stall_rate     VARCHAR2(50),
  free_pages               VARCHAR2(50),
  lazy_write_rate          VARCHAR2(50),
  page_life_expectancy     VARCHAR2(50),
  page_lookup_rate         VARCHAR2(50),
  page_read_rate           VARCHAR2(50),
  page_write_rate          VARCHAR2(50),
  procedure_cache_pages    VARCHAR2(50),
  readahead_page_rate      VARCHAR2(50),
  reserved_pages           VARCHAR2(50),
  stolen_pages             VARCHAR2(50),
  target_pages             VARCHAR2(50),
  total_pages              VARCHAR2(50)
)
;
alter table MONITOR_DB_MSSQL_06
  add constraint PK_MONITOR_DB_MSSQL_06 primary key (GUID);

prompt
prompt Creating table MONITOR_DB_MSSQL_07
prompt ==================================
prompt
create table MONITOR_DB_MSSQL_07
(
  guid                        VARCHAR2(50) default sys_guid() not null,
  server_id                   VARCHAR2(250),
  mssql_monitoring_type       VARCHAR2(50),
  create_date                 DATE default SYSDATE not null,
  db_id                       VARCHAR2(50),
  connection_memory           VARCHAR2(50),
  granted_workspace_memory    VARCHAR2(50),
  lock_blocks                 VARCHAR2(50),
  lock_blocks_allocated       VARCHAR2(50),
  lock_memory                 VARCHAR2(50),
  lock_owner_blocks           VARCHAR2(50),
  lock_owner_blocks_allocated VARCHAR2(50),
  maximum_workspace_memory    VARCHAR2(50),
  memory_grants_outstanding   VARCHAR2(50),
  memory_grants_pending       VARCHAR2(50),
  memory_used_percent         VARCHAR2(50),
  optimizer_memory            VARCHAR2(50),
  sql_cache_memory            VARCHAR2(50),
  target_server_memory        VARCHAR2(50),
  total_server_memory         VARCHAR2(50)
)
;
comment on column MONITOR_DB_MSSQL_07.guid
  is '����';
comment on column MONITOR_DB_MSSQL_07.server_id
  is '������ID';
comment on column MONITOR_DB_MSSQL_07.mssql_monitoring_type
  is '�������';
comment on column MONITOR_DB_MSSQL_07.create_date
  is '��������';
comment on column MONITOR_DB_MSSQL_07.db_id
  is '���ݿ�ID';
comment on column MONITOR_DB_MSSQL_07.connection_memory
  is '��������������ά�����ӵĶ�̬�ڴ�����';
comment on column MONITOR_DB_MSSQL_07.granted_workspace_memory
  is '��ǰ����ִ�й�ϣ�����򡢴��������ƺ��������������Ƚ��̵��ڴ�����';
comment on column MONITOR_DB_MSSQL_07.lock_blocks
  is '����������ʹ�õ�����ĵ�ǰ��Ŀ';
comment on column MONITOR_DB_MSSQL_07.lock_blocks_allocated
  is '��ǰ�����������';
comment on column MONITOR_DB_MSSQL_07.lock_memory
  is '�������������Ķ�̬�ڴ�����';
comment on column MONITOR_DB_MSSQL_07.lock_owner_blocks
  is '��ǰ���ڷ�������ʹ�õ���ӵ���߿����Ŀ';
comment on column MONITOR_DB_MSSQL_07.lock_owner_blocks_allocated
  is '�������ӵ���߿�ĵ�ǰ����';
comment on column MONITOR_DB_MSSQL_07.maximum_workspace_memory
  is '����ִ�й�ϣ�����򡢴��������ƺ��������������Ƚ��̵��������ڴ���';
comment on column MONITOR_DB_MSSQL_07.memory_grants_outstanding
  is 'ÿ��ɹ����һ�������ռ��ڴ���Ȩ�Ľ�������';
comment on column MONITOR_DB_MSSQL_07.memory_grants_pending
  is 'ÿ��ȴ���ù����ռ��ڴ���Ȩ�Ľ�����';
comment on column MONITOR_DB_MSSQL_07.memory_used_percent
  is '�ڴ�������';
comment on column MONITOR_DB_MSSQL_07.optimizer_memory
  is '�������������ڲ�ѯ�Ż��Ķ�̬�ڴ�����';
comment on column MONITOR_DB_MSSQL_07.sql_cache_memory
  is '�������������ڶ�̬ SQL ���ٻ���Ķ�̬�ڴ�����';
comment on column MONITOR_DB_MSSQL_07.target_server_memory
  is '�������ܹ�ʹ�õĶ�̬�ڴ�����';
comment on column MONITOR_DB_MSSQL_07.total_server_memory
  is '��������ǰ����ʹ�õĶ�̬�ڴ�����';
alter table MONITOR_DB_MSSQL_07
  add constraint PK_MONITOR_DB_MSSQL_07 primary key (GUID);

prompt
prompt Creating table MONITOR_DB_MSSQL_08
prompt ==================================
prompt
create table MONITOR_DB_MSSQL_08
(
  guid                   VARCHAR2(50) default sys_guid() not null,
  server_id              VARCHAR2(250),
  mssql_monitoring_type  VARCHAR2(50),
  create_date            DATE default SYSDATE not null,
  db_id                  VARCHAR2(50),
  free_list_empty_rate   VARCHAR2(50),
  free_list_request_rate VARCHAR2(50),
  free_pages             VARCHAR2(50)
)
;
comment on column MONITOR_DB_MSSQL_08.guid
  is '����';
comment on column MONITOR_DB_MSSQL_08.server_id
  is '������ID';
comment on column MONITOR_DB_MSSQL_08.mssql_monitoring_type
  is '�������';
comment on column MONITOR_DB_MSSQL_08.create_date
  is '��������';
comment on column MONITOR_DB_MSSQL_08.db_id
  is '���ݿ�ID';
comment on column MONITOR_DB_MSSQL_08.free_list_empty_rate
  is '�������ҳ��û��ʹ�õĴ���';
comment on column MONITOR_DB_MSSQL_08.free_list_request_rate
  is '����ҳ������Ĵ���';
comment on column MONITOR_DB_MSSQL_08.free_pages
  is '���п����б�ҳ����';
alter table MONITOR_DB_MSSQL_08
  add constraint PK_MONITOR_DB_MSSQL_08 primary key (GUID);

prompt
prompt Creating table MONITOR_DB_MSSQL_09
prompt ==================================
prompt
create table MONITOR_DB_MSSQL_09
(
  guid                        VARCHAR2(50) default sys_guid() not null,
  server_id                   VARCHAR2(250),
  mssql_monitoring_type       VARCHAR2(50),
  create_date                 DATE default SYSDATE not null,
  db_id                       VARCHAR2(50),
  extent_allocate_rate        VARCHAR2(50),
  extent_deallocate_rate      VARCHAR2(50),
  forward_record_rate         VARCHAR2(50),
  freespace_page_fetch_rate   VARCHAR2(50),
  freespace_scan_rate         VARCHAR2(50),
  full_scan_rate              VARCHAR2(50),
  index_search_rate           VARCHAR2(50),
  mixpage_allocate_rate       VARCHAR2(50),
  page_allocate_rate          VARCHAR2(50),
  page_deallocate_rate        VARCHAR2(50),
  page_split_rate             VARCHAR2(50),
  probe_scan_rate             VARCHAR2(50),
  range_scan_rate             VARCHAR2(50),
  scan_point_revalid_rate     VARCHAR2(50),
  skip_ghost_record_rate      VARCHAR2(50),
  table_lock_escalate_rate    VARCHAR2(50),
  workfile_create_rate        VARCHAR2(50),
  worktable_cache_hit_percent VARCHAR2(50),
  worktable_create_rate       VARCHAR2(50)
)
;
comment on column MONITOR_DB_MSSQL_09.guid
  is '����';
comment on column MONITOR_DB_MSSQL_09.server_id
  is '������ID';
comment on column MONITOR_DB_MSSQL_09.mssql_monitoring_type
  is '�������';
comment on column MONITOR_DB_MSSQL_09.create_date
  is '��������';
comment on column MONITOR_DB_MSSQL_09.db_id
  is '���ݿ�ID';
comment on column MONITOR_DB_MSSQL_09.extent_allocate_rate
  is 'ÿ�������洢���������ݼ�¼�����ݿ�������չ������';
comment on column MONITOR_DB_MSSQL_09.extent_deallocate_rate
  is 'ÿ��Ӵ洢���������ݼ�¼�����ݿ�������ͷŵ���չ������';
comment on column MONITOR_DB_MSSQL_09.forward_record_rate
  is 'ÿ��ͨ�������¼ָ����ȡ�ļ�¼��';
comment on column MONITOR_DB_MSSQL_09.freespace_page_fetch_rate
  is 'ÿ���ɿ��ÿռ�ɨ�践�ص�ҳ��';
comment on column MONITOR_DB_MSSQL_09.freespace_scan_rate
  is 'ÿ��Ϊ���ҿ��ÿռ�����е�ɨ�����';
comment on column MONITOR_DB_MSSQL_09.full_scan_rate
  is 'ÿ�벻���޵���ȫɨ����';
comment on column MONITOR_DB_MSSQL_09.index_search_rate
  is 'ÿ������������';
comment on column MONITOR_DB_MSSQL_09.mixpage_allocate_rate
  is 'ÿ��ӻ����չ���������ҳ��';
comment on column MONITOR_DB_MSSQL_09.page_allocate_rate
  is 'ÿ�������洢���������ݼ�¼�����ݿ�����ҳ��';
comment on column MONITOR_DB_MSSQL_09.page_deallocate_rate
  is 'ÿ��Ӵ洢���������ݼ�¼�����ݿ�������ͷŵ�ҳ��';
comment on column MONITOR_DB_MSSQL_09.page_split_rate
  is 'ÿ����������ҳ�����������ҳ��ֵ�����';
comment on column MONITOR_DB_MSSQL_09.probe_scan_rate
  is 'ÿ���̽��ɨ����';
comment on column MONITOR_DB_MSSQL_09.range_scan_rate
  is 'ÿ��ͨ���������еġ�����һ������������ɨ����';
comment on column MONITOR_DB_MSSQL_09.scan_point_revalid_rate
  is 'ÿ������ɨ���������֤�Ĵ���';
comment on column MONITOR_DB_MSSQL_09.skip_ghost_record_rate
  is '��ɨ�������ÿ�������Ļ�Ӱ��¼��';
comment on column MONITOR_DB_MSSQL_09.table_lock_escalate_rate
  is '���е�������������';
comment on column MONITOR_DB_MSSQL_09.workfile_create_rate
  is 'ÿ�봴���Ĺ����ļ���';
comment on column MONITOR_DB_MSSQL_09.worktable_cache_hit_percent
  is '�������ġ���ʼҳ�������ڹ�������ٻ�����ʹ�õĹ�����İٷֱ�';
comment on column MONITOR_DB_MSSQL_09.worktable_create_rate
  is 'ÿ�봴���Ĺ�������';
alter table MONITOR_DB_MSSQL_09
  add constraint PK_MONITOR_DB_MSSQL_09 primary key (GUID);

prompt
prompt Creating table MONITOR_DB_MSSQL_10
prompt ==================================
prompt
create table MONITOR_DB_MSSQL_10
(
  guid                       VARCHAR2(50) default sys_guid() not null,
  server_id                  VARCHAR2(250),
  mssql_monitoring_type      VARCHAR2(50),
  create_date                DATE default SYSDATE not null,
  db_id                      VARCHAR2(50),
  db_version                 VARCHAR2(50),
  default_language           VARCHAR2(50),
  charset                    VARCHAR2(50),
  min_server_memory          VARCHAR2(50),
  max_server_memory          VARCHAR2(50),
  max_worker_threads         VARCHAR2(50),
  min_query_memory           VARCHAR2(50),
  remote_login_timeout       VARCHAR2(50),
  remote_query_timeout       VARCHAR2(50),
  net_packet_size            VARCHAR2(50),
  allow_update_system_tables VARCHAR2(50),
  allow_inner_trigger        VARCHAR2(50),
  allow_remote_access        VARCHAR2(50),
  max_table_lenth            VARCHAR2(50),
  max_column_length          VARCHAR2(50),
  max_user_length            VARCHAR2(50),
  max_index_column           VARCHAR2(50)
)
;
comment on column MONITOR_DB_MSSQL_10.guid
  is '����';
comment on column MONITOR_DB_MSSQL_10.server_id
  is '������ID';
comment on column MONITOR_DB_MSSQL_10.mssql_monitoring_type
  is '�������';
comment on column MONITOR_DB_MSSQL_10.create_date
  is '��������';
comment on column MONITOR_DB_MSSQL_10.db_id
  is '���ݿ�ID';
comment on column MONITOR_DB_MSSQL_10.db_version
  is '�汾��Ϣ';
comment on column MONITOR_DB_MSSQL_10.default_language
  is 'Ĭ������';
comment on column MONITOR_DB_MSSQL_10.charset
  is '�ַ���';
comment on column MONITOR_DB_MSSQL_10.min_server_memory
  is '��С�����ڴ�';
comment on column MONITOR_DB_MSSQL_10.max_server_memory
  is '�������ڴ�';
comment on column MONITOR_DB_MSSQL_10.max_worker_threads
  is '������߳���';
comment on column MONITOR_DB_MSSQL_10.min_query_memory
  is '��С��ѯ�ڴ�';
comment on column MONITOR_DB_MSSQL_10.remote_login_timeout
  is 'Զ�̵�¼��ʱ';
comment on column MONITOR_DB_MSSQL_10.remote_query_timeout
  is 'Զ�̲�ѯ��ʱ';
comment on column MONITOR_DB_MSSQL_10.net_packet_size
  is '�������С';
comment on column MONITOR_DB_MSSQL_10.allow_update_system_tables
  is '�Ƿ��������ϵͳ��';
comment on column MONITOR_DB_MSSQL_10.allow_inner_trigger
  is '�Ƿ�����triggerǶ��';
comment on column MONITOR_DB_MSSQL_10.allow_remote_access
  is '�Ƿ�����Զ�̷���';
comment on column MONITOR_DB_MSSQL_10.max_table_lenth
  is '����������';
comment on column MONITOR_DB_MSSQL_10.max_column_length
  is '����ֶ�������';
comment on column MONITOR_DB_MSSQL_10.max_user_length
  is '����û�������';
comment on column MONITOR_DB_MSSQL_10.max_index_column
  is '�����������������ֶ���';
alter table MONITOR_DB_MSSQL_10
  add constraint PK_MONITOR_DB_MSSQL_10 primary key (GUID);

prompt
prompt Creating table MONITOR_DB_MSSQL_11
prompt ==================================
prompt
create table MONITOR_DB_MSSQL_11
(
  guid                  VARCHAR2(50) default sys_guid() not null,
  server_id             VARCHAR2(250),
  mssql_monitoring_type VARCHAR2(50),
  create_date           DATE default SYSDATE not null,
  db_id                 VARCHAR2(50),
  database_name         VARCHAR2(50),
  db_mode               VARCHAR2(50),
  crdate                VARCHAR2(50),
  cmptlevel             VARCHAR2(50),
  filename              VARCHAR2(250)
)
;
comment on column MONITOR_DB_MSSQL_11.guid
  is '����';
comment on column MONITOR_DB_MSSQL_11.server_id
  is '������ID';
comment on column MONITOR_DB_MSSQL_11.mssql_monitoring_type
  is '�������';
comment on column MONITOR_DB_MSSQL_11.create_date
  is '��������';
comment on column MONITOR_DB_MSSQL_11.db_id
  is '���ݿ�ID';
comment on column MONITOR_DB_MSSQL_11.database_name
  is '���ݿ���';
comment on column MONITOR_DB_MSSQL_11.db_mode
  is '���ݿ�ģʽ';
comment on column MONITOR_DB_MSSQL_11.crdate
  is '���ݿⴴ������';
comment on column MONITOR_DB_MSSQL_11.cmptlevel
  is '���ݼ���';
comment on column MONITOR_DB_MSSQL_11.filename
  is '�ļ���';
alter table MONITOR_DB_MSSQL_11
  add constraint PK_MONITOR_DB_MSSQL_11 primary key (GUID);

prompt
prompt Creating table MONITOR_DB_ORACLE
prompt ================================
prompt
create table MONITOR_DB_ORACLE
(
  guid                        VARCHAR2(50) default sys_guid() not null,
  server_id                   VARCHAR2(250),
  ora_table_spasce            VARCHAR2(50),
  ora_user_id                 VARCHAR2(50),
  ora_monitoring_type         VARCHAR2(50),
  ora_used_space              NUMBER,
  ora_free_space              NUMBER,
  ora_used_ratio              NUMBER,
  ora_sum_space               NUMBER,
  ora_sum_blocks              NUMBER,
  bat_no                      VARCHAR2(50),
  ora_pwd_expiry              VARCHAR2(50),
  ora_pwd_expiry_date         VARCHAR2(50),
  create_date                 DATE default SYSDATE not null,
  ora_file_type               VARCHAR2(50),
  ora_space_limit             NUMBER,
  ora_space_reclaimable       NUMBER,
  ora_space_reclaimable_ratio NUMBER,
  ora_number_of_files         NUMBER,
  ora_remark                  VARCHAR2(50),
  control_warning_value       NUMBER
)
;
comment on table MONITOR_DB_ORACLE
  is '��Ϣ�ɼ����-���ݿ�-ORACLE';
comment on column MONITOR_DB_ORACLE.server_id
  is '������������Ϣ';
comment on column MONITOR_DB_ORACLE.ora_table_spasce
  is 'oracle��ռ�';
comment on column MONITOR_DB_ORACLE.ora_user_id
  is 'ORACLE�û���';
comment on column MONITOR_DB_ORACLE.ora_monitoring_type
  is '�������';
comment on column MONITOR_DB_ORACLE.ora_used_space
  is 'ʹ�ÿռ�(��λ:MB)';
comment on column MONITOR_DB_ORACLE.ora_free_space
  is 'ʣ��ռ�(��λ:MB)';
comment on column MONITOR_DB_ORACLE.ora_used_ratio
  is 'ʹ�ñ���';
comment on column MONITOR_DB_ORACLE.ora_sum_space
  is '�ܼƿռ�';
comment on column MONITOR_DB_ORACLE.ora_sum_blocks
  is '�ܼ�����';
comment on column MONITOR_DB_ORACLE.bat_no
  is '���κ�';
comment on column MONITOR_DB_ORACLE.ora_pwd_expiry
  is '���뵽��ʣ��ʱ��:����Ϊ����ʱ��,����Ϊ�ѹ�������';
comment on column MONITOR_DB_ORACLE.ora_pwd_expiry_date
  is '���뵽������';
comment on column MONITOR_DB_ORACLE.create_date
  is '��������';
comment on column MONITOR_DB_ORACLE.ora_file_type
  is '�ļ�����';
comment on column MONITOR_DB_ORACLE.ora_space_limit
  is '�ռ�����:Rocover';
comment on column MONITOR_DB_ORACLE.ora_space_reclaimable
  is '�ɻ���';
comment on column MONITOR_DB_ORACLE.ora_space_reclaimable_ratio
  is '�ɻ��ձ���';
comment on column MONITOR_DB_ORACLE.ora_number_of_files
  is '�ļ�����';
comment on column MONITOR_DB_ORACLE.ora_remark
  is '��ע˵��';
comment on column MONITOR_DB_ORACLE.control_warning_value
  is 'Ԥ��ֵ';
alter table MONITOR_DB_ORACLE
  add constraint PK_MONITOR_DB_ORACLE primary key (GUID);

prompt
prompt Creating table MONITOR_DB_ORACLE_21
prompt ===================================
prompt
create table MONITOR_DB_ORACLE_21
(
  guid                 VARCHAR2(50) default sys_guid() not null,
  server_id            VARCHAR2(250),
  libcache_hit_percent VARCHAR2(50),
  pinhit_percent       VARCHAR2(50),
  get_missed_percent   VARCHAR2(50),
  global_hit_percent   VARCHAR2(50),
  create_date          DATE default SYSDATE not null,
  ora_table_spasce     VARCHAR2(50),
  ora_user_id          VARCHAR2(50),
  ora_monitoring_type  VARCHAR2(50),
  db_id                VARCHAR2(50)
)
;
comment on table MONITOR_DB_ORACLE_21
  is '���ݿ��ڴ�ʹ����Ϣ-ORACLE';
comment on column MONITOR_DB_ORACLE_21.server_id
  is '������������Ϣ';
comment on column MONITOR_DB_ORACLE_21.libcache_hit_percent
  is '�⻺��get������';
comment on column MONITOR_DB_ORACLE_21.pinhit_percent
  is '�⻺���pin������';
comment on column MONITOR_DB_ORACLE_21.get_missed_percent
  is '�����ֵ仺������ʧ����';
comment on column MONITOR_DB_ORACLE_21.global_hit_percent
  is 'ȫ�ֻ�����������';
comment on column MONITOR_DB_ORACLE_21.create_date
  is '����ʱ��';
comment on column MONITOR_DB_ORACLE_21.ora_table_spasce
  is 'oracle��ռ�';
comment on column MONITOR_DB_ORACLE_21.ora_user_id
  is 'ORACLE�û���';
comment on column MONITOR_DB_ORACLE_21.ora_monitoring_type
  is '�������';
comment on column MONITOR_DB_ORACLE_21.db_id
  is '�������ݿ���Ϣ';
alter table MONITOR_DB_ORACLE_21
  add constraint PK_MONITOR_DB_ORACLE_21 primary key (GUID);

prompt
prompt Creating table MONITOR_DB_ORACLE_22
prompt ===================================
prompt
create table MONITOR_DB_ORACLE_22
(
  guid                VARCHAR2(50) default sys_guid() not null,
  server_id           VARCHAR2(250),
  create_date         DATE default SYSDATE not null,
  tablespace_name     VARCHAR2(50),
  phyrds              VARCHAR2(50),
  phywrts             VARCHAR2(50),
  ora_table_spasce    VARCHAR2(50),
  ora_user_id         VARCHAR2(50),
  ora_monitoring_type VARCHAR2(50),
  db_id               VARCHAR2(50)
)
;
comment on table MONITOR_DB_ORACLE_22
  is '���ݿ��ڱ�ռ�Ķ�д����-ORACLE';
comment on column MONITOR_DB_ORACLE_22.server_id
  is '������������Ϣ';
comment on column MONITOR_DB_ORACLE_22.create_date
  is '����ʱ��';
comment on column MONITOR_DB_ORACLE_22.tablespace_name
  is '��ռ�����';
comment on column MONITOR_DB_ORACLE_22.phyrds
  is '����������';
comment on column MONITOR_DB_ORACLE_22.phywrts
  is 'д��������';
comment on column MONITOR_DB_ORACLE_22.ora_table_spasce
  is 'oracle��ռ�';
comment on column MONITOR_DB_ORACLE_22.ora_user_id
  is 'ORACLE�û���';
comment on column MONITOR_DB_ORACLE_22.ora_monitoring_type
  is '�������';
comment on column MONITOR_DB_ORACLE_22.db_id
  is '�������ݿ���Ϣ';
alter table MONITOR_DB_ORACLE_22
  add constraint PK_MONITOR_DB_ORACLE_22 primary key (GUID);

prompt
prompt Creating table MONITOR_DB_ORACLE_23
prompt ===================================
prompt
create table MONITOR_DB_ORACLE_23
(
  guid                VARCHAR2(50) default sys_guid() not null,
  server_id           VARCHAR2(250),
  create_date         DATE default SYSDATE not null,
  tablespace_name     VARCHAR2(50),
  megs_used           VARCHAR2(50),
  megs_free           VARCHAR2(50),
  pct_used            VARCHAR2(50),
  pct_free            VARCHAR2(50),
  ora_table_spasce    VARCHAR2(50),
  ora_user_id         VARCHAR2(50),
  ora_monitoring_type VARCHAR2(50),
  db_id               VARCHAR2(50),
  megs_alloc          VARCHAR2(50),
  init_ext            VARCHAR2(50),
  next_ext            VARCHAR2(50),
  min_ext             VARCHAR2(50),
  max_ext             VARCHAR2(50),
  num_segs            VARCHAR2(50),
  num_exts            VARCHAR2(50)
)
;
comment on table MONITOR_DB_ORACLE_23
  is '���ݿ��ռ���������-ORACLE';
comment on column MONITOR_DB_ORACLE_23.server_id
  is '������������Ϣ';
comment on column MONITOR_DB_ORACLE_23.create_date
  is '����ʱ��';
comment on column MONITOR_DB_ORACLE_23.tablespace_name
  is '��ռ�����';
comment on column MONITOR_DB_ORACLE_23.megs_used
  is '���ô�С';
comment on column MONITOR_DB_ORACLE_23.megs_free
  is '���д�С';
comment on column MONITOR_DB_ORACLE_23.pct_used
  is '��ռ�ʹ����';
comment on column MONITOR_DB_ORACLE_23.pct_free
  is '��ռ������';
comment on column MONITOR_DB_ORACLE_23.ora_table_spasce
  is 'oracle��ռ�';
comment on column MONITOR_DB_ORACLE_23.ora_user_id
  is 'ORACLE�û���';
comment on column MONITOR_DB_ORACLE_23.ora_monitoring_type
  is 'oracle�������';
comment on column MONITOR_DB_ORACLE_23.db_id
  is '�������ݿ���Ϣ';
comment on column MONITOR_DB_ORACLE_23.megs_alloc
  is '�����ļ���С';
comment on column MONITOR_DB_ORACLE_23.init_ext
  is '��ʼ����С';
comment on column MONITOR_DB_ORACLE_23.next_ext
  is '��һ����С';
comment on column MONITOR_DB_ORACLE_23.min_ext
  is '��С�ռ�';
comment on column MONITOR_DB_ORACLE_23.max_ext
  is '���ռ�';
comment on column MONITOR_DB_ORACLE_23.num_segs
  is '�ֶ�����';
comment on column MONITOR_DB_ORACLE_23.num_exts
  is '�ռ�����';
alter table MONITOR_DB_ORACLE_23
  add constraint PK_MONITOR_DB_ORACLE_23 primary key (GUID);

prompt
prompt Creating table MONITOR_DB_ORACLE_24
prompt ===================================
prompt
create table MONITOR_DB_ORACLE_24
(
  guid                VARCHAR2(50) default sys_guid() not null,
  server_id           VARCHAR2(250),
  create_date         DATE default SYSDATE not null,
  datafile_name       VARCHAR2(250),
  phyrds              VARCHAR2(50),
  phywrts             VARCHAR2(50),
  ora_table_spasce    VARCHAR2(50),
  ora_user_id         VARCHAR2(50),
  ora_monitoring_type VARCHAR2(50),
  db_id               VARCHAR2(50),
  file_size           VARCHAR2(50),
  scn                 VARCHAR2(50),
  avgio               VARCHAR2(50),
  lastio              VARCHAR2(50)
)
;
comment on table MONITOR_DB_ORACLE_24
  is '�����ļ��������豸�Ķ�д����-ORACLE';
comment on column MONITOR_DB_ORACLE_24.server_id
  is '������������Ϣ';
comment on column MONITOR_DB_ORACLE_24.create_date
  is '����ʱ��';
comment on column MONITOR_DB_ORACLE_24.datafile_name
  is '�����ļ�����';
comment on column MONITOR_DB_ORACLE_24.phyrds
  is '����������';
comment on column MONITOR_DB_ORACLE_24.phywrts
  is 'д��������';
comment on column MONITOR_DB_ORACLE_24.ora_table_spasce
  is 'oracle��ռ�';
comment on column MONITOR_DB_ORACLE_24.ora_user_id
  is 'oracle�û���';
comment on column MONITOR_DB_ORACLE_24.ora_monitoring_type
  is 'oracle�������';
comment on column MONITOR_DB_ORACLE_24.db_id
  is '�������ݿ���Ϣ';
comment on column MONITOR_DB_ORACLE_24.file_size
  is '�ļ���С';
alter table MONITOR_DB_ORACLE_24
  add constraint PK_MONITOR_DB_ORACLE_24 primary key (GUID);

prompt
prompt Creating table MONITOR_DB_ORACLE_25
prompt ===================================
prompt
create table MONITOR_DB_ORACLE_25
(
  guid                VARCHAR2(50) default sys_guid() not null,
  server_id           VARCHAR2(250),
  create_date         DATE default SYSDATE not null,
  tablespace_name     VARCHAR2(50),
  fsfi                VARCHAR2(50),
  ora_table_spasce    VARCHAR2(50),
  ora_user_id         VARCHAR2(50),
  ora_monitoring_type VARCHAR2(50),
  db_id               VARCHAR2(50)
)
;
comment on table MONITOR_DB_ORACLE_25
  is '���ݿ���Ƭ�����-ORACLE';
comment on column MONITOR_DB_ORACLE_25.server_id
  is '������������Ϣ';
comment on column MONITOR_DB_ORACLE_25.create_date
  is '����ʱ��';
comment on column MONITOR_DB_ORACLE_25.tablespace_name
  is '��ռ�����';
comment on column MONITOR_DB_ORACLE_25.fsfi
  is '��Ƭ�̶�';
comment on column MONITOR_DB_ORACLE_25.ora_table_spasce
  is 'oracle��ռ�';
comment on column MONITOR_DB_ORACLE_25.ora_user_id
  is 'oracle�û���';
comment on column MONITOR_DB_ORACLE_25.ora_monitoring_type
  is '�������';
comment on column MONITOR_DB_ORACLE_25.db_id
  is '�������ݿ���Ϣ';
alter table MONITOR_DB_ORACLE_25
  add constraint PK_MONITOR_DB_ORACLE_25 primary key (GUID);

prompt
prompt Creating table MONITOR_DB_ORACLE_26
prompt ===================================
prompt
create table MONITOR_DB_ORACLE_26
(
  guid                VARCHAR2(50) default sys_guid() not null,
  server_id           VARCHAR2(250),
  create_date         DATE default SYSDATE not null,
  extents             VARCHAR2(50),
  xacts               VARCHAR2(50),
  waits               VARCHAR2(50),
  ora_table_spasce    VARCHAR2(50),
  ora_user_id         VARCHAR2(50),
  ora_monitoring_type VARCHAR2(50),
  db_id               VARCHAR2(50),
  roll_name           VARCHAR2(50),
  rssize              VARCHAR2(50),
  hwmsize             VARCHAR2(50),
  status              VARCHAR2(50)
)
;
comment on table MONITOR_DB_ORACLE_26
  is '���ݿ���־�ռ��ع���ʹ�����-ORACLE';
comment on column MONITOR_DB_ORACLE_26.server_id
  is '������������Ϣ';
comment on column MONITOR_DB_ORACLE_26.create_date
  is '����ʱ��';
comment on column MONITOR_DB_ORACLE_26.extents
  is '��չ����';
comment on column MONITOR_DB_ORACLE_26.xacts
  is '��ǰռ����';
comment on column MONITOR_DB_ORACLE_26.waits
  is '�ȴ�';
comment on column MONITOR_DB_ORACLE_26.ora_table_spasce
  is 'oracle��ռ�';
comment on column MONITOR_DB_ORACLE_26.ora_user_id
  is 'oracle�û���';
comment on column MONITOR_DB_ORACLE_26.ora_monitoring_type
  is '�������';
comment on column MONITOR_DB_ORACLE_26.db_id
  is '�������ݿ���Ϣ';
comment on column MONITOR_DB_ORACLE_26.roll_name
  is '�ع���';
comment on column MONITOR_DB_ORACLE_26.status
  is '״̬';
alter table MONITOR_DB_ORACLE_26
  add constraint PK_MONITOR_DB_ORACLE_26 primary key (GUID);

prompt
prompt Creating table MONITOR_DB_ORACLE_27
prompt ===================================
prompt
create table MONITOR_DB_ORACLE_27
(
  guid                VARCHAR2(50) default sys_guid() not null,
  server_id           VARCHAR2(250),
  create_date         DATE default SYSDATE not null,
  total_locks         VARCHAR2(50),
  user_locks          VARCHAR2(50),
  deadlock_percent    VARCHAR2(50),
  avg_lock_wait_time  VARCHAR2(50),
  avail_locks         VARCHAR2(50),
  ora_table_spasce    VARCHAR2(50),
  ora_user_id         VARCHAR2(50),
  ora_monitoring_type VARCHAR2(50),
  db_id               VARCHAR2(50)
)
;
comment on table MONITOR_DB_ORACLE_27
  is '���ݿ���ʹ�����-ORACLE';
comment on column MONITOR_DB_ORACLE_27.server_id
  is '������������Ϣ';
comment on column MONITOR_DB_ORACLE_27.create_date
  is '����ʱ��';
comment on column MONITOR_DB_ORACLE_27.total_locks
  is '������';
comment on column MONITOR_DB_ORACLE_27.user_locks
  is '�û�����������';
comment on column MONITOR_DB_ORACLE_27.deadlock_percent
  is '������';
comment on column MONITOR_DB_ORACLE_27.avg_lock_wait_time
  is 'ƽ���ȴ��������ʱ��';
comment on column MONITOR_DB_ORACLE_27.avail_locks
  is 'ʣ�����������Ŀ';
comment on column MONITOR_DB_ORACLE_27.ora_table_spasce
  is 'oracle��ռ�';
comment on column MONITOR_DB_ORACLE_27.ora_user_id
  is 'oracle�û���';
comment on column MONITOR_DB_ORACLE_27.ora_monitoring_type
  is '�������';
comment on column MONITOR_DB_ORACLE_27.db_id
  is '�������ݿ���Ϣ';
alter table MONITOR_DB_ORACLE_27
  add constraint PK_MONITOR_DB_ORACLE_27 primary key (GUID);

prompt
prompt Creating table MONITOR_DB_ORACLE_28
prompt ===================================
prompt
create table MONITOR_DB_ORACLE_28
(
  guid                VARCHAR2(50) default sys_guid() not null,
  server_id           VARCHAR2(250),
  create_date         DATE default SYSDATE not null,
  total_sessions      VARCHAR2(50),
  wait_sessions       VARCHAR2(50),
  active_sessions     VARCHAR2(50),
  ora_table_spasce    VARCHAR2(50),
  ora_user_id         VARCHAR2(50),
  ora_monitoring_type VARCHAR2(50),
  db_id               VARCHAR2(50)
)
;
comment on table MONITOR_DB_ORACLE_28
  is '�Ự��Ϣ-ORACLE';
comment on column MONITOR_DB_ORACLE_28.server_id
  is '������������Ϣ';
comment on column MONITOR_DB_ORACLE_28.create_date
  is '����ʱ��';
comment on column MONITOR_DB_ORACLE_28.total_sessions
  is '��ǰ�Ự��';
comment on column MONITOR_DB_ORACLE_28.wait_sessions
  is '�ȴ������ĻỰ����';
comment on column MONITOR_DB_ORACLE_28.active_sessions
  is '��Ự��';
comment on column MONITOR_DB_ORACLE_28.ora_table_spasce
  is 'oracle��ռ�';
comment on column MONITOR_DB_ORACLE_28.ora_user_id
  is 'oracle�û���';
comment on column MONITOR_DB_ORACLE_28.ora_monitoring_type
  is '�������';
comment on column MONITOR_DB_ORACLE_28.db_id
  is '�������ݿ���Ϣ';
alter table MONITOR_DB_ORACLE_28
  add constraint PK_MONITOR_DB_ORACLE_28 primary key (GUID);

prompt
prompt Creating table MONITOR_DB_ORACLE_29
prompt ===================================
prompt
create table MONITOR_DB_ORACLE_29
(
  guid                  VARCHAR2(50) default sys_guid() not null,
  server_id             VARCHAR2(250),
  create_date           DATE default SYSDATE not null,
  user_commits          VARCHAR2(50),
  user_rollbacks        VARCHAR2(50),
  user_commit_percent   VARCHAR2(50),
  user_rollback_percent VARCHAR2(50),
  ora_table_spasce      VARCHAR2(50),
  ora_user_id           VARCHAR2(50),
  ora_monitoring_type   VARCHAR2(50),
  db_id                 VARCHAR2(50),
  total_trans           VARCHAR2(50)
)
;
comment on table MONITOR_DB_ORACLE_29
  is '�����ύ���-ORACLE';
comment on column MONITOR_DB_ORACLE_29.server_id
  is '������������Ϣ';
comment on column MONITOR_DB_ORACLE_29.create_date
  is '����ʱ��';
comment on column MONITOR_DB_ORACLE_29.user_commits
  is '�û��ύ��������';
comment on column MONITOR_DB_ORACLE_29.user_rollbacks
  is '�û��ع���������';
comment on column MONITOR_DB_ORACLE_29.user_commit_percent
  is '�ύ����ı���';
comment on column MONITOR_DB_ORACLE_29.user_rollback_percent
  is '�ع�����ı���';
comment on column MONITOR_DB_ORACLE_29.ora_table_spasce
  is 'oracle��ռ�';
comment on column MONITOR_DB_ORACLE_29.ora_user_id
  is 'oracle�û���';
comment on column MONITOR_DB_ORACLE_29.ora_monitoring_type
  is '�������';
comment on column MONITOR_DB_ORACLE_29.db_id
  is '�������ݿ���Ϣ';
comment on column MONITOR_DB_ORACLE_29.total_trans
  is '��������';
alter table MONITOR_DB_ORACLE_29
  add constraint PK_MONITOR_DB_ORACLE_29 primary key (GUID);

prompt
prompt Creating table MONITOR_DB_ORACLE_30
prompt ===================================
prompt
create table MONITOR_DB_ORACLE_30
(
  guid                VARCHAR2(50) default sys_guid() not null,
  server_id           VARCHAR2(250),
  create_date         DATE default SYSDATE not null,
  trannums            VARCHAR2(50),
  max_trans           VARCHAR2(50),
  tran_used_percent   VARCHAR2(50),
  procnums            VARCHAR2(50),
  max_procs           VARCHAR2(50),
  proc_used_percent   VARCHAR2(50),
  ora_table_spasce    VARCHAR2(50),
  ora_user_id         VARCHAR2(50),
  ora_monitoring_type VARCHAR2(50),
  db_id               VARCHAR2(50)
)
;
comment on table MONITOR_DB_ORACLE_30
  is '����ռ�����-ORACLE';
comment on column MONITOR_DB_ORACLE_30.server_id
  is '������������Ϣ';
comment on column MONITOR_DB_ORACLE_30.create_date
  is '����ʱ��';
comment on column MONITOR_DB_ORACLE_30.trannums
  is '��ǰ������';
comment on column MONITOR_DB_ORACLE_30.max_trans
  is '���õ����������';
comment on column MONITOR_DB_ORACLE_30.tran_used_percent
  is '����ռ����';
comment on column MONITOR_DB_ORACLE_30.procnums
  is '��ǰ������';
comment on column MONITOR_DB_ORACLE_30.max_procs
  is '���õ���������';
comment on column MONITOR_DB_ORACLE_30.proc_used_percent
  is '����ռ����';
comment on column MONITOR_DB_ORACLE_30.ora_table_spasce
  is 'oracle��ռ�';
comment on column MONITOR_DB_ORACLE_30.ora_user_id
  is 'oracle�û���';
comment on column MONITOR_DB_ORACLE_30.ora_monitoring_type
  is '�������';
comment on column MONITOR_DB_ORACLE_30.db_id
  is '�������ݿ���Ϣ';
alter table MONITOR_DB_ORACLE_30
  add constraint PK_MONITOR_DB_ORACLE_30 primary key (GUID);

prompt
prompt Creating table MONITOR_DB_ORACLE_31
prompt ===================================
prompt
create table MONITOR_DB_ORACLE_31
(
  guid                VARCHAR2(50) default sys_guid() not null,
  server_id           VARCHAR2(250),
  file_id             VARCHAR2(50),
  tablespace_name     VARCHAR2(50),
  byte                VARCHAR2(50),
  used_byte           VARCHAR2(50),
  residual_space      VARCHAR2(50),
  residual_percent    VARCHAR2(50),
  create_date         DATE default SYSDATE not null,
  ora_table_spasce    VARCHAR2(50),
  ora_user_id         VARCHAR2(50),
  ora_monitoring_type VARCHAR2(50),
  db_id               VARCHAR2(50)
)
;
comment on table MONITOR_DB_ORACLE_31
  is '�鿴��ռ�ռ�ô������-ORACLE';
comment on column MONITOR_DB_ORACLE_31.server_id
  is '������������Ϣ';
comment on column MONITOR_DB_ORACLE_31.file_id
  is '�ļ�ID��';
comment on column MONITOR_DB_ORACLE_31.tablespace_name
  is '��ռ�����';
comment on column MONITOR_DB_ORACLE_31.byte
  is '�ֽ���';
comment on column MONITOR_DB_ORACLE_31.used_byte
  is '��ʹ��';
comment on column MONITOR_DB_ORACLE_31.residual_space
  is 'ʣ��ռ�';
comment on column MONITOR_DB_ORACLE_31.residual_percent
  is 'ʣ��ٷֱ�';
comment on column MONITOR_DB_ORACLE_31.create_date
  is '����ʱ��';
comment on column MONITOR_DB_ORACLE_31.ora_table_spasce
  is 'oracle��ռ�';
comment on column MONITOR_DB_ORACLE_31.ora_user_id
  is 'oracle�û���';
comment on column MONITOR_DB_ORACLE_31.ora_monitoring_type
  is '�������';
comment on column MONITOR_DB_ORACLE_31.db_id
  is '�������ݿ���Ϣ';
alter table MONITOR_DB_ORACLE_31
  add constraint PK_MONITOR_DB_ORACLE_31 primary key (GUID);

prompt
prompt Creating table MONITOR_DB_ORACLE_32
prompt ===================================
prompt
create table MONITOR_DB_ORACLE_32
(
  guid                VARCHAR2(50) default sys_guid() not null,
  server_id           VARCHAR2(250),
  create_date         DATE default SYSDATE not null,
  executions          VARCHAR2(50),
  sorts               VARCHAR2(50),
  command_type        VARCHAR2(50),
  disk_reads          VARCHAR2(50),
  sql_text            VARCHAR2(2500),
  ora_table_spasce    VARCHAR2(50),
  ora_user_id         VARCHAR2(50),
  ora_monitoring_type VARCHAR2(50),
  db_id               VARCHAR2(50)
)
;
comment on table MONITOR_DB_ORACLE_32
  is '��������SQL-ORACLE';
comment on column MONITOR_DB_ORACLE_32.server_id
  is '������������Ϣ';
comment on column MONITOR_DB_ORACLE_32.create_date
  is '����ʱ��';
comment on column MONITOR_DB_ORACLE_32.executions
  is 'ִ�д���';
comment on column MONITOR_DB_ORACLE_32.sorts
  is '�������';
comment on column MONITOR_DB_ORACLE_32.command_type
  is '��������';
comment on column MONITOR_DB_ORACLE_32.disk_reads
  is 'Ӳ�̶�����';
comment on column MONITOR_DB_ORACLE_32.sql_text
  is 'SQL���';
comment on column MONITOR_DB_ORACLE_32.ora_table_spasce
  is 'oracle��ռ�';
comment on column MONITOR_DB_ORACLE_32.ora_user_id
  is 'oracle�û���';
comment on column MONITOR_DB_ORACLE_32.ora_monitoring_type
  is '�������';
comment on column MONITOR_DB_ORACLE_32.db_id
  is '�������ݿ���Ϣ';
alter table MONITOR_DB_ORACLE_32
  add constraint PK_MONITOR_DB_ORACLE_32 primary key (GUID);

prompt
prompt Creating table MONITOR_DB_ORACLE_33
prompt ===================================
prompt
create table MONITOR_DB_ORACLE_33
(
  guid                VARCHAR2(50) default sys_guid() not null,
  server_id           VARCHAR2(250),
  create_date         DATE default SYSDATE not null,
  program_line        VARCHAR2(50),
  ora_table_spasce    VARCHAR2(50),
  ora_user_id         VARCHAR2(50),
  ora_monitoring_type VARCHAR2(50),
  db_id               VARCHAR2(50),
  program_id          VARCHAR2(50),
  sql_text            VARCHAR2(2500),
  sql_id              VARCHAR2(50),
  loads               VARCHAR2(50),
  first_load_time     VARCHAR2(50),
  rows_processed      VARCHAR2(50),
  command_type        VARCHAR2(50),
  optimizer_mode      VARCHAR2(50),
  action              VARCHAR2(50),
  cpu_time            VARCHAR2(50),
  elapsed_time        VARCHAR2(50)
)
;
comment on table MONITOR_DB_ORACLE_33
  is '��Ƶ��ִ�е�sql-ORACLE';
comment on column MONITOR_DB_ORACLE_33.server_id
  is '������������Ϣ';
comment on column MONITOR_DB_ORACLE_33.create_date
  is '����ʱ��';
comment on column MONITOR_DB_ORACLE_33.program_line
  is '��������';
comment on column MONITOR_DB_ORACLE_33.ora_table_spasce
  is 'oracle��ռ�';
comment on column MONITOR_DB_ORACLE_33.ora_user_id
  is 'oracle�û���';
comment on column MONITOR_DB_ORACLE_33.ora_monitoring_type
  is '�������';
comment on column MONITOR_DB_ORACLE_33.db_id
  is '�������ݿ���Ϣ';
comment on column MONITOR_DB_ORACLE_33.program_id
  is '����ID';
comment on column MONITOR_DB_ORACLE_33.sql_text
  is 'SQL�ı�';
comment on column MONITOR_DB_ORACLE_33.sql_id
  is 'SQL���ID';
comment on column MONITOR_DB_ORACLE_33.loads
  is '������';
comment on column MONITOR_DB_ORACLE_33.first_load_time
  is '��һ�μ���ʱ��';
comment on column MONITOR_DB_ORACLE_33.rows_processed
  is '�д���';
comment on column MONITOR_DB_ORACLE_33.command_type
  is '��������';
comment on column MONITOR_DB_ORACLE_33.optimizer_mode
  is '�Ż�ģʽ';
comment on column MONITOR_DB_ORACLE_33.cpu_time
  is 'CPUʱ��';
comment on column MONITOR_DB_ORACLE_33.elapsed_time
  is '����ʱ��';
alter table MONITOR_DB_ORACLE_33
  add constraint PK_MONITOR_DB_ORACLE_33 primary key (GUID);

prompt
prompt Creating table MPI_ANALYTICS
prompt ============================
prompt
create table MPI_ANALYTICS
(
  guid             VARCHAR2(50) default sys_guid() not null,
  server_data_type VARCHAR2(50),
  warning_info     VARCHAR2(4000),
  warning_type     VARCHAR2(50),
  warning_level    VARCHAR2(50) default 0,
  work_mark        VARCHAR2(50),
  create_date      DATE default sysdate,
  server_id        VARCHAR2(50),
  bat_no           VARCHAR2(50),
  server_region    VARCHAR2(50),
  control_info     VARCHAR2(100),
  control_value    VARCHAR2(50),
  warning_value    VARCHAR2(50),
  msg_type         VARCHAR2(50),
  cmd_type         VARCHAR2(50)
)
;
comment on table MPI_ANALYTICS
  is 'Ԥ������ҵ��';
comment on column MPI_ANALYTICS.server_data_type
  is '����:Y0000,Y0001��';
comment on column MPI_ANALYTICS.warning_info
  is 'Ԥ����Ϣ';
comment on column MPI_ANALYTICS.warning_type
  is 'Ԥ����ʽ';
comment on column MPI_ANALYTICS.warning_level
  is 'Ԥ���ȼ�';
comment on column MPI_ANALYTICS.work_mark
  is '�������:0δ����,1�Ѵ���(֪ͨ),2�Ѵ���(����)';
comment on column MPI_ANALYTICS.create_date
  is '����ʱ��';
comment on column MPI_ANALYTICS.server_id
  is '���������';
comment on column MPI_ANALYTICS.bat_no
  is '���κ�';
comment on column MPI_ANALYTICS.server_region
  is '��������������';
comment on column MPI_ANALYTICS.control_info
  is '�ܿ���Ϣ';
comment on column MPI_ANALYTICS.control_value
  is '��ǰֵ';
comment on column MPI_ANALYTICS.warning_value
  is 'Ԥ����ֵ';
comment on column MPI_ANALYTICS.msg_type
  is '����';
comment on column MPI_ANALYTICS.cmd_type
  is 'ϸ������';
create index INDEX_ANALYTICS_MAIN on MPI_ANALYTICS (SERVER_ID, SERVER_DATA_TYPE, WORK_MARK, CREATE_DATE);
alter table MPI_ANALYTICS
  add constraint PK_MPI_ANALYTICS primary key (GUID);

prompt
prompt Creating table MPI_ANALYTICS_DETAIL
prompt ===================================
prompt
create table MPI_ANALYTICS_DETAIL
(
  guid          VARCHAR2(50) default sys_guid() not null,
  server_id     VARCHAR2(50),
  anls_guid     VARCHAR2(50),
  msg_type      VARCHAR2(10),
  control_info  VARCHAR2(250),
  warning_type  VARCHAR2(50),
  warning_value VARCHAR2(50),
  create_date   DATE default sysdate
)
;
comment on table MPI_ANALYTICS_DETAIL
  is '������-�ӱ�-����';
comment on column MPI_ANALYTICS_DETAIL.anls_guid
  is '������GUID';
comment on column MPI_ANALYTICS_DETAIL.warning_type
  is 'Ԥ������:��ʱ,��ֵ,ֹͣ��';
comment on column MPI_ANALYTICS_DETAIL.warning_value
  is '����ֵ';
alter table MPI_ANALYTICS_DETAIL
  add constraint PK_MPI_ANALYTICS_DETAIL primary key (GUID);

prompt
prompt Creating table MPI_DATA_RECEIVE_CMD_DEATIL
prompt ==========================================
prompt
create table MPI_DATA_RECEIVE_CMD_DEATIL
(
  guid                  VARCHAR2(50) default sys_guid() not null,
  server_id             VARCHAR2(50),
  detail_ip             VARCHAR2(50),
  detail_data_key       VARCHAR2(50),
  detail_data           VARCHAR2(1000),
  detail_data_split_row VARCHAR2(50),
  detail_data_split_col VARCHAR2(50),
  edit_info             VARCHAR2(2000)
)
;
comment on table MPI_DATA_RECEIVE_CMD_DEATIL
  is '��Ϣ�ɼ�-ָ������';
comment on column MPI_DATA_RECEIVE_CMD_DEATIL.detail_ip
  is 'IP';
comment on column MPI_DATA_RECEIVE_CMD_DEATIL.detail_data_key
  is '�ɼ�ָ������';
comment on column MPI_DATA_RECEIVE_CMD_DEATIL.detail_data
  is 'ָ��';
comment on column MPI_DATA_RECEIVE_CMD_DEATIL.detail_data_split_row
  is '�зָ�';
comment on column MPI_DATA_RECEIVE_CMD_DEATIL.detail_data_split_col
  is '�зָ�';
comment on column MPI_DATA_RECEIVE_CMD_DEATIL.edit_info
  is '�༭��Ϣ';
alter table MPI_DATA_RECEIVE_CMD_DEATIL
  add constraint PK_MPI_DATA_RECEIVE_CMD_DEATIL primary key (GUID);

prompt
prompt Creating table MPI_DATA_RECEIVE_TIMER
prompt =====================================
prompt
create table MPI_DATA_RECEIVE_TIMER
(
  guid           VARCHAR2(50) default sys_GUID() not null,
  server_id      VARCHAR2(50),
  interval_type  VARCHAR2(50),
  data_type      VARCHAR2(50),
  work_mark      VARCHAR2(1),
  last_send_date DATE default sysdate,
  next_send_date DATE default sysdate,
  create_date    DATE default sysdate,
  server_id_temp VARCHAR2(50)
)
;
comment on table MPI_DATA_RECEIVE_TIMER
  is '��Ϣ�ɼ�����-����ʱ�����ñ�';
comment on column MPI_DATA_RECEIVE_TIMER.server_id
  is '���������';
comment on column MPI_DATA_RECEIVE_TIMER.interval_type
  is '�������';
comment on column MPI_DATA_RECEIVE_TIMER.data_type
  is 'ҵ������';
comment on column MPI_DATA_RECEIVE_TIMER.work_mark
  is '������־';
comment on column MPI_DATA_RECEIVE_TIMER.last_send_date
  is '���һ�η���ʱ��(Ĭ��Ϊ����ʱ��)';
comment on column MPI_DATA_RECEIVE_TIMER.next_send_date
  is '��һ��ʱ��(Ĭ��Ϊ����ʱ��)';
comment on column MPI_DATA_RECEIVE_TIMER.create_date
  is '����ʱ��(Ĭ��Ϊ����ʱ��)';
alter table MPI_DATA_RECEIVE_TIMER
  add constraint PK_MPI_DATA_RECEIVE_TIMER primary key (GUID);

prompt
prompt Creating table MPI_ORACLE_MONITOR
prompt =================================
prompt
create table MPI_ORACLE_MONITOR
(
  guid                 VARCHAR2(50) default sys_guid() not null,
  server_data_link     VARCHAR2(250),
  ora_tablespasce      VARCHAR2(50),
  ora_username         VARCHAR2(50),
  ora_monitoring_type  VARCHAR2(50),
  ora_used_space       NUMBER,
  ora_free_space       NUMBER,
  ora_session_number   NUMBER,
  ora_password_expiry  NUMBER,
  create_date          DATE default SYSDATE not null,
  ora_used_rate        NUMBER,
  ora_sum_space        NUMBER,
  ora_sum_blocks       NUMBER,
  parsing_schema_name  VARCHAR2(50),
  module               VARCHAR2(500),
  executions           VARCHAR2(500),
  sql_text             VARCHAR2(4000),
  elapsed_time         VARCHAR2(500),
  elapsedtime_per_exec VARCHAR2(500),
  cpu_time             VARCHAR2(500),
  cputime_per_exec     VARCHAR2(500),
  buffer_gets          VARCHAR2(500),
  gets_per_exec        VARCHAR2(500),
  disk_reads           VARCHAR2(500),
  reads_per_exec       VARCHAR2(500),
  name                 VARCHAR2(500),
  asm_ratio            NUMBER,
  server_id            VARCHAR2(50),
  bat_no               VARCHAR2(36),
  extend_varchar1      VARCHAR2(50),
  extend_varchar2      VARCHAR2(250),
  extend_number1       NUMBER,
  extend_date          DATE
)
;
comment on table MPI_ORACLE_MONITOR
  is '��Ϣ�ɼ���:ORACLE��ر�';
comment on column MPI_ORACLE_MONITOR.server_data_link
  is '������������Ϣ';
comment on column MPI_ORACLE_MONITOR.ora_tablespasce
  is 'oracle��ռ�';
comment on column MPI_ORACLE_MONITOR.ora_username
  is 'ORACLE�û���';
comment on column MPI_ORACLE_MONITOR.ora_monitoring_type
  is '�������';
comment on column MPI_ORACLE_MONITOR.ora_used_space
  is 'ʹ�ÿռ�(��λ:MB)';
comment on column MPI_ORACLE_MONITOR.ora_free_space
  is 'ʣ��ռ�(��λ:MB)';
comment on column MPI_ORACLE_MONITOR.ora_session_number
  is '��ǰ������';
comment on column MPI_ORACLE_MONITOR.ora_password_expiry
  is '���뵽��ʣ��ʱ��';
comment on column MPI_ORACLE_MONITOR.create_date
  is '��������';
comment on column MPI_ORACLE_MONITOR.ora_used_rate
  is 'ʹ�ñ���';
comment on column MPI_ORACLE_MONITOR.ora_sum_space
  is '�ܼƿռ�';
comment on column MPI_ORACLE_MONITOR.ora_sum_blocks
  is '�ܼ�����';
comment on column MPI_ORACLE_MONITOR.module
  is 'ģ��';
comment on column MPI_ORACLE_MONITOR.sql_text
  is 'sql���';
comment on column MPI_ORACLE_MONITOR.asm_ratio
  is 'ʹ�ÿռ����';
comment on column MPI_ORACLE_MONITOR.server_id
  is '���������';
comment on column MPI_ORACLE_MONITOR.bat_no
  is '���κ�';
comment on column MPI_ORACLE_MONITOR.extend_varchar1
  is 'varchar��չ�ֶ�';
comment on column MPI_ORACLE_MONITOR.extend_varchar2
  is 'varchar��չ�ֶ�';
comment on column MPI_ORACLE_MONITOR.extend_number1
  is 'number��չ�ֶ�';
comment on column MPI_ORACLE_MONITOR.extend_date
  is 'date��չ�ֶ�';
alter table MPI_ORACLE_MONITOR
  add constraint PK_MPI_ORACLE_MONITOR primary key (GUID);

prompt
prompt Creating table MPI_ORACLE_MONITOR_COST
prompt ======================================
prompt
create table MPI_ORACLE_MONITOR_COST
(
  guid                 VARCHAR2(50) default sys_guid() not null,
  server_data_link     VARCHAR2(250),
  ora_tablespasce      VARCHAR2(50),
  username             VARCHAR2(20),
  parsing_schema_name  VARCHAR2(20),
  module               VARCHAR2(500),
  executions           VARCHAR2(500),
  sql_text             VARCHAR2(2000),
  elapsed_time         VARCHAR2(500),
  elapsedtime_per_exec VARCHAR2(500),
  cpu_time             VARCHAR2(500),
  cputime_per_exec     VARCHAR2(500),
  buffer_gets          VARCHAR2(500),
  gets_per_exec        VARCHAR2(500),
  disk_reads           VARCHAR2(500),
  reads_per_exec       VARCHAR2(500),
  create_date          DATE default SYSDATE not null,
  server_id            VARCHAR2(50),
  bat_no               VARCHAR2(36),
  extend_varchar1      VARCHAR2(50),
  extend_varchar2      VARCHAR2(250),
  extend_number1       NUMBER,
  extend_date          DATE
)
;
comment on table MPI_ORACLE_MONITOR_COST
  is 'oracle���-sql���ִ�л���';
comment on column MPI_ORACLE_MONITOR_COST.server_data_link
  is '������������Ϣ';
comment on column MPI_ORACLE_MONITOR_COST.ora_tablespasce
  is 'oracle��ռ�';
comment on column MPI_ORACLE_MONITOR_COST.username
  is 'ORACLE�û���';
comment on column MPI_ORACLE_MONITOR_COST.module
  is 'ģ��';
comment on column MPI_ORACLE_MONITOR_COST.sql_text
  is 'sql���';
comment on column MPI_ORACLE_MONITOR_COST.create_date
  is '��������';
comment on column MPI_ORACLE_MONITOR_COST.server_id
  is '���������';
comment on column MPI_ORACLE_MONITOR_COST.bat_no
  is '���κ�';
comment on column MPI_ORACLE_MONITOR_COST.extend_varchar1
  is 'varchar��չ�ֶ�';
comment on column MPI_ORACLE_MONITOR_COST.extend_varchar2
  is 'varchar��չ�ֶ�';
comment on column MPI_ORACLE_MONITOR_COST.extend_number1
  is 'number��չ�ֶ�';
comment on column MPI_ORACLE_MONITOR_COST.extend_date
  is 'date��չ�ֶ�';
alter table MPI_ORACLE_MONITOR_COST
  add constraint PK_MPI_ORACLE_MONITOR_COST primary key (GUID);

prompt
prompt Creating table MPI_SERVER_CPU
prompt =============================
prompt
create table MPI_SERVER_CPU
(
  guid             VARCHAR2(36) default SYS_GUID() not null,
  server_data_link VARCHAR2(500),
  model_info       VARCHAR2(255),
  utilization      NUMBER(18,2),
  core_qty         NUMBER,
  logical_cpu      NUMBER,
  slot             NUMBER,
  create_date      DATE default sysdate not null,
  server_id        VARCHAR2(50),
  bat_no           VARCHAR2(36),
  extend_varchar1  VARCHAR2(50),
  extend_varchar2  VARCHAR2(250),
  extend_number1   NUMBER,
  extend_date      DATE
)
;
comment on table MPI_SERVER_CPU
  is '��Ϣ�ɼ�ҵ��---��������Ϣ-CPU��Ϣ';
comment on column MPI_SERVER_CPU.guid
  is '����';
comment on column MPI_SERVER_CPU.server_data_link
  is '��������·';
comment on column MPI_SERVER_CPU.model_info
  is '�ͺ�';
comment on column MPI_SERVER_CPU.utilization
  is '������';
comment on column MPI_SERVER_CPU.core_qty
  is '�ں�';
comment on column MPI_SERVER_CPU.logical_cpu
  is '�߼�������';
comment on column MPI_SERVER_CPU.slot
  is '���';
comment on column MPI_SERVER_CPU.create_date
  is '��������';
comment on column MPI_SERVER_CPU.server_id
  is '���������';
comment on column MPI_SERVER_CPU.bat_no
  is '���κ�';
comment on column MPI_SERVER_CPU.extend_varchar1
  is 'varchar��չ�ֶ�';
comment on column MPI_SERVER_CPU.extend_varchar2
  is 'varchar��չ�ֶ�';
comment on column MPI_SERVER_CPU.extend_number1
  is 'number��չ�ֶ�';
comment on column MPI_SERVER_CPU.extend_date
  is 'date��չ�ֶ�';
alter table MPI_SERVER_CPU
  add constraint PK_MPI_SERVER_CPU primary key (GUID);

prompt
prompt Creating table MPI_SERVER_DB_TABLE_ROWNUM
prompt =========================================
prompt
create table MPI_SERVER_DB_TABLE_ROWNUM
(
  guid                      VARCHAR2(50) default sys_guid() not null,
  server_id                 VARCHAR2(50) not null,
  cmd_id                    VARCHAR2(50),
  cmd_mid_id                VARCHAR2(50),
  db_connection_string      VARCHAR2(500),
  display_name              VARCHAR2(150) not null,
  table_name                VARCHAR2(150) not null,
  table_count_num           NUMBER not null,
  control_warning_count_num NUMBER default 1000 not null,
  table_condition           VARCHAR2(150),
  bat_no                    VARCHAR2(50),
  create_date               DATE not null,
  extend_varchar1           VARCHAR2(50),
  extend_varchar2           VARCHAR2(250),
  extend_number1            NUMBER,
  extend_date               DATE
)
;
comment on table MPI_SERVER_DB_TABLE_ROWNUM
  is '��Ϣ�ɼ�-���ݿ�-������';
comment on column MPI_SERVER_DB_TABLE_ROWNUM.server_id
  is '���������';
comment on column MPI_SERVER_DB_TABLE_ROWNUM.cmd_id
  is 'ָ����';
comment on column MPI_SERVER_DB_TABLE_ROWNUM.cmd_mid_id
  is '�м�ָ����';
comment on column MPI_SERVER_DB_TABLE_ROWNUM.db_connection_string
  is '�����ַ���';
comment on column MPI_SERVER_DB_TABLE_ROWNUM.display_name
  is 'չʾ��';
comment on column MPI_SERVER_DB_TABLE_ROWNUM.table_name
  is '����';
comment on column MPI_SERVER_DB_TABLE_ROWNUM.table_count_num
  is '������';
comment on column MPI_SERVER_DB_TABLE_ROWNUM.control_warning_count_num
  is 'Ԥ��ֵ:�ܿر��л�ȡ';
comment on column MPI_SERVER_DB_TABLE_ROWNUM.table_condition
  is '����';
comment on column MPI_SERVER_DB_TABLE_ROWNUM.bat_no
  is '���κ�';
comment on column MPI_SERVER_DB_TABLE_ROWNUM.create_date
  is '����ʱ��';
comment on column MPI_SERVER_DB_TABLE_ROWNUM.extend_varchar1
  is 'varchar��չ�ֶ�';
comment on column MPI_SERVER_DB_TABLE_ROWNUM.extend_varchar2
  is 'varchar��չ�ֶ�';
comment on column MPI_SERVER_DB_TABLE_ROWNUM.extend_number1
  is 'number��չ�ֶ�';
comment on column MPI_SERVER_DB_TABLE_ROWNUM.extend_date
  is 'date��չ�ֶ�';
alter table MPI_SERVER_DB_TABLE_ROWNUM
  add constraint PK_MPI_SERVER_DB_TABLEROWNUM primary key (GUID);

prompt
prompt Creating table MPI_SERVER_DISK
prompt ==============================
prompt
create table MPI_SERVER_DISK
(
  guid             VARCHAR2(36) default SYS_GUID() not null,
  server_data_link VARCHAR2(500),
  disk_size        NUMBER(18,2),
  fdisk_info       VARCHAR2(100),
  transfer_rate    NUMBER(18,2),
  read_speed       NUMBER(18,2),
  write_speed      NUMBER(18,2),
  create_date      DATE default sysdate not null,
  server_id        VARCHAR2(50),
  bat_no           VARCHAR2(36),
  extend_varchar1  VARCHAR2(50),
  extend_varchar2  VARCHAR2(250),
  extend_number1   NUMBER,
  extend_date      DATE
)
;
comment on table MPI_SERVER_DISK
  is '��Ϣ�ɼ�ҵ��-��������Ϣ-Ӳ����Ϣ';
comment on column MPI_SERVER_DISK.guid
  is '����';
comment on column MPI_SERVER_DISK.disk_size
  is 'Ӳ������';
comment on column MPI_SERVER_DISK.fdisk_info
  is 'Ӳ�̷�����Ϣ';
comment on column MPI_SERVER_DISK.transfer_rate
  is 'Ӳ�̴�������';
comment on column MPI_SERVER_DISK.read_speed
  is '��ȡ�ٶ�';
comment on column MPI_SERVER_DISK.write_speed
  is 'д���ٶ�';
comment on column MPI_SERVER_DISK.create_date
  is '��������';
comment on column MPI_SERVER_DISK.server_id
  is '���������';
comment on column MPI_SERVER_DISK.bat_no
  is '���κ�';
comment on column MPI_SERVER_DISK.extend_varchar1
  is 'varchar��չ�ֶ�';
comment on column MPI_SERVER_DISK.extend_varchar2
  is 'varchar��չ�ֶ�';
comment on column MPI_SERVER_DISK.extend_number1
  is 'number��չ�ֶ�';
comment on column MPI_SERVER_DISK.extend_date
  is 'date��չ�ֶ�';
alter table MPI_SERVER_DISK
  add constraint PK_MPI_SERVER_DISK primary key (GUID);

prompt
prompt Creating table MPI_SERVER_DISK_DETAIL
prompt =====================================
prompt
create table MPI_SERVER_DISK_DETAIL
(
  guid                  VARCHAR2(36) default SYS_GUID() not null,
  server_data_link      VARCHAR2(500),
  disk_name             VARCHAR2(10),
  disk_surplus          NUMBER(18,5),
  disk_used             NUMBER(18,5),
  file_system           VARCHAR2(10),
  create_date           DATE default SYSDATE not null,
  disk_total            NUMBER(18,5),
  server_id             VARCHAR2(36),
  bat_no                VARCHAR2(36),
  extend_varchar1       VARCHAR2(50),
  extend_varchar2       VARCHAR2(250),
  extend_number1        NUMBER,
  extend_date           DATE,
  disk_free_percent     NUMBER,
  control_warning_value NUMBER,
  disk_used_percent     NUMBER
)
;
comment on table MPI_SERVER_DISK_DETAIL
  is '��Ϣ�ɼ�ҵ��-��������Ϣ-���̻��ϸ��Ϣ';
comment on column MPI_SERVER_DISK_DETAIL.guid
  is '����';
comment on column MPI_SERVER_DISK_DETAIL.server_data_link
  is 'IP��';
comment on column MPI_SERVER_DISK_DETAIL.disk_name
  is '��ǰ��������';
comment on column MPI_SERVER_DISK_DETAIL.disk_surplus
  is '��ǰʣ������';
comment on column MPI_SERVER_DISK_DETAIL.disk_used
  is '��ǰ��������';
comment on column MPI_SERVER_DISK_DETAIL.file_system
  is '�ļ�ϵͳ����(NTFS��FAT32��)';
comment on column MPI_SERVER_DISK_DETAIL.create_date
  is '�������';
comment on column MPI_SERVER_DISK_DETAIL.disk_total
  is '�̷�������';
comment on column MPI_SERVER_DISK_DETAIL.server_id
  is '���������';
comment on column MPI_SERVER_DISK_DETAIL.bat_no
  is '���κ�';
comment on column MPI_SERVER_DISK_DETAIL.extend_varchar1
  is 'varchar��չ�ֶ�';
comment on column MPI_SERVER_DISK_DETAIL.extend_varchar2
  is 'varchar��չ�ֶ�';
comment on column MPI_SERVER_DISK_DETAIL.extend_number1
  is 'number��չ�ֶ�';
comment on column MPI_SERVER_DISK_DETAIL.extend_date
  is 'date��չ�ֶ�';
comment on column MPI_SERVER_DISK_DETAIL.disk_free_percent
  is '����ʣ��ռ����(��λ�ٷֱ�)';
comment on column MPI_SERVER_DISK_DETAIL.control_warning_value
  is 'Ԥ��ֵ';
comment on column MPI_SERVER_DISK_DETAIL.disk_used_percent
  is '����ʹ�ÿռ����(X*100%)';
create index INDEX_DISK_ID_NAME on MPI_SERVER_DISK_DETAIL (SERVER_ID, DISK_NAME);
create index IX_DISK_ID_TIME_DATNO on MPI_SERVER_DISK_DETAIL (SERVER_ID, CREATE_DATE, BAT_NO, DISK_NAME);
create index PK_MPI_SERVER_DISK_DETAIL1 on MPI_SERVER_DISK_DETAIL (SERVER_ID);
create index PK_MPI_SERVER_DISK_DETAIL2 on MPI_SERVER_DISK_DETAIL (TO_CHAR(CREATE_DATE,'yymmddhh24'));
alter table MPI_SERVER_DISK_DETAIL
  add constraint PK_MPI_SERVER_DISK_DETAIL primary key (GUID);

prompt
prompt Creating table MPI_SERVER_FOLDER
prompt ================================
prompt
create table MPI_SERVER_FOLDER
(
  guid                  VARCHAR2(50) default SYS_GUID() not null,
  server_data_link      VARCHAR2(500),
  server_guid           VARCHAR2(500),
  foldername            VARCHAR2(500),
  folderpath            VARCHAR2(500),
  foldersize            NUMBER,
  folderfilenumber      NUMBER,
  extend_varchar1       VARCHAR2(50),
  extend_varchar2       VARCHAR2(250),
  extend_number1        NUMBER,
  extend_date           DATE,
  create_date           DATE default sysdate,
  server_id             VARCHAR2(36),
  bat_no                VARCHAR2(36),
  control_warning_value NUMBER
)
;
comment on table MPI_SERVER_FOLDER
  is '��Ϣ�ɼ���-�ļ��м��';
comment on column MPI_SERVER_FOLDER.guid
  is '����';
comment on column MPI_SERVER_FOLDER.server_data_link
  is 'IP��';
comment on column MPI_SERVER_FOLDER.server_guid
  is '������GUID';
comment on column MPI_SERVER_FOLDER.foldername
  is '�ļ�����';
comment on column MPI_SERVER_FOLDER.folderpath
  is '�ļ���·��';
comment on column MPI_SERVER_FOLDER.foldersize
  is '�ļ��д�С';
comment on column MPI_SERVER_FOLDER.folderfilenumber
  is '�ļ������ļ�����';
comment on column MPI_SERVER_FOLDER.extend_varchar1
  is 'varchar��չ�ֶ�';
comment on column MPI_SERVER_FOLDER.extend_varchar2
  is 'varchar��չ�ֶ�';
comment on column MPI_SERVER_FOLDER.extend_number1
  is 'number��չ�ֶ�';
comment on column MPI_SERVER_FOLDER.extend_date
  is 'date��չ�ֶ�';
comment on column MPI_SERVER_FOLDER.create_date
  is '����ʱ��';
comment on column MPI_SERVER_FOLDER.server_id
  is '���������';
comment on column MPI_SERVER_FOLDER.bat_no
  is '���κ�';
comment on column MPI_SERVER_FOLDER.control_warning_value
  is 'Ԥ��ֵ';
alter table MPI_SERVER_FOLDER
  add constraint PK_MPI_SERVER_FOLDER primary key (GUID);

prompt
prompt Creating table MPI_SERVER_MEMORY
prompt ================================
prompt
create table MPI_SERVER_MEMORY
(
  guid                  VARCHAR2(36) default SYS_GUID() not null,
  server_data_link      VARCHAR2(500),
  memory_size           NUMBER(18,5),
  memory_used_size      NUMBER(18,5),
  memory__remaring_size NUMBER(18,5),
  qty                   NUMBER,
  hard_size             NUMBER(18,5),
  percentage            NUMBER(18,5),
  create_date           DATE default sysdate not null,
  server_id             VARCHAR2(50),
  bat_no                VARCHAR2(36),
  extend_varchar1       VARCHAR2(50),
  extend_varchar2       VARCHAR2(250),
  extend_number1        NUMBER,
  extend_date           DATE
)
;
comment on table MPI_SERVER_MEMORY
  is '��Ϣ�ɼ�ҵ��-��������Ϣ-�ڴ���Ϣ';
comment on column MPI_SERVER_MEMORY.guid
  is '����';
comment on column MPI_SERVER_MEMORY.memory_size
  is '�ڴ��С';
comment on column MPI_SERVER_MEMORY.memory_used_size
  is '�����ڴ�����';
comment on column MPI_SERVER_MEMORY.memory__remaring_size
  is '�����ڴ����';
comment on column MPI_SERVER_MEMORY.qty
  is '�ڴ�������';
comment on column MPI_SERVER_MEMORY.hard_size
  is 'ΪӲ�������ڴ�';
comment on column MPI_SERVER_MEMORY.percentage
  is '�ڴ�ʹ�ðٷֱ�';
comment on column MPI_SERVER_MEMORY.create_date
  is '��������';
comment on column MPI_SERVER_MEMORY.server_id
  is '���������';
comment on column MPI_SERVER_MEMORY.bat_no
  is '���κ�';
comment on column MPI_SERVER_MEMORY.extend_varchar1
  is 'varchar��չ�ֶ�';
comment on column MPI_SERVER_MEMORY.extend_varchar2
  is 'varchar��չ�ֶ�';
comment on column MPI_SERVER_MEMORY.extend_number1
  is 'number��չ�ֶ�';
comment on column MPI_SERVER_MEMORY.extend_date
  is 'date��չ�ֶ�';
alter table MPI_SERVER_MEMORY
  add constraint PK_MPI_SERVER_MEMORY primary key (GUID);

prompt
prompt Creating table MPI_SERVER_MSMQ
prompt ==============================
prompt
create table MPI_SERVER_MSMQ
(
  guid                  VARCHAR2(36) default SYS_GUID() not null,
  server_data_link      VARCHAR2(500),
  mq_name               VARCHAR2(255),
  mq_qty                NUMBER,
  is_active             VARCHAR2(2),
  create_date           DATE default SYSDATE not null,
  mq_remark             VARCHAR2(255),
  extend_varchar1       VARCHAR2(50),
  extend_varchar2       VARCHAR2(250),
  extend_number1        NUMBER,
  extend_date           DATE,
  server_id             VARCHAR2(36),
  bat_no                VARCHAR2(36),
  control_warning_value NUMBER
)
;
comment on table MPI_SERVER_MSMQ
  is '��Ϣ�ɼ�ҵ��-��������Ϣ-��Ϣ������Ϣ';
comment on column MPI_SERVER_MSMQ.guid
  is '����';
comment on column MPI_SERVER_MSMQ.mq_name
  is '��������';
comment on column MPI_SERVER_MSMQ.mq_qty
  is '��Ϣ����';
comment on column MPI_SERVER_MSMQ.is_active
  is '�Ƿ�';
comment on column MPI_SERVER_MSMQ.create_date
  is '��������';
comment on column MPI_SERVER_MSMQ.mq_remark
  is '��ע/����';
comment on column MPI_SERVER_MSMQ.extend_varchar1
  is 'varchar��չ�ֶ�';
comment on column MPI_SERVER_MSMQ.extend_varchar2
  is 'varchar��չ�ֶ�';
comment on column MPI_SERVER_MSMQ.extend_number1
  is 'number��չ�ֶ�';
comment on column MPI_SERVER_MSMQ.extend_date
  is 'date��չ�ֶ�';
comment on column MPI_SERVER_MSMQ.server_id
  is '���������';
comment on column MPI_SERVER_MSMQ.bat_no
  is '���κ�';
comment on column MPI_SERVER_MSMQ.control_warning_value
  is 'Ԥ��ֵ';
create index INDEX_MSMQ_ID_NAME on MPI_SERVER_MSMQ (SERVER_ID, MQ_NAME);
create index IX_MSMQ_ID_TIME on MPI_SERVER_MSMQ (SERVER_ID, CREATE_DATE, BAT_NO);
alter table MPI_SERVER_MSMQ
  add constraint MPI_SERVER_MSMQ primary key (GUID);

prompt
prompt Creating table MPI_SERVER_NETWORK
prompt =================================
prompt
create table MPI_SERVER_NETWORK
(
  guid             VARCHAR2(50) default SYS_GUID(),
  adapter_number   VARCHAR2(50),
  received_packets VARCHAR2(50),
  send_packets     VARCHAR2(50),
  recv_speed       VARCHAR2(50),
  send_speed       VARCHAR2(50),
  net_speed        VARCHAR2(50),
  create_date      DATE default SYSDATE,
  server_id        VARCHAR2(50),
  bat_no           VARCHAR2(50)
)
;
comment on column MPI_SERVER_NETWORK.adapter_number
  is '��������������';
comment on column MPI_SERVER_NETWORK.received_packets
  is '���յİ�����';
comment on column MPI_SERVER_NETWORK.send_packets
  is '���͵İ�����';
comment on column MPI_SERVER_NETWORK.recv_speed
  is '�����ٶ�';
comment on column MPI_SERVER_NETWORK.send_speed
  is '�����ٶ�';
comment on column MPI_SERVER_NETWORK.net_speed
  is '����';
comment on column MPI_SERVER_NETWORK.create_date
  is '��������';
comment on column MPI_SERVER_NETWORK.server_id
  is '������ID';
comment on column MPI_SERVER_NETWORK.bat_no
  is '���κ�';

prompt
prompt Creating table MPI_SERVER_SERVICES
prompt ==================================
prompt
create table MPI_SERVER_SERVICES
(
  guid                  VARCHAR2(36) default SYS_GUID() not null,
  server_data_link      VARCHAR2(500),
  services_name         VARCHAR2(255),
  services_id           NUMBER,
  services_remark       VARCHAR2(500),
  status                VARCHAR2(12),
  thread_nums           NUMBER,
  create_date           DATE default SYSDATE not null,
  server_id             VARCHAR2(36),
  bat_no                VARCHAR2(36),
  extend_varchar1       VARCHAR2(50),
  extend_varchar2       VARCHAR2(250),
  extend_number1        NUMBER,
  extend_date           DATE,
  control_warning_value VARCHAR2(10)
)
;

prompt
prompt Creating table MPI_WARNING_SENDER
prompt =================================
prompt
create table MPI_WARNING_SENDER
(
  guid                  VARCHAR2(50) default sys_GUID() not null,
  send_title            VARCHAR2(550),
  send_content          CLOB,
  send_rec_list         VARCHAR2(4000),
  send_mode             VARCHAR2(30),
  send_count            NUMBER default 0,
  work_mark             VARCHAR2(10) default 0,
  create_date           DATE default sysdate,
  last_work_date        DATE default sysdate,
  server_id             VARCHAR2(50),
  warning_type          VARCHAR2(50),
  warning_type_name     VARCHAR2(250),
  region_code           VARCHAR2(4),
  warning_server_count  NUMBER default 0 not null,
  warning_project_count NUMBER default 0 not null,
  warning_server_ip     VARCHAR2(4000)
)
;
comment on table MPI_WARNING_SENDER
  is 'Ԥ����Ϣ���Ͳ�����';
comment on column MPI_WARNING_SENDER.send_title
  is '����';
comment on column MPI_WARNING_SENDER.send_content
  is '����';
comment on column MPI_WARNING_SENDER.send_rec_list
  is '������';
comment on column MPI_WARNING_SENDER.send_mode
  is '���ͷ�ʽ';
comment on column MPI_WARNING_SENDER.send_count
  is '��������';
comment on column MPI_WARNING_SENDER.work_mark
  is '�������';
comment on column MPI_WARNING_SENDER.create_date
  is '����ʱ��';
comment on column MPI_WARNING_SENDER.last_work_date
  is '�����ʱ��';
comment on column MPI_WARNING_SENDER.server_id
  is '���������';
comment on column MPI_WARNING_SENDER.warning_type
  is 'Ԥ������';
comment on column MPI_WARNING_SENDER.warning_type_name
  is 'Ԥ����������';
comment on column MPI_WARNING_SENDER.region_code
  is '�������';
comment on column MPI_WARNING_SENDER.warning_server_count
  is 'Ԥ������������';
comment on column MPI_WARNING_SENDER.warning_project_count
  is 'Ԥ����Ŀ����';
comment on column MPI_WARNING_SENDER.warning_server_ip
  is '������IP�б�';
alter table MPI_WARNING_SENDER
  add constraint PK_MPI_WARNING_SENDER primary key (GUID);

prompt
prompt Creating table PARAM_BASE
prompt =========================
prompt
create table PARAM_BASE
(
  param_id     VARCHAR2(50) default sys_guid(),
  param_type   VARCHAR2(50) not null,
  param_code   VARCHAR2(50) not null,
  param_name   VARCHAR2(50),
  param_enable VARCHAR2(10) default 1,
  create_date  DATE default sysdate
)
;
comment on table PARAM_BASE
  is '������-��������';
comment on column PARAM_BASE.param_type
  is '����';
comment on column PARAM_BASE.param_code
  is '����';
comment on column PARAM_BASE.param_name
  is '����';
comment on column PARAM_BASE.param_enable
  is '����״̬';
alter table PARAM_BASE
  add constraint PK_PARAM_BASE primary key (PARAM_TYPE, PARAM_CODE);

prompt
prompt Creating table PARAM_OPER_SWITCH
prompt ================================
prompt
create table PARAM_OPER_SWITCH
(
  guid        VARCHAR2(50) default sys_guid() not null,
  oper_code   VARCHAR2(50) not null,
  oper_name   VARCHAR2(50) not null,
  oper_status VARCHAR2(50) not null,
  oper_switch VARCHAR2(50) not null,
  oper_group  VARCHAR2(50) not null,
  create_date DATE default sysdate,
  update_date DATE default sysdate
)
;
comment on table PARAM_OPER_SWITCH
  is '������-�������ػ���������';
comment on column PARAM_OPER_SWITCH.oper_code
  is '������:';
comment on column PARAM_OPER_SWITCH.oper_name
  is '������';
comment on column PARAM_OPER_SWITCH.oper_status
  is '����״̬';
comment on column PARAM_OPER_SWITCH.oper_switch
  is '����';
comment on column PARAM_OPER_SWITCH.oper_group
  is '��������';
alter table PARAM_OPER_SWITCH
  add constraint PK_PARAM_OPER_SWITCH primary key (GUID);

prompt
prompt Creating table PARAM_SWITCH
prompt ===========================
prompt
create table PARAM_SWITCH
(
  guid        VARCHAR2(50),
  sw_name     VARCHAR2(50),
  sw_status   VARCHAR2(50),
  create_date DATE
)
;
comment on table PARAM_SWITCH
  is '��������-����';

prompt
prompt Creating table PJT_CLASS_INFO
prompt =============================
prompt
create table PJT_CLASS_INFO
(
  pjt_class_id   VARCHAR2(50),
  pjt_class_code VARCHAR2(50),
  pjt_class_name VARCHAR2(50),
  pjt_class_desc VARCHAR2(50),
  enable         VARCHAR2(10),
  create_date    DATE
)
;
comment on table PJT_CLASS_INFO
  is '��Ŀ-������Ϣ(��άϵͳ,�羳3.0,�羳�˲��)';
comment on column PJT_CLASS_INFO.pjt_class_id
  is '��Ŀ������';
comment on column PJT_CLASS_INFO.pjt_class_code
  is '��Ŀ�������';
comment on column PJT_CLASS_INFO.pjt_class_name
  is '��Ŀ��������';
comment on column PJT_CLASS_INFO.pjt_class_desc
  is '��Ŀ��������';

prompt
prompt Creating table PJT_CONTACTS
prompt ===========================
prompt
create table PJT_CONTACTS
(
  guid        VARCHAR2(50) default sys_guid() not null,
  pjt_id      VARCHAR2(50),
  usr_id      VARCHAR2(50),
  pjt_role    VARCHAR2(50),
  rec_war_lv  VARCHAR2(10) default 1,
  enable      VARCHAR2(10) default 1,
  create_date DATE default sysdate
)
;
comment on table PJT_CONTACTS
  is '��Ŀ-��ϵ��';
comment on column PJT_CONTACTS.pjt_id
  is '��Ŀ���';
comment on column PJT_CONTACTS.usr_id
  is '�û����';
comment on column PJT_CONTACTS.pjt_role
  is '��Ŀ��ɫ';
comment on column PJT_CONTACTS.rec_war_lv
  is '����Ԥ���ȼ�';
comment on column PJT_CONTACTS.enable
  is '����״̬';
alter table PJT_CONTACTS
  add constraint PK_PJT_CONTACTS primary key (GUID);

prompt
prompt Creating table PJT_DEPLOYMENT_LIST
prompt ==================================
prompt
create table PJT_DEPLOYMENT_LIST
(
  pdl_id      VARCHAR2(50) default sys_guid() not null,
  pjt_id      VARCHAR2(50),
  svr_id      VARCHAR2(50),
  ctrl_id     VARCHAR2(50),
  ctrl_type   VARCHAR2(50),
  ctrl_value  VARCHAR2(150),
  enable      VARCHAR2(10) default 1,
  war_lv      VARCHAR2(10) default 1,
  create_date DATE default sysdate
)
;
comment on table PJT_DEPLOYMENT_LIST
  is '��Ŀ-�����嵥';
comment on column PJT_DEPLOYMENT_LIST.pdl_id
  is '�����嵥��ϵ���';
comment on column PJT_DEPLOYMENT_LIST.pjt_id
  is '��Ŀ���';
comment on column PJT_DEPLOYMENT_LIST.svr_id
  is '���������';
comment on column PJT_DEPLOYMENT_LIST.ctrl_id
  is '�ܿ�ֵ���';
comment on column PJT_DEPLOYMENT_LIST.ctrl_type
  is '�ܿط���';
comment on column PJT_DEPLOYMENT_LIST.ctrl_value
  is '�ܿ�ֵ';
comment on column PJT_DEPLOYMENT_LIST.enable
  is '״̬';
comment on column PJT_DEPLOYMENT_LIST.war_lv
  is 'Ԥ���ȼ�(����0-��Ԥ��)';
alter table PJT_DEPLOYMENT_LIST
  add constraint PK_PJT_DEPLOYMENT_LIST primary key (PDL_ID);

prompt
prompt Creating table PJT_INFO
prompt =======================
prompt
create table PJT_INFO
(
  pjt_id       VARCHAR2(50) not null,
  pjt_name     VARCHAR2(150),
  pjt_class_id VARCHAR2(50),
  rgn_id       VARCHAR2(50),
  pjt_desc     VARCHAR2(150)
)
;
comment on table PJT_INFO
  is 'ҵ���-��Ŀ��Ϣ';
comment on column PJT_INFO.pjt_name
  is '��Ŀ����';
comment on column PJT_INFO.pjt_class_id
  is '��Ŀ������';
comment on column PJT_INFO.rgn_id
  is '�������';
comment on column PJT_INFO.pjt_desc
  is '����';
alter table PJT_INFO
  add constraint PK_PJT_INFO primary key (PJT_ID);

prompt
prompt Creating table PJT_TIME_NODES
prompt =============================
prompt
create table PJT_TIME_NODES
(
  tn_id       VARCHAR2(50),
  pjt_id      VARCHAR2(50) not null,
  tn_code     VARCHAR2(10) not null,
  tn_value    DATE,
  create_date DATE default sysdate,
  update_date DATE default sysdate,
  enable      VARCHAR2(10) default 1
)
;
comment on table PJT_TIME_NODES
  is '��Ŀ-ʱ��ڵ�';
comment on column PJT_TIME_NODES.pjt_id
  is '��Ŀ���';
comment on column PJT_TIME_NODES.tn_code
  is 'ʱ��ڵ����';
comment on column PJT_TIME_NODES.tn_value
  is 'ʱ��ڵ�ֵ';
comment on column PJT_TIME_NODES.update_date
  is '����ʱ��';
alter table PJT_TIME_NODES
  add constraint PK_PJT_TIME_NODES primary key (PJT_ID, TN_CODE);

prompt
prompt Creating table QRTZ_JOB_DETAILS
prompt ===============================
prompt
create table QRTZ_JOB_DETAILS
(
  sched_name        VARCHAR2(120) not null,
  job_name          VARCHAR2(200) not null,
  job_group         VARCHAR2(200) not null,
  description       VARCHAR2(250),
  job_class_name    VARCHAR2(250) not null,
  is_durable        VARCHAR2(1) not null,
  is_nonconcurrent  VARCHAR2(1) not null,
  is_update_data    VARCHAR2(1) not null,
  requests_recovery VARCHAR2(1) not null,
  job_data          BLOB
)
;
create index IDX_QRTZ_J_GRP on QRTZ_JOB_DETAILS (SCHED_NAME, JOB_GROUP);
create index IDX_QRTZ_J_REQ_RECOVERY on QRTZ_JOB_DETAILS (SCHED_NAME, REQUESTS_RECOVERY);
alter table QRTZ_JOB_DETAILS
  add constraint QRTZ_JOB_DETAILS_PK primary key (SCHED_NAME, JOB_NAME, JOB_GROUP);

prompt
prompt Creating table QRTZ_TRIGGERS
prompt ============================
prompt
create table QRTZ_TRIGGERS
(
  sched_name     VARCHAR2(120) not null,
  trigger_name   VARCHAR2(200) not null,
  trigger_group  VARCHAR2(200) not null,
  job_name       VARCHAR2(200) not null,
  job_group      VARCHAR2(200) not null,
  description    VARCHAR2(250),
  next_fire_time NUMBER(19),
  prev_fire_time NUMBER(19),
  priority       NUMBER(13),
  trigger_state  VARCHAR2(16) not null,
  trigger_type   VARCHAR2(8) not null,
  start_time     NUMBER(19) not null,
  end_time       NUMBER(19),
  calendar_name  VARCHAR2(200),
  misfire_instr  NUMBER(2),
  job_data       BLOB
)
;
create index IDX_QRTZ_T_C on QRTZ_TRIGGERS (SCHED_NAME, CALENDAR_NAME);
create index IDX_QRTZ_T_G on QRTZ_TRIGGERS (SCHED_NAME, TRIGGER_GROUP);
create index IDX_QRTZ_T_J on QRTZ_TRIGGERS (SCHED_NAME, JOB_NAME, JOB_GROUP);
create index IDX_QRTZ_T_JG on QRTZ_TRIGGERS (SCHED_NAME, JOB_GROUP);
create index IDX_QRTZ_T_NEXT_FIRE_TIME on QRTZ_TRIGGERS (SCHED_NAME, NEXT_FIRE_TIME);
create index IDX_QRTZ_T_NFT_MISFIRE on QRTZ_TRIGGERS (SCHED_NAME, MISFIRE_INSTR, NEXT_FIRE_TIME);
create index IDX_QRTZ_T_NFT_ST on QRTZ_TRIGGERS (SCHED_NAME, TRIGGER_STATE, NEXT_FIRE_TIME);
create index IDX_QRTZ_T_NFT_ST_MISFIRE on QRTZ_TRIGGERS (SCHED_NAME, MISFIRE_INSTR, NEXT_FIRE_TIME, TRIGGER_STATE);
create index IDX_QRTZ_T_NFT_ST_MISFIRE_GRP on QRTZ_TRIGGERS (SCHED_NAME, MISFIRE_INSTR, NEXT_FIRE_TIME, TRIGGER_GROUP, TRIGGER_STATE);
create index IDX_QRTZ_T_N_G_STATE on QRTZ_TRIGGERS (SCHED_NAME, TRIGGER_GROUP, TRIGGER_STATE);
create index IDX_QRTZ_T_N_STATE on QRTZ_TRIGGERS (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP, TRIGGER_STATE);
create index IDX_QRTZ_T_STATE on QRTZ_TRIGGERS (SCHED_NAME, TRIGGER_STATE);
alter table QRTZ_TRIGGERS
  add constraint QRTZ_TRIGGERS_PK primary key (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP);
alter table QRTZ_TRIGGERS
  add constraint QRTZ_TRIGGER_TO_JOBS_FK foreign key (SCHED_NAME, JOB_NAME, JOB_GROUP)
  references QRTZ_JOB_DETAILS (SCHED_NAME, JOB_NAME, JOB_GROUP);

prompt
prompt Creating table QRTZ_BLOB_TRIGGERS
prompt =================================
prompt
create table QRTZ_BLOB_TRIGGERS
(
  sched_name    VARCHAR2(120) not null,
  trigger_name  VARCHAR2(200) not null,
  trigger_group VARCHAR2(200) not null,
  blob_data     BLOB
)
;
alter table QRTZ_BLOB_TRIGGERS
  add constraint QRTZ_BLOB_TRIG_PK primary key (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP);
alter table QRTZ_BLOB_TRIGGERS
  add constraint QRTZ_BLOB_TRIG_TO_TRIG_FK foreign key (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP)
  references QRTZ_TRIGGERS (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP);

prompt
prompt Creating table QRTZ_CALENDARS
prompt =============================
prompt
create table QRTZ_CALENDARS
(
  sched_name    VARCHAR2(120) not null,
  calendar_name VARCHAR2(200) not null,
  calendar      BLOB not null
)
;
alter table QRTZ_CALENDARS
  add constraint QRTZ_CALENDARS_PK primary key (SCHED_NAME, CALENDAR_NAME);

prompt
prompt Creating table QRTZ_CRON_TRIGGERS
prompt =================================
prompt
create table QRTZ_CRON_TRIGGERS
(
  sched_name      VARCHAR2(120) not null,
  trigger_name    VARCHAR2(200) not null,
  trigger_group   VARCHAR2(200) not null,
  cron_expression VARCHAR2(120) not null,
  time_zone_id    VARCHAR2(80)
)
;
alter table QRTZ_CRON_TRIGGERS
  add constraint QRTZ_CRON_TRIG_PK primary key (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP);
alter table QRTZ_CRON_TRIGGERS
  add constraint QRTZ_CRON_TRIG_TO_TRIG_FK foreign key (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP)
  references QRTZ_TRIGGERS (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP);

prompt
prompt Creating table QRTZ_FIRED_TRIGGERS
prompt ==================================
prompt
create table QRTZ_FIRED_TRIGGERS
(
  sched_name        VARCHAR2(120) not null,
  entry_id          VARCHAR2(140) not null,
  trigger_name      VARCHAR2(200) not null,
  trigger_group     VARCHAR2(200) not null,
  instance_name     VARCHAR2(200) not null,
  fired_time        NUMBER(19) not null,
  sched_time        NUMBER(19) not null,
  priority          NUMBER(13) not null,
  state             VARCHAR2(16) not null,
  job_name          VARCHAR2(200),
  job_group         VARCHAR2(200),
  is_nonconcurrent  VARCHAR2(1),
  requests_recovery VARCHAR2(1)
)
;
create index IDX_QRTZ_FT_INST_JOB_REQ_RCVRY on QRTZ_FIRED_TRIGGERS (SCHED_NAME, INSTANCE_NAME, REQUESTS_RECOVERY);
create index IDX_QRTZ_FT_JG on QRTZ_FIRED_TRIGGERS (SCHED_NAME, JOB_GROUP);
create index IDX_QRTZ_FT_J_G on QRTZ_FIRED_TRIGGERS (SCHED_NAME, JOB_NAME, JOB_GROUP);
create index IDX_QRTZ_FT_TG on QRTZ_FIRED_TRIGGERS (SCHED_NAME, TRIGGER_GROUP);
create index IDX_QRTZ_FT_TRIG_INST_NAME on QRTZ_FIRED_TRIGGERS (SCHED_NAME, INSTANCE_NAME);
create index IDX_QRTZ_FT_T_G on QRTZ_FIRED_TRIGGERS (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP);
alter table QRTZ_FIRED_TRIGGERS
  add constraint QRTZ_FIRED_TRIGGER_PK primary key (SCHED_NAME, ENTRY_ID);

prompt
prompt Creating table QRTZ_LOCKS
prompt =========================
prompt
create table QRTZ_LOCKS
(
  sched_name VARCHAR2(120) not null,
  lock_name  VARCHAR2(40) not null
)
;
alter table QRTZ_LOCKS
  add constraint QRTZ_LOCKS_PK primary key (SCHED_NAME, LOCK_NAME);

prompt
prompt Creating table QRTZ_PAUSED_TRIGGER_GRPS
prompt =======================================
prompt
create table QRTZ_PAUSED_TRIGGER_GRPS
(
  sched_name    VARCHAR2(120) not null,
  trigger_group VARCHAR2(200) not null
)
;
alter table QRTZ_PAUSED_TRIGGER_GRPS
  add constraint QRTZ_PAUSED_TRIG_GRPS_PK primary key (SCHED_NAME, TRIGGER_GROUP);

prompt
prompt Creating table QRTZ_SCHEDULER_STATE
prompt ===================================
prompt
create table QRTZ_SCHEDULER_STATE
(
  sched_name        VARCHAR2(120) not null,
  instance_name     VARCHAR2(200) not null,
  last_checkin_time NUMBER(19) not null,
  checkin_interval  NUMBER(13) not null
)
;
alter table QRTZ_SCHEDULER_STATE
  add constraint QRTZ_SCHEDULER_STATE_PK primary key (SCHED_NAME, INSTANCE_NAME);

prompt
prompt Creating table QRTZ_SIMPLE_TRIGGERS
prompt ===================================
prompt
create table QRTZ_SIMPLE_TRIGGERS
(
  sched_name      VARCHAR2(120) not null,
  trigger_name    VARCHAR2(200) not null,
  trigger_group   VARCHAR2(200) not null,
  repeat_count    NUMBER(7) not null,
  repeat_interval NUMBER(12) not null,
  times_triggered NUMBER(10) not null
)
;
alter table QRTZ_SIMPLE_TRIGGERS
  add constraint QRTZ_SIMPLE_TRIG_PK primary key (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP);
alter table QRTZ_SIMPLE_TRIGGERS
  add constraint QRTZ_SIMPLE_TRIG_TO_TRIG_FK foreign key (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP)
  references QRTZ_TRIGGERS (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP);

prompt
prompt Creating table QRTZ_SIMPROP_TRIGGERS
prompt ====================================
prompt
create table QRTZ_SIMPROP_TRIGGERS
(
  sched_name    VARCHAR2(120) not null,
  trigger_name  VARCHAR2(200) not null,
  trigger_group VARCHAR2(200) not null,
  str_prop_1    VARCHAR2(512),
  str_prop_2    VARCHAR2(512),
  str_prop_3    VARCHAR2(512),
  int_prop_1    NUMBER(10),
  int_prop_2    NUMBER(10),
  long_prop_1   NUMBER(19),
  long_prop_2   NUMBER(19),
  dec_prop_1    NUMBER(13,4),
  dec_prop_2    NUMBER(13,4),
  bool_prop_1   VARCHAR2(1),
  bool_prop_2   VARCHAR2(1),
  time_zone_id  VARCHAR2(80)
)
;
alter table QRTZ_SIMPROP_TRIGGERS
  add constraint QRTZ_SIMPROP_TRIG_PK primary key (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP);
alter table QRTZ_SIMPROP_TRIGGERS
  add constraint QRTZ_SIMPROP_TRIG_TO_TRIG_FK foreign key (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP)
  references QRTZ_TRIGGERS (SCHED_NAME, TRIGGER_NAME, TRIGGER_GROUP);

prompt
prompt Creating table REGION_GROUP_INFO
prompt ================================
prompt
create table REGION_GROUP_INFO
(
  gop_id      VARCHAR2(50) not null,
  gop_code    VARCHAR2(50),
  gop_name    VARCHAR2(50),
  gop_desc    VARCHAR2(50),
  enable      VARCHAR2(10),
  select_show VARCHAR2(10),
  create_date DATE default sysdate
)
;
comment on table REGION_GROUP_INFO
  is '����-���(����)��Ϣ';
comment on column REGION_GROUP_INFO.gop_id
  is '������';
comment on column REGION_GROUP_INFO.gop_code
  is '�������';
comment on column REGION_GROUP_INFO.gop_name
  is '��������';
comment on column REGION_GROUP_INFO.gop_desc
  is '��������';
comment on column REGION_GROUP_INFO.enable
  is '����״̬';
comment on column REGION_GROUP_INFO.select_show
  is '�Ƿ���������˵���չʾ';
alter table REGION_GROUP_INFO
  add constraint PK_REGION_GROUP_INFO primary key (GOP_ID);

prompt
prompt Creating table REGION_INFO
prompt ==========================
prompt
create table REGION_INFO
(
  rgn_id      VARCHAR2(50) not null,
  rgn_name    VARCHAR2(50),
  rgn_desc    VARCHAR2(50),
  enable      VARCHAR2(10),
  create_date DATE default sysdate,
  rgn_code    VARCHAR2(50),
  select_show VARCHAR2(10)
)
;
comment on table REGION_INFO
  is '������Ϣ';
comment on column REGION_INFO.rgn_id
  is '������';
comment on column REGION_INFO.rgn_name
  is '������';
comment on column REGION_INFO.rgn_desc
  is '����';
comment on column REGION_INFO.enable
  is '����״̬';
comment on column REGION_INFO.rgn_code
  is '�������';
comment on column REGION_INFO.select_show
  is '�Ƿ���������˵���չʾ';
alter table REGION_INFO
  add constraint PK_REGION_INFO primary key (RGN_ID);

prompt
prompt Creating table RELATION_PROJECT_PERSON
prompt ======================================
prompt
create table RELATION_PROJECT_PERSON
(
  guid         VARCHAR2(50) default SYS_GUID(),
  project_code VARCHAR2(50),
  person_id    VARCHAR2(50)
)
;

prompt
prompt Creating table RELATION_REGION_PERSON
prompt =====================================
prompt
create table RELATION_REGION_PERSON
(
  guid      NVARCHAR2(50) not null,
  oper_id   NVARCHAR2(50),
  region_id NVARCHAR2(50)
)
;
comment on table RELATION_REGION_PERSON
  is '�ձ����Ҵ�������������';
alter table RELATION_REGION_PERSON
  add constraint PK_OPER_REGION primary key (GUID);

prompt
prompt Creating table RELATION_ROLE_PERSON
prompt ===================================
prompt
create table RELATION_ROLE_PERSON
(
  guid      VARCHAR2(50) default sys_guid() not null,
  role_id   VARCHAR2(50) not null,
  person_id VARCHAR2(50) not null,
  app_id    VARCHAR2(50)
)
;
comment on table RELATION_ROLE_PERSON
  is '��ϵ-��ɫ��Ӧ��Ա';
comment on column RELATION_ROLE_PERSON.role_id
  is '��ɫ���';
comment on column RELATION_ROLE_PERSON.person_id
  is '��Ա���';
alter table RELATION_ROLE_PERSON
  add constraint PK_RELATION_ROLE_PERSON primary key (GUID);

prompt
prompt Creating table RELATION_ROLE_PROJECT
prompt ====================================
prompt
create table RELATION_ROLE_PROJECT
(
  guid            VARCHAR2(50) default sys_guid() not null,
  role_id         VARCHAR2(50) not null,
  region_code     VARCHAR2(50) not null,
  project_id      VARCHAR2(50) not null,
  extend_varchar1 VARCHAR2(50),
  extend_varchar2 VARCHAR2(250),
  extend_number1  NUMBER,
  extend_date     DATE,
  role_type       VARCHAR2(4) default 1,
  role_name       VARCHAR2(50),
  project_name    VARCHAR2(50)
)
;
comment on table RELATION_ROLE_PROJECT
  is '��ϵ-��ɫ��Ӧ��Ŀ';
comment on column RELATION_ROLE_PROJECT.role_id
  is '��ɫ���';
comment on column RELATION_ROLE_PROJECT.region_code
  is '�������';
comment on column RELATION_ROLE_PROJECT.project_id
  is '��Ŀ���';
comment on column RELATION_ROLE_PROJECT.extend_varchar1
  is 'varchar��չ�ֶ�';
comment on column RELATION_ROLE_PROJECT.extend_varchar2
  is 'varchar��չ�ֶ�';
comment on column RELATION_ROLE_PROJECT.extend_number1
  is 'number��չ�ֶ�';
comment on column RELATION_ROLE_PROJECT.extend_date
  is 'date��չ�ֶ�';
comment on column RELATION_ROLE_PROJECT.role_type
  is '��ɫ����:0-����ѯ;1-��ѯ,Ԥ������;';
comment on column RELATION_ROLE_PROJECT.role_name
  is '��ɫ��';
comment on column RELATION_ROLE_PROJECT.project_name
  is '��Ŀ��';
alter table RELATION_ROLE_PROJECT
  add constraint PK_RELATION_ROLE_PROJECT primary key (GUID);

prompt
prompt Creating table RELATION_SERVER_PROJECT
prompt ======================================
prompt
create table RELATION_SERVER_PROJECT
(
  guid               VARCHAR2(50) default sys_guid() not null,
  server_id          VARCHAR2(50) not null,
  project_id         VARCHAR2(50) not null,
  role_type          VARCHAR2(10),
  extend_varchar1    VARCHAR2(50),
  extend_varchar2    VARCHAR2(250),
  extend_number1     NUMBER,
  extend_date        DATE,
  project_name       VARCHAR2(50),
  server_region      VARCHAR2(50),
  server_region_name VARCHAR2(50)
)
;
comment on table RELATION_SERVER_PROJECT
  is '��ϵ��-������������Ŀ';
comment on column RELATION_SERVER_PROJECT.server_id
  is '���������';
comment on column RELATION_SERVER_PROJECT.project_id
  is '��Ŀ���';
comment on column RELATION_SERVER_PROJECT.role_type
  is '��ɫ����(DBA,MGR)';
comment on column RELATION_SERVER_PROJECT.extend_varchar1
  is '������GUID';
comment on column RELATION_SERVER_PROJECT.extend_varchar2
  is 'varchar��չ�ֶ�';
comment on column RELATION_SERVER_PROJECT.extend_number1
  is 'number��չ�ֶ�';
comment on column RELATION_SERVER_PROJECT.extend_date
  is 'date��չ�ֶ�';
comment on column RELATION_SERVER_PROJECT.project_name
  is '��Ŀ��';
comment on column RELATION_SERVER_PROJECT.server_region
  is '�������';
comment on column RELATION_SERVER_PROJECT.server_region_name
  is '��������';
alter table RELATION_SERVER_PROJECT
  add constraint PK_RELATION_SERVER_PROJECT primary key (GUID);

prompt
prompt Creating table RELATION_SYSTEM_SERVER
prompt =====================================
prompt
create table RELATION_SYSTEM_SERVER
(
  guid      VARCHAR2(50) default SYS_GUID(),
  server_id VARCHAR2(50),
  system_id VARCHAR2(50)
)
;
comment on column RELATION_SYSTEM_SERVER.server_id
  is '������ID';
comment on column RELATION_SYSTEM_SERVER.system_id
  is 'ϵͳID';

prompt
prompt Creating table REMOTE_CMD_LOG
prompt =============================
prompt
create table REMOTE_CMD_LOG
(
  guid      VARCHAR2(50),
  server_id VARCHAR2(50),
  oper_id   VARCHAR2(50),
  app_code  VARCHAR2(50),
  message   VARCHAR2(500)
)
;
comment on column REMOTE_CMD_LOG.server_id
  is '������ID';
comment on column REMOTE_CMD_LOG.oper_id
  is '�û�ID';
comment on column REMOTE_CMD_LOG.app_code
  is 'Ӧ��ϵͳID';
comment on column REMOTE_CMD_LOG.message
  is '��Ϣ';

prompt
prompt Creating table REMOTE_CMD_STORE
prompt ===============================
prompt
create table REMOTE_CMD_STORE
(
  guid        VARCHAR2(50) default sys_guid() not null,
  server_id   VARCHAR2(50) not null,
  desp        VARCHAR2(200),
  content     VARCHAR2(1000) not null,
  name        VARCHAR2(100) not null,
  type        VARCHAR2(10) not null,
  action      VARCHAR2(10) not null,
  create_date DATE default sysdate not null
)
;
comment on table REMOTE_CMD_STORE
  is 'Զ��ִ��-����ָ��';
comment on column REMOTE_CMD_STORE.server_id
  is '���������';
comment on column REMOTE_CMD_STORE.desp
  is 'ָ������';
comment on column REMOTE_CMD_STORE.content
  is 'ָ������';
comment on column REMOTE_CMD_STORE.name
  is 'ָ������:PC;DB��';
comment on column REMOTE_CMD_STORE.type
  is 'ҵ������:file;network��';
comment on column REMOTE_CMD_STORE.action
  is '״̬';
alter table REMOTE_CMD_STORE
  add constraint PK_REMOTE_CMD_STORE primary key (GUID);

prompt
prompt Creating table REMOTE_DIRECT_SEND
prompt =================================
prompt
create table REMOTE_DIRECT_SEND
(
  server_id  VARCHAR2(50),
  send_value VARCHAR2(500),
  create_dt  DATE,
  status     VARCHAR2(4),
  msg_type   VARCHAR2(50)
)
;

prompt
prompt Creating table REMOTE_WHITE_LIST
prompt ================================
prompt
create table REMOTE_WHITE_LIST
(
  guid          VARCHAR2(50) default sys_guid() not null,
  server_id     VARCHAR2(50),
  remote_type   VARCHAR2(50),
  business_type VARCHAR2(50),
  job_type      VARCHAR2(50),
  enable        VARCHAR2(10) default 1,
  keywords      VARCHAR2(50),
  keywords2     VARCHAR2(50),
  create_date   DATE default sysdate,
  check_type    VARCHAR2(50),
  list_type     VARCHAR2(10),
  user_id       VARCHAR2(50)
)
;
comment on table REMOTE_WHITE_LIST
  is 'Զ��ִ�� ������';
comment on column REMOTE_WHITE_LIST.enable
  is '����״̬';
comment on column REMOTE_WHITE_LIST.keywords
  is '�ؼ���';
comment on column REMOTE_WHITE_LIST.check_type
  is 'У�鷽ʽ';
comment on column REMOTE_WHITE_LIST.list_type
  is '������;������:B;W';
comment on column REMOTE_WHITE_LIST.user_id
  is '�û����';
alter table REMOTE_WHITE_LIST
  add constraint PK_REMOTE_WHITE_LIST primary key (GUID);

prompt
prompt Creating table REPORT_DAILY_REGION
prompt ==================================
prompt
create table REPORT_DAILY_REGION
(
  guid                  VARCHAR2(50) default sys_guid() not null,
  region_code           VARCHAR2(4),
  region_name           VARCHAR2(20),
  porject_code          VARCHAR2(50),
  project_name          VARCHAR2(50),
  count_server          NUMBER,
  count_timeout         NUMBER,
  count_threshold       NUMBER,
  count_service_stopped NUMBER,
  count_dba_oracle      NUMBER,
  time_mean             NUMBER,
  time_max              NUMBER,
  time_min              NUMBER,
  report_date           VARCHAR2(20),
  create_date           DATE default sysdate,
  count_email           NUMBER,
  count_email_user      NUMBER default 0,
  count_wechat          NUMBER,
  count_wechat_user     NUMBER default 0
)
;
comment on table REPORT_DAILY_REGION
  is 'ÿ�ձ���-������Ϣ';
comment on column REPORT_DAILY_REGION.region_code
  is '�������';
comment on column REPORT_DAILY_REGION.porject_code
  is '11��Ŀ����';
comment on column REPORT_DAILY_REGION.project_name
  is '11';
comment on column REPORT_DAILY_REGION.count_server
  is '����-�쳣������';
comment on column REPORT_DAILY_REGION.count_timeout
  is '����-��ʱ';
comment on column REPORT_DAILY_REGION.count_threshold
  is '����-��ֵ';
comment on column REPORT_DAILY_REGION.count_service_stopped
  is '����-����ֹͣ';
comment on column REPORT_DAILY_REGION.count_dba_oracle
  is '����-DBA';
comment on column REPORT_DAILY_REGION.time_mean
  is 'ƽ����ʱ';
comment on column REPORT_DAILY_REGION.time_max
  is '�����ʱ';
comment on column REPORT_DAILY_REGION.time_min
  is '�����ʱ';
comment on column REPORT_DAILY_REGION.report_date
  is '��������';
comment on column REPORT_DAILY_REGION.create_date
  is '��������';
comment on column REPORT_DAILY_REGION.count_email_user
  is '�ʼ���������';
comment on column REPORT_DAILY_REGION.count_wechat_user
  is '΢������';
alter table REPORT_DAILY_REGION
  add constraint PK_REPORT_DAILY_REGION primary key (GUID);

prompt
prompt Creating table REPORT_DAILY_SERVER_DR
prompt =====================================
prompt
create table REPORT_DAILY_SERVER_DR
(
  guid         VARCHAR2(50) default sys_guid() not null,
  server_id    VARCHAR2(50),
  report_date  VARCHAR2(50),
  dr_type      VARCHAR2(50),
  dr_name      VARCHAR2(150),
  dr_value_max NUMBER default 0 not null,
  dr_value_min NUMBER default 0 not null,
  dr_value_avg NUMBER default 0 not null,
  create_date  DATE default sysdate
)
;
comment on table REPORT_DAILY_SERVER_DR
  is '����-ÿ�ղɼ���Ϣ�ɼ�';
comment on column REPORT_DAILY_SERVER_DR.report_date
  is '��������';
comment on column REPORT_DAILY_SERVER_DR.dr_type
  is '����';
comment on column REPORT_DAILY_SERVER_DR.dr_name
  is '�ɼ���';
comment on column REPORT_DAILY_SERVER_DR.dr_value_max
  is '���ֵ';
comment on column REPORT_DAILY_SERVER_DR.dr_value_min
  is '��Сֵ';
comment on column REPORT_DAILY_SERVER_DR.dr_value_avg
  is 'ƽ��ֵ';
alter table REPORT_DAILY_SERVER_DR
  add constraint PK_REPORT_DAILY_SERVER_DR primary key (GUID);

prompt
prompt Creating table REPORT_DAILY_STATISTICS
prompt ======================================
prompt
create table REPORT_DAILY_STATISTICS
(
  guid                  VARCHAR2(50) default sys_guid() not null,
  server_id             VARCHAR2(50),
  server_ip             VARCHAR2(50),
  server_name           VARCHAR2(50),
  server_remark         VARCHAR2(500),
  server_enable         VARCHAR2(10),
  server_type           VARCHAR2(50),
  server_data_type      VARCHAR2(50),
  server_datalink       VARCHAR2(550),
  region_code           VARCHAR2(50),
  region_name           VARCHAR2(50),
  project_id            VARCHAR2(50),
  project_name          VARCHAR2(50),
  project_list          VARCHAR2(500),
  count_timeout         VARCHAR2(10),
  count_threshold       VARCHAR2(50),
  count_service_stopped VARCHAR2(500),
  count_dba_oracle      VARCHAR2(10),
  time_max              VARCHAR2(12),
  time_min              VARCHAR2(12),
  time_average          VARCHAR2(12),
  dr_time               DATE,
  dr_time_iswarning     VARCHAR2(5),
  report_date           VARCHAR2(20),
  create_date           DATE default sysdate
)
;
comment on table REPORT_DAILY_STATISTICS
  is '����-������-�ܿ���Ϣ����Ϣ�ɼ�';
comment on column REPORT_DAILY_STATISTICS.server_ip
  is '1������IP';
comment on column REPORT_DAILY_STATISTICS.server_name
  is '������������';
comment on column REPORT_DAILY_STATISTICS.server_remark
  is '1������ʹ�ñ�ע';
comment on column REPORT_DAILY_STATISTICS.server_enable
  is '1������״̬';
comment on column REPORT_DAILY_STATISTICS.server_type
  is '1����������';
comment on column REPORT_DAILY_STATISTICS.server_data_type
  is '1�������ܿ�����';
comment on column REPORT_DAILY_STATISTICS.server_datalink
  is '1��������·';
comment on column REPORT_DAILY_STATISTICS.region_code
  is '��������������';
comment on column REPORT_DAILY_STATISTICS.region_name
  is '����������������';
comment on column REPORT_DAILY_STATISTICS.project_id
  is '1��Ŀ����';
comment on column REPORT_DAILY_STATISTICS.project_name
  is '1��Ŀ��';
comment on column REPORT_DAILY_STATISTICS.project_list
  is '1��Ŀ�������б�:jsonչʾ';
comment on column REPORT_DAILY_STATISTICS.count_timeout
  is '��ʱ����';
comment on column REPORT_DAILY_STATISTICS.count_threshold
  is '��ֵ����';
comment on column REPORT_DAILY_STATISTICS.count_service_stopped
  is '����ֹͣ����';
comment on column REPORT_DAILY_STATISTICS.count_dba_oracle
  is 'DBA����';
comment on column REPORT_DAILY_STATISTICS.time_max
  is '�����ʱ��';
comment on column REPORT_DAILY_STATISTICS.time_min
  is '��̴���ʱ��';
comment on column REPORT_DAILY_STATISTICS.time_average
  is 'ƽ������ʱ��';
comment on column REPORT_DAILY_STATISTICS.dr_time
  is '11111��Ϣ�ɼ�ʱ��';
comment on column REPORT_DAILY_STATISTICS.dr_time_iswarning
  is '1111��Ϣ�ɼ�ʱ��_�Ƿ�Ԥ��';
comment on column REPORT_DAILY_STATISTICS.report_date
  is '��������';
comment on column REPORT_DAILY_STATISTICS.create_date
  is '����ʱ��';
alter table REPORT_DAILY_STATISTICS
  add constraint PK_REPORT_SERVER_CONTROL_DR primary key (GUID);

prompt
prompt Creating table REPORT_EVERYDAY
prompt ==============================
prompt
create table REPORT_EVERYDAY
(
  guid                    NVARCHAR2(50) not null,
  server_guid             NVARCHAR2(50),
  server_datalink         NVARCHAR2(500),
  server_datalink_reverse NVARCHAR2(500),
  server_region           NVARCHAR2(50),
  server_region_name      NVARCHAR2(50),
  server_project          NVARCHAR2(50),
  server_project_name     NVARCHAR2(50),
  report_every_day_type   NVARCHAR2(50),
  report_count            NUMBER,
  report_date             NVARCHAR2(50)
)
;
comment on table REPORT_EVERYDAY
  is '����-ÿ�ձ���(ÿ������ݻ���)';
comment on column REPORT_EVERYDAY.report_every_day_type
  is 'ÿ�ձ�������:��������/����ö��';
comment on column REPORT_EVERYDAY.report_date
  is '��������';
alter table REPORT_EVERYDAY
  add constraint PK_REPORT_EVERYDAY primary key (GUID);

prompt
prompt Creating table REPORT_REGION_WARNING
prompt ====================================
prompt
create table REPORT_REGION_WARNING
(
  guid                    VARCHAR2(50) not null,
  region_code             VARCHAR2(4),
  region_name             VARCHAR2(20),
  porject_code            VARCHAR2(50),
  project_name            VARCHAR2(50),
  warning_type            VARCHAR2(50),
  warning_count           NUMBER,
  warning_count_untreated NUMBER,
  warning_server_count    NUMBER,
  usedtime_mean           VARCHAR2(50),
  usedtime_max            VARCHAR2(50),
  usedtime_min            VARCHAR2(50),
  report_date             VARCHAR2(20),
  create_date             DATE
)
;
comment on table REPORT_REGION_WARNING
  is '����-�����쳣��Ϣ';
comment on column REPORT_REGION_WARNING.region_code
  is '�������';
comment on column REPORT_REGION_WARNING.porject_code
  is '��Ŀ����';
comment on column REPORT_REGION_WARNING.warning_type
  is 'Ԥ������';
comment on column REPORT_REGION_WARNING.warning_count
  is 'Ԥ������';
comment on column REPORT_REGION_WARNING.warning_count_untreated
  is 'Ԥ������δ����';
comment on column REPORT_REGION_WARNING.warning_server_count
  is 'Ԥ������������';
comment on column REPORT_REGION_WARNING.usedtime_mean
  is 'ƽ����ʱ';
comment on column REPORT_REGION_WARNING.usedtime_max
  is '�����ʱ';
comment on column REPORT_REGION_WARNING.usedtime_min
  is '�����ʱ';
comment on column REPORT_REGION_WARNING.report_date
  is '��������';
comment on column REPORT_REGION_WARNING.create_date
  is '��������';
alter table REPORT_REGION_WARNING
  add constraint PK_REPORT_REGION_WARNING primary key (GUID);

prompt
prompt Creating table REPORT_WARNING
prompt =============================
prompt
create table REPORT_WARNING
(
  guid              VARCHAR2(50) not null,
  server_data_link  VARCHAR2(500),
  server_guid       VARCHAR2(50),
  server_region     VARCHAR2(50),
  server_project    VARCHAR2(50),
  data_type         VARCHAR2(50),
  data_warning_type VARCHAR2(50),
  work_mark         CHAR(2),
  bat_no            VARCHAR2(50),
  work_date         DATE,
  create_date       DATE
)
;
comment on table REPORT_WARNING
  is '����-Ԥ����Ϣ';
comment on column REPORT_WARNING.server_data_link
  is '��������·';
comment on column REPORT_WARNING.server_guid
  is '������ID';
comment on column REPORT_WARNING.server_region
  is '��������������';
comment on column REPORT_WARNING.server_project
  is '������������Ŀ';
comment on column REPORT_WARNING.data_type
  is '�������';
comment on column REPORT_WARNING.data_warning_type
  is 'Ԥ������';
comment on column REPORT_WARNING.work_mark
  is '״̬';
comment on column REPORT_WARNING.bat_no
  is '���κ�';
comment on column REPORT_WARNING.work_date
  is '����ʱ��:����Դ����ʱ��';
comment on column REPORT_WARNING.create_date
  is '����ʱ��';
alter table REPORT_WARNING
  add constraint PK_REPORT_WARNING primary key (GUID);

prompt
prompt Creating table SEND_DIRECTIVE_PADDING
prompt =====================================
prompt
create table SEND_DIRECTIVE_PADDING
(
  guid            VARCHAR2(50) default sys_Guid() not null,
  dir_head_id     VARCHAR2(50),
  dir_body_id     VARCHAR2(50),
  send_mark       VARCHAR2(10) default 1,
  create_date     DATE default sysdate,
  quartz_interval VARCHAR2(50),
  quartz_cron     VARCHAR2(50),
  dir_json        CLOB
)
;
comment on table SEND_DIRECTIVE_PADDING
  is '����ҵ��-ָ��-�������б�';
comment on column SEND_DIRECTIVE_PADDING.dir_head_id
  is 'ָ���ͷ(ץ��ʷ��)';
comment on column SEND_DIRECTIVE_PADDING.dir_body_id
  is 'ָ�����(ץ��ʷ��)';
comment on column SEND_DIRECTIVE_PADDING.quartz_interval
  is 'quartz���';
comment on column SEND_DIRECTIVE_PADDING.quartz_cron
  is 'quartzCron���ʽ';
alter table SEND_DIRECTIVE_PADDING
  add constraint PK_SEND_DIRECTIVE_PADDING primary key (GUID);

prompt
prompt Creating table SERVER_COMMAND_CONTROL
prompt =====================================
prompt
create table SERVER_COMMAND_CONTROL
(
  guid          VARCHAR2(50) not null,
  control_id    VARCHAR2(50),
  command_id    VARCHAR2(50),
  control_value VARCHAR2(200),
  create_date   DATE,
  warning_value VARCHAR2(50),
  update_date   DATE,
  msg_type      VARCHAR2(10),
  cmd_type      VARCHAR2(10),
  cmd_desc      VARCHAR2(50)
)
;
create index IDX_SERVER_COMMAND_CONTROL_01 on SERVER_COMMAND_CONTROL (CONTROL_ID);
alter table SERVER_COMMAND_CONTROL
  add constraint PK_COMMAND_KEY primary key (GUID);

prompt
prompt Creating table SERVER_COMMAND_INFO
prompt ==================================
prompt
create table SERVER_COMMAND_INFO
(
  guid                  VARCHAR2(50) default sys_guid() not null,
  server_id             VARCHAR2(50),
  detail_ip             VARCHAR2(50),
  detail_data_key       VARCHAR2(50),
  detail_data           VARCHAR2(1000),
  detail_data_split_row VARCHAR2(50),
  detail_data_split_col VARCHAR2(50),
  rlat_id               VARCHAR2(50),
  create_date           DATE default sysdate not null,
  cmd_desc              VARCHAR2(250),
  cmd_remark            VARCHAR2(250)
)
;
comment on table SERVER_COMMAND_INFO
  is '������-ָ����Ϣ��';
comment on column SERVER_COMMAND_INFO.detail_ip
  is 'IP';
comment on column SERVER_COMMAND_INFO.detail_data_key
  is '�ɼ�ָ������';
comment on column SERVER_COMMAND_INFO.detail_data
  is 'ָ��';
comment on column SERVER_COMMAND_INFO.detail_data_split_row
  is '�зָ�';
comment on column SERVER_COMMAND_INFO.detail_data_split_col
  is '�зָ�';
comment on column SERVER_COMMAND_INFO.rlat_id
  is '�������';
comment on column SERVER_COMMAND_INFO.cmd_desc
  is '����';
comment on column SERVER_COMMAND_INFO.cmd_remark
  is '��ע';
create index IDX_COMMAND_SERVER_ID on SERVER_COMMAND_INFO (SERVER_ID);
alter table SERVER_COMMAND_INFO
  add constraint PK_SERVER_COMMAND_INFO primary key (GUID);

prompt
prompt Creating table SERVER_CONTROL_INFO
prompt ==================================
prompt
create table SERVER_CONTROL_INFO
(
  guid                  VARCHAR2(50) default sys_GUID() not null,
  server_id             VARCHAR2(50) not null,
  msg_type              VARCHAR2(50) not null,
  msg_type_name         VARCHAR2(50),
  control_info          VARCHAR2(2000),
  control_warning_value VARCHAR2(50) default 1000 not null,
  control_status        VARCHAR2(1) default 1 not null,
  control_desc          VARCHAR2(50) default 'δ���������Ϣ,���������' not null,
  create_date           DATE default sysdate not null,
  server_data_link      VARCHAR2(500),
  extend_varchar1       VARCHAR2(50),
  update_date           DATE,
  control_value         VARCHAR2(50),
  data_from             VARCHAR2(50),
  send_date             DATE,
  create_by             VARCHAR2(50),
  warning_level         VARCHAR2(2000),
  warning_level1        VARCHAR2(50),
  warning_level2        VARCHAR2(50),
  warning_level3        VARCHAR2(50),
  warning_level4        VARCHAR2(50)
)
;
comment on table SERVER_CONTROL_INFO
  is '������-�ܿر���Ϣ';
comment on column SERVER_CONTROL_INFO.msg_type
  is 'ҵ������:Y00001��';
comment on column SERVER_CONTROL_INFO.control_info
  is 'ҵ��ֵ:����Ҫ�ܿص���Ϣ������,��������';
comment on column SERVER_CONTROL_INFO.control_warning_value
  is 'Ԥ��ֵ';
comment on column SERVER_CONTROL_INFO.control_status
  is '״̬';
comment on column SERVER_CONTROL_INFO.control_desc
  is '����';
comment on column SERVER_CONTROL_INFO.create_date
  is '����ʱ��';
comment on column SERVER_CONTROL_INFO.server_data_link
  is 'IP��';
comment on column SERVER_CONTROL_INFO.extend_varchar1
  is 'varchar��չ�ֶ�';
comment on column SERVER_CONTROL_INFO.create_by
  is '������';
comment on column SERVER_CONTROL_INFO.warning_level
  is 'Ԥ���ȼ�(�г�������Ҫ��ÿ��Ԥ����Ϣ��������Ԥ���ȼ�)';
create index IDX_BASE_SERVER_INFO_01 on SERVER_CONTROL_INFO (MSG_TYPE);
create index INX_CONTROL_SERVER_ID on SERVER_CONTROL_INFO (SERVER_ID);
alter table SERVER_CONTROL_INFO
  add constraint PK_SERVER_CONTROL_INFO primary key (GUID);

prompt
prompt Creating table SERVER_DB_CONNECTION
prompt ===================================
prompt
create table SERVER_DB_CONNECTION
(
  guid               VARCHAR2(50) default SYS_GUID() not null,
  server_id          VARCHAR2(50),
  server_data_link   VARCHAR2(250),
  db_type            VARCHAR2(50),
  db_data_source     VARCHAR2(50),
  db_initial_catalog VARCHAR2(50),
  db_user_id         VARCHAR2(50),
  db_password        VARCHAR2(50),
  db_conn            VARCHAR2(250),
  create_date        DATE default SYSDATE,
  extend_varchar1    VARCHAR2(50),
  extend_varchar2    VARCHAR2(250),
  extend_number1     NUMBER,
  extend_date        DATE,
  db_desc            VARCHAR2(250),
  app_code           VARCHAR2(50),
  db_id              VARCHAR2(50),
  db_svr_id          VARCHAR2(50)
)
;
comment on table SERVER_DB_CONNECTION
  is '������-���ݿ�-�����ַ�����Ϣ��';
comment on column SERVER_DB_CONNECTION.server_id
  is '���������';
comment on column SERVER_DB_CONNECTION.server_data_link
  is '��������·';
comment on column SERVER_DB_CONNECTION.db_type
  is '���ݿ�����';
comment on column SERVER_DB_CONNECTION.db_data_source
  is '����Դ';
comment on column SERVER_DB_CONNECTION.db_initial_catalog
  is '���ݿ�';
comment on column SERVER_DB_CONNECTION.extend_varchar1
  is 'varchar��չ�ֶ�';
comment on column SERVER_DB_CONNECTION.extend_varchar2
  is 'varchar��չ�ֶ�';
comment on column SERVER_DB_CONNECTION.extend_number1
  is 'number��չ�ֶ�';
comment on column SERVER_DB_CONNECTION.extend_date
  is 'date��չ�ֶ�';
comment on column SERVER_DB_CONNECTION.db_desc
  is '���ݿ�����';
comment on column SERVER_DB_CONNECTION.app_code
  is 'Ӧ��ϵͳ����';
comment on column SERVER_DB_CONNECTION.db_id
  is '���ݿ���';
comment on column SERVER_DB_CONNECTION.db_svr_id
  is '���ݿ�������ķ��������';
create index IDX_CONN_SERVER_ID on SERVER_DB_CONNECTION (SERVER_ID);
alter table SERVER_DB_CONNECTION
  add constraint PK_SERVER_DB_CONNECTION primary key (GUID);

prompt
prompt Creating table SSO_USER
prompt =======================
prompt
create table SSO_USER
(
  person_id          VARCHAR2(50) default SYS_GUID() not null,
  person_name        VARCHAR2(50),
  person_email       VARCHAR2(50),
  person_mobilephone VARCHAR2(50),
  person_login_no    VARCHAR2(50),
  person_login_pwd   VARCHAR2(50),
  person_type        VARCHAR2(50)
)
;
comment on table SSO_USER
  is '�û��˺���Ϣ��';
comment on column SSO_USER.person_name
  is '����';
comment on column SSO_USER.person_email
  is '����';
comment on column SSO_USER.person_mobilephone
  is '�ƶ��绰';
comment on column SSO_USER.person_login_no
  is '�û���¼�˺�';
comment on column SSO_USER.person_login_pwd
  is '�û���¼����';
comment on column SSO_USER.person_type
  is '�û�����';

prompt
prompt Creating table STOP_SEND_RECORD
prompt ===============================
prompt
create table STOP_SEND_RECORD
(
  server_id VARCHAR2(50),
  send_date VARCHAR2(50),
  msg_type  VARCHAR2(50),
  create_dt DATE
)
;
comment on table STOP_SEND_RECORD
  is 'ֹͣ��ؼ�¼';

prompt
prompt Creating table STOP_SERVER_WAR
prompt ==============================
prompt
create table STOP_SERVER_WAR
(
  guid        VARCHAR2(50) default sys_guid() not null,
  server_id   VARCHAR2(50) not null,
  msg_type    VARCHAR2(10),
  contro_id   VARCHAR2(50),
  contro_info VARCHAR2(50),
  stop_date   VARCHAR2(20),
  create_date DATE default sysdate not null,
  enable      VARCHAR2(10) default 1
)
;
comment on table STOP_SERVER_WAR
  is 'ͣ��-������-Ԥ����Ϣ';
comment on column STOP_SERVER_WAR.server_id
  is '���������';
comment on column STOP_SERVER_WAR.msg_type
  is '����';
comment on column STOP_SERVER_WAR.contro_id
  is '�ܿر��';
comment on column STOP_SERVER_WAR.contro_info
  is '�ܿ���Ϣ';
comment on column STOP_SERVER_WAR.stop_date
  is '��ͣ����';
comment on column STOP_SERVER_WAR.enable
  is '����״̬';
alter table STOP_SERVER_WAR
  add constraint PK_STOP_SERVER_WARNING primary key (GUID);

prompt
prompt Creating table SVR_DICTATE_CTRL
prompt ===============================
prompt
create table SVR_DICTATE_CTRL
(
  ctrl_id            VARCHAR2(50) not null,
  svr_id             VARCHAR2(50),
  msg_type           VARCHAR2(10),
  ctrl_info          VARCHAR2(150),
  ctrl_current_value VARCHAR2(150),
  ctrl_warn_value    VARCHAR2(50),
  ctrl_desc          VARCHAR2(150),
  create_date        DATE default sysdate
)
;
comment on table SVR_DICTATE_CTRL
  is '���������ָ��-�ܿ���Ϣ';
comment on column SVR_DICTATE_CTRL.ctrl_current_value
  is '��ǰֵ';
comment on column SVR_DICTATE_CTRL.ctrl_warn_value
  is 'Ԥ����ֵ';
alter table SVR_DICTATE_CTRL
  add constraint PK_SVR_DICTATE_CTRL primary key (CTRL_ID);

prompt
prompt Creating table SVR_DICTATE_HEAD
prompt ===============================
prompt
create table SVR_DICTATE_HEAD
(
  guid         VARCHAR2(50),
  svr_id       VARCHAR2(50) not null,
  msg_type     VARCHAR2(20) not null,
  exe_interval VARCHAR2(50),
  exe_enable   VARCHAR2(10),
  create_date  DATE default sysdate,
  exe_date     DATE
)
;
comment on table SVR_DICTATE_HEAD
  is '������ָ�������';
comment on column SVR_DICTATE_HEAD.svr_id
  is '���������';
comment on column SVR_DICTATE_HEAD.msg_type
  is '��������';
comment on column SVR_DICTATE_HEAD.exe_interval
  is 'ִ�м��';
comment on column SVR_DICTATE_HEAD.exe_enable
  is '����״̬';
comment on column SVR_DICTATE_HEAD.exe_date
  is 'ִ��ʱ��';
alter table SVR_DICTATE_HEAD
  add constraint PK_SVR_DICTATE_HEAD primary key (SVR_ID, MSG_TYPE);

prompt
prompt Creating table SYS_EBROLE_CONFIG
prompt ================================
prompt
create table SYS_EBROLE_CONFIG
(
  auto_id       VARCHAR2(50) default sys_guid() not null,
  eb_type_code  VARCHAR2(10),
  eb_type_name  VARCHAR2(50),
  role_code     VARCHAR2(50),
  role_name     VARCHAR2(50),
  biz_type_code VARCHAR2(10),
  biz_type_name VARCHAR2(30),
  create_user   VARCHAR2(50),
  create_date   DATE,
  update_user   VARCHAR2(50),
  update_date   DATE
)
;
comment on table SYS_EBROLE_CONFIG
  is '4.0.0.31--��ҵ��ɫ���ñ�';
comment on column SYS_EBROLE_CONFIG.auto_id
  is 'AUTO_ID';
comment on column SYS_EBROLE_CONFIG.eb_type_code
  is '��ҵ����';
comment on column SYS_EBROLE_CONFIG.eb_type_name
  is '��ҵ����';
comment on column SYS_EBROLE_CONFIG.role_code
  is '��ɫ����';
comment on column SYS_EBROLE_CONFIG.role_name
  is '��ɫ����';
comment on column SYS_EBROLE_CONFIG.biz_type_code
  is 'ҵ�����ʹ���';
comment on column SYS_EBROLE_CONFIG.biz_type_name
  is 'ҵ����������';
comment on column SYS_EBROLE_CONFIG.create_user
  is '������';
comment on column SYS_EBROLE_CONFIG.create_date
  is '����ʱ��/¼��ʱ��';
comment on column SYS_EBROLE_CONFIG.update_user
  is '����޸���';
comment on column SYS_EBROLE_CONFIG.update_date
  is '����޸�ʱ��';
alter table SYS_EBROLE_CONFIG
  add constraint PK_SYS_EBROLE_CONFIG primary key (AUTO_ID);

prompt
prompt Creating table SYS_LOG
prompt ======================
prompt
create table SYS_LOG
(
  auto_id     NVARCHAR2(50) not null,
  error_msg   NVARCHAR2(500),
  action_name NVARCHAR2(500),
  action_path NVARCHAR2(500),
  create_dt   DATE,
  error_data  CLOB,
  log_type    VARCHAR2(50),
  create_by   VARCHAR2(50),
  is_answer   NUMBER default 0
)
;
comment on table SYS_LOG
  is '��־��';
comment on column SYS_LOG.error_msg
  is '��Ҫ��Ϣ';
comment on column SYS_LOG.action_name
  is 'ģ��/����';
comment on column SYS_LOG.action_path
  is '������Ϣ';
comment on column SYS_LOG.create_dt
  is '����ʱ��';
comment on column SYS_LOG.error_data
  is '��ϸ��Ϣ_���ֶ�';
comment on column SYS_LOG.log_type
  is '��־����:������־ErrorLog,������־OperLog';
comment on column SYS_LOG.create_by
  is '������';
alter table SYS_LOG
  add constraint PK_AUTO_ID primary key (AUTO_ID);

prompt
prompt Creating table SYS_MENU
prompt =======================
prompt
create table SYS_MENU
(
  menu_id         VARCHAR2(4) not null,
  menu_name       VARCHAR2(36),
  menu_code       VARCHAR2(150),
  menu_type       VARCHAR2(4),
  open_type       VARCHAR2(1),
  net_menu_code   VARCHAR2(150),
  open_parameter  VARCHAR2(150),
  net_parent_mode VARCHAR2(4),
  net_flag        VARCHAR2(1) default 1,
  is_mgr_menu     VARCHAR2(11),
  spread          VARCHAR2(5),
  icon_name       VARCHAR2(11),
  target          VARCHAR2(11)
)
;
comment on table SYS_MENU
  is 'ϵͳ��--�˵���Ϣ��';
comment on column SYS_MENU.menu_name
  is 'ģ������';
comment on column SYS_MENU.menu_type
  is '��ϵͳ��:';
comment on column SYS_MENU.net_flag
  is '����״̬:1Ϊ����,0Ϊ����';
comment on column SYS_MENU.is_mgr_menu
  is '�Ƿ��ǹ���Ա�˵�:1Ϊ��';
comment on column SYS_MENU.spread
  is '�Ƿ�չ��';
alter table SYS_MENU
  add constraint PK_MENU_ID primary key (MENU_ID);

prompt
prompt Creating table SYS_MENU_DETAIL
prompt ==============================
prompt
create table SYS_MENU_DETAIL
(
  guid         VARCHAR2(36) default SYS_GUID() not null,
  sys_menu_id  VARCHAR2(36),
  custom_code  VARCHAR2(10),
  custom_name  VARCHAR2(50),
  x            NUMBER(18,6),
  y            NUMBER(18,6),
  founction_id VARCHAR2(36),
  status       NUMBER default 1,
  enable       NUMBER default 1,
  url          VARCHAR2(36)
)
;
comment on table SYS_MENU_DETAIL
  is '�˵���ϸ��Ϣ--����������Ϣ';
comment on column SYS_MENU_DETAIL.guid
  is '����';
comment on column SYS_MENU_DETAIL.sys_menu_id
  is 'ֱ����������';
comment on column SYS_MENU_DETAIL.custom_code
  is '�������ش���';
comment on column SYS_MENU_DETAIL.custom_name
  is '������������';
comment on column SYS_MENU_DETAIL.x
  is '��������';
comment on column SYS_MENU_DETAIL.y
  is 'γ������';
comment on column SYS_MENU_DETAIL.founction_id
  is '���ܵ����';
comment on column SYS_MENU_DETAIL.status
  is '0�쳣 1����';
comment on column SYS_MENU_DETAIL.enable
  is '�Ƿ�����  ����1 ����0';
alter table SYS_MENU_DETAIL
  add constraint PK_SYS_MENU_DETAIL primary key (GUID);

prompt
prompt Creating table SYS_MESSAGE_LOG
prompt ==============================
prompt
create table SYS_MESSAGE_LOG
(
  guid         VARCHAR2(50) default sys_guid() not null,
  server_id    VARCHAR2(50) not null,
  message_type VARCHAR2(50),
  message_cont CLOB,
  create_date  DATE default sysdate not null,
  data_link    VARCHAR2(550),
  data_from    VARCHAR2(550)
)
;
comment on table SYS_MESSAGE_LOG
  is 'ϵͳ-����-��־';
comment on column SYS_MESSAGE_LOG.message_type
  is '����:send,callback';
comment on column SYS_MESSAGE_LOG.message_cont
  is '����';
alter table SYS_MESSAGE_LOG
  add constraint PK_SYS_MESSAGE_LOG primary key (GUID);

prompt
prompt Creating table SYS_OPERATION_LOG
prompt ================================
prompt
create table SYS_OPERATION_LOG
(
  guid                    VARCHAR2(36) not null,
  operation_title         VARCHAR2(500),
  operation_path          VARCHAR2(500),
  operation_function_name VARCHAR2(100),
  operation_key_no        VARCHAR2(400),
  operation_log_type      VARCHAR2(33) not null,
  operation_status        NUMBER,
  operation_memo          VARCHAR2(4000),
  operation_data          CLOB,
  operation_cost          NUMBER,
  operation_create_date   DATE default sysdate,
  user_id                 VARCHAR2(50),
  user_name               VARCHAR2(22),
  user_ip                 VARCHAR2(30),
  user_web_browser        VARCHAR2(50),
  user_os                 VARCHAR2(500),
  user_session_id         VARCHAR2(50),
  extend_varchar1         VARCHAR2(50),
  extend_varchar2         VARCHAR2(250),
  extend_number1          NUMBER,
  extend_date             DATE
)
;
comment on table SYS_OPERATION_LOG
  is 'ϵͳ-������־';
comment on column SYS_OPERATION_LOG.guid
  is 'GUID';
comment on column SYS_OPERATION_LOG.operation_title
  is '��������(ҳ�����)';
comment on column SYS_OPERATION_LOG.operation_path
  is '����·��(URL·��)';
comment on column SYS_OPERATION_LOG.operation_function_name
  is '��������';
comment on column SYS_OPERATION_LOG.operation_key_no
  is '��������';
comment on column SYS_OPERATION_LOG.operation_log_type
  is '��־����:
11:��½��־;12:������־;13:��Ȩ�޲�����¼ 
20:Ӧ��ϵͳ��ѯ:��ά����
30:��Ϣ�ɼ�����;
40:��������;
50:Ԥ�����ͷ���;
60:�������';
comment on column SYS_OPERATION_LOG.operation_status
  is 'ִ��״̬  1:�ɹ�  2:ʧ��';
comment on column SYS_OPERATION_LOG.operation_memo
  is '��ע';
comment on column SYS_OPERATION_LOG.operation_data
  is '��ϸ��Ϣ_���ֶ�';
comment on column SYS_OPERATION_LOG.operation_cost
  is '�������ģ����룩';
comment on column SYS_OPERATION_LOG.operation_create_date
  is '����ʱ��';
comment on column SYS_OPERATION_LOG.user_id
  is '�������ʺ�';
comment on column SYS_OPERATION_LOG.user_name
  is '����������';
comment on column SYS_OPERATION_LOG.user_ip
  is '�ͻ�����IP';
comment on column SYS_OPERATION_LOG.user_web_browser
  is '�ͻ������';
comment on column SYS_OPERATION_LOG.user_os
  is '�ͻ�����ϵͳ';
comment on column SYS_OPERATION_LOG.user_session_id
  is '�ỰID';
comment on column SYS_OPERATION_LOG.extend_varchar1
  is 'varchar��չ�ֶ�';
comment on column SYS_OPERATION_LOG.extend_varchar2
  is 'varchar��չ�ֶ�';
comment on column SYS_OPERATION_LOG.extend_number1
  is 'number��չ�ֶ�';
comment on column SYS_OPERATION_LOG.extend_date
  is 'date��չ�ֶ�';
alter table SYS_OPERATION_LOG
  add constraint PK_SYS_OPERATION_LOG primary key (GUID);

prompt
prompt Creating table SYS_OPER_GRANT
prompt =============================
prompt
create table SYS_OPER_GRANT
(
  oper_id   VARCHAR2(50) not null,
  func_id   VARCHAR2(4) not null,
  grant0    VARCHAR2(1) default 0,
  grant1    VARCHAR2(1) default 0,
  grant2    VARCHAR2(1) default 0,
  grant3    VARCHAR2(1) default 0,
  grant4    VARCHAR2(1) default 0,
  grant5    VARCHAR2(1) default 0,
  grant6    VARCHAR2(1) default 0,
  grant7    VARCHAR2(1) default 0,
  grant8    VARCHAR2(1) default 0,
  grant9    VARCHAR2(1) default 0,
  app_id    VARCHAR2(4) not null,
  oper_type VARCHAR2(4)
)
;
comment on table SYS_OPER_GRANT
  is 'Ȩ�ޱ�';
comment on column SYS_OPER_GRANT.oper_type
  is '����:User,Role';
alter table SYS_OPER_GRANT
  add constraint GRANT_PRIMARY primary key (OPER_ID, FUNC_ID, APP_ID);

prompt
prompt Creating table SYS_PARAMETERS_TABLESPACE
prompt ========================================
prompt
create table SYS_PARAMETERS_TABLESPACE
(
  guid                VARCHAR2(50) default SYS_GUID(),
  threshold_value     VARCHAR2(50),
  warning_level       VARCHAR2(50),
  creater_person_guid VARCHAR2(50),
  create_time         DATE default SYSDATE,
  updater_person_guid VARCHAR2(50),
  update_time         DATE default SYSDATE
)
;
comment on table SYS_PARAMETERS_TABLESPACE
  is 'ϵͳ�������������ݱ�ռ���ֵ����';
comment on column SYS_PARAMETERS_TABLESPACE.threshold_value
  is '��ֵ';
comment on column SYS_PARAMETERS_TABLESPACE.warning_level
  is 'Ԥ������';
comment on column SYS_PARAMETERS_TABLESPACE.creater_person_guid
  is '������';
comment on column SYS_PARAMETERS_TABLESPACE.create_time
  is '����ʱ��';
comment on column SYS_PARAMETERS_TABLESPACE.updater_person_guid
  is '��������';
comment on column SYS_PARAMETERS_TABLESPACE.update_time
  is '������ʱ��';

prompt
prompt Creating table SYS_ROLE_INFO
prompt ============================
prompt
create table SYS_ROLE_INFO
(
  guid      VARCHAR2(50) default sys_Guid(),
  role_id   VARCHAR2(50) not null,
  role_name VARCHAR2(50),
  app_id    VARCHAR2(50)
)
;
comment on table SYS_ROLE_INFO
  is '��ɫ��Ϣ';
comment on column SYS_ROLE_INFO.role_id
  is '��ɫ���';
comment on column SYS_ROLE_INFO.role_name
  is '��ɫ��';
comment on column SYS_ROLE_INFO.app_id
  is 'Ȩ��ƽ̨Ӧ��ϵͳ���';
alter table SYS_ROLE_INFO
  add constraint PK_SYS_ROLE_INFO primary key (ROLE_ID);

prompt
prompt Creating table SYS_SHEETNO_FLOW
prompt ===============================
prompt
create table SYS_SHEETNO_FLOW
(
  guid            VARCHAR2(50) not null,
  sheet_type      VARCHAR2(10),
  branch_no       VARCHAR2(10),
  sheet_value     NUMBER,
  temp_value      NUMBER,
  last_time       DATE,
  extend_varchar1 VARCHAR2(50),
  extend_varchar2 VARCHAR2(250),
  extend_number1  NUMBER,
  extend_date     DATE,
  middle_no       VARCHAR2(10)
)
;
comment on table SYS_SHEETNO_FLOW
  is '��ҵ�񵥺���ˮ�ŵ�';
comment on column SYS_SHEETNO_FLOW.guid
  is '����';
comment on column SYS_SHEETNO_FLOW.sheet_type
  is '����:��Ŀ,��Ա,��������';
comment on column SYS_SHEETNO_FLOW.branch_no
  is '����������м�ֵ';
comment on column SYS_SHEETNO_FLOW.sheet_value
  is '������ˮ��';
comment on column SYS_SHEETNO_FLOW.last_time
  is '����޸�ʱ��';
comment on column SYS_SHEETNO_FLOW.extend_varchar1
  is 'varchar��չ�ֶ�';
comment on column SYS_SHEETNO_FLOW.extend_varchar2
  is 'varchar��չ�ֶ�';
comment on column SYS_SHEETNO_FLOW.extend_number1
  is 'number��չ�ֶ�';
comment on column SYS_SHEETNO_FLOW.extend_date
  is 'date��չ�ֶ�';
comment on column SYS_SHEETNO_FLOW.middle_no
  is '�м�ֵ';
alter table SYS_SHEETNO_FLOW
  add constraint PK_SYS_SHEETNO_FLOW primary key (GUID);
alter table SYS_SHEETNO_FLOW
  add constraint PK_SYS_SHEETNO_FLOW_TYPE unique (SHEET_TYPE, BRANCH_NO);

prompt
prompt Creating table SYS_USER_CONFIG
prompt ==============================
prompt
create table SYS_USER_CONFIG
(
  auto_id        VARCHAR2(36),
  user_id        VARCHAR2(50) not null,
  sys_skin       VARCHAR2(10),
  op_tips        VARCHAR2(10),
  msg_show       VARCHAR2(10),
  menu_layout    VARCHAR2(10),
  menu_location  VARCHAR2(10),
  menu_hidepath  VARCHAR2(10),
  login_date     DATE,
  pre_login_date DATE,
  trade_code     VARCHAR2(20),
  trade_name     VARCHAR2(200),
  customs_code   VARCHAR2(10),
  customs_name   VARCHAR2(30),
  create_date    DATE,
  create_user    VARCHAR2(50),
  my_system      VARCHAR2(10),
  is_gray        VARCHAR2(10),
  is_show_list   VARCHAR2(10),
  is_fixed_top   VARCHAR2(10)
)
;
comment on column SYS_USER_CONFIG.auto_id
  is 'GUID';
comment on column SYS_USER_CONFIG.user_id
  is '�û���(LOGIN_NO)';
comment on column SYS_USER_CONFIG.sys_skin
  is 'Ƥ����ʽ��01/02/03��';
comment on column SYS_USER_CONFIG.op_tips
  is '������ʾ��0-false/1-true)';
comment on column SYS_USER_CONFIG.msg_show
  is '��Ϣ��ʾ��0-false/1-true)';
comment on column SYS_USER_CONFIG.menu_layout
  is '�˵����֣�0-��ҳ/1-ϵͳ/2-����)';
comment on column SYS_USER_CONFIG.menu_location
  is '�˵�λ��';
comment on column SYS_USER_CONFIG.menu_hidepath
  is '����·��';
comment on column SYS_USER_CONFIG.login_date
  is '��¼ʱ��';
comment on column SYS_USER_CONFIG.pre_login_date
  is '�ϴε�¼ʱ��';
comment on column SYS_USER_CONFIG.trade_code
  is '��ҵ����';
comment on column SYS_USER_CONFIG.trade_name
  is '��ҵ����';
comment on column SYS_USER_CONFIG.customs_code
  is '��������';
comment on column SYS_USER_CONFIG.customs_name
  is '��������';
comment on column SYS_USER_CONFIG.create_date
  is '����ʱ��';
comment on column SYS_USER_CONFIG.create_user
  is '������';
comment on column SYS_USER_CONFIG.my_system
  is '��ǰϵͳ(����Ȩ��ƽ̨ѡ���NODE_CODE)';
comment on column SYS_USER_CONFIG.is_gray
  is '�Ҷȵ�ɫ��0-false/1-true)';
comment on column SYS_USER_CONFIG.is_show_list
  is '���ع���̨�б���ʾ���أ�0-false/1-true)';
comment on column SYS_USER_CONFIG.is_fixed_top
  is '�̶�������0-false/1-true)';
alter table SYS_USER_CONFIG
  add constraint PK_SYS_USER_CONFIG primary key (USER_ID);

prompt
prompt Creating table TEMP_BASE_PARAMETERS
prompt ===================================
prompt
create table TEMP_BASE_PARAMETERS
(
  guid            VARCHAR2(50) default sys_guid() not null,
  code            VARCHAR2(250),
  name            VARCHAR2(250),
  group_code      VARCHAR2(50),
  key             VARCHAR2(250),
  value           VARCHAR2(4000),
  enable          VARCHAR2(2) default 1,
  extend_varchar1 VARCHAR2(50),
  extend_varchar2 VARCHAR2(250),
  extend_number1  NUMBER,
  extend_date     DATE,
  create_date     DATE default sysdate
)
;
comment on table TEMP_BASE_PARAMETERS
  is '��ʱ-������Ϣ-������';
alter table TEMP_BASE_PARAMETERS
  add constraint PK_TEMP_1 primary key (GUID);

prompt
prompt Creating table TEMP_BASE_PERSON_INFO
prompt ====================================
prompt
create table TEMP_BASE_PERSON_INFO
(
  person_id          VARCHAR2(50) default sys_guid() not null,
  person_name        VARCHAR2(50),
  person_email       VARCHAR2(50),
  person_mobilephone VARCHAR2(50),
  person_login_no    VARCHAR2(50),
  person_login_pwd   VARCHAR2(50),
  person_type        VARCHAR2(50),
  person_department  VARCHAR2(50),
  person_id_temp     VARCHAR2(50)
)
;
comment on table TEMP_BASE_PERSON_INFO
  is '��ʱ-������Ϣ-��Ա��Ϣ��';
alter table TEMP_BASE_PERSON_INFO
  add constraint PK_TEMP_2 primary key (PERSON_ID);

prompt
prompt Creating table TEMP_BASE_PROJECT_MANAGE
prompt =======================================
prompt
create table TEMP_BASE_PROJECT_MANAGE
(
  guid                    VARCHAR2(50) not null,
  project_code            VARCHAR2(150),
  project_name            VARCHAR2(50),
  project_online_time     DATE,
  project_region          VARCHAR2(50),
  project_explain         VARCHAR2(250),
  creater_person_guid     VARCHAR2(50),
  create_time             DATE,
  updater_person_guid     VARCHAR2(50),
  update_time             DATE,
  project_topo_graph_path VARCHAR2(250)
)
;
comment on table TEMP_BASE_PROJECT_MANAGE
  is '��ʱ-������Ϣ-��Ŀ����';
alter table TEMP_BASE_PROJECT_MANAGE
  add constraint PK_TEMP_3 primary key (GUID);

prompt
prompt Creating table TEMP_SSO_USER
prompt ============================
prompt
create table TEMP_SSO_USER
(
  person_id          VARCHAR2(50) not null,
  person_name        VARCHAR2(50),
  person_email       VARCHAR2(50),
  person_mobilephone VARCHAR2(50),
  person_login_no    VARCHAR2(50),
  person_login_pwd   VARCHAR2(50),
  person_type        VARCHAR2(50)
)
;
comment on table TEMP_SSO_USER
  is '�ձ����Ҵ�������������';
alter table TEMP_SSO_USER
  add constraint PK_TEMP_4 primary key (PERSON_ID);

prompt
prompt Creating table TEST_ORDER_SEND
prompt ==============================
prompt
create table TEST_ORDER_SEND
(
  guid         VARCHAR2(50) default SYS_GUID(),
  chinese_name VARCHAR2(50),
  english_name VARCHAR2(50),
  remark       VARCHAR2(50)
)
;

prompt
prompt Creating table WEBSOCKET_COMMAND_INFO
prompt =====================================
prompt
create table WEBSOCKET_COMMAND_INFO
(
  guid                  VARCHAR2(50) default sys_guid() not null,
  server_id             VARCHAR2(50),
  command_type          VARCHAR2(50),
  command_type_name     VARCHAR2(50),
  command_status        VARCHAR2(50),
  detail_ip             VARCHAR2(50),
  detail_data_key       VARCHAR2(50),
  detail_data           CLOB,
  detail_data_split_row VARCHAR2(50),
  detail_data_split_col VARCHAR2(50),
  edit_info             VARCHAR2(2000),
  create_date           DATE default sysdate not null
)
;
comment on table WEBSOCKET_COMMAND_INFO
  is 'WebSocketָ����Ϣ';
comment on column WEBSOCKET_COMMAND_INFO.command_type
  is '����:��ά����;���������';
comment on column WEBSOCKET_COMMAND_INFO.command_type_name
  is '��������';
comment on column WEBSOCKET_COMMAND_INFO.command_status
  is '״̬';
comment on column WEBSOCKET_COMMAND_INFO.detail_ip
  is 'IP';
comment on column WEBSOCKET_COMMAND_INFO.detail_data_key
  is '�ɼ�ָ������';
comment on column WEBSOCKET_COMMAND_INFO.detail_data
  is 'ָ��';
comment on column WEBSOCKET_COMMAND_INFO.detail_data_split_row
  is '�зָ�';
comment on column WEBSOCKET_COMMAND_INFO.detail_data_split_col
  is '�зָ�';
comment on column WEBSOCKET_COMMAND_INFO.edit_info
  is '�༭��Ϣ';
alter table WEBSOCKET_COMMAND_INFO
  add constraint PK_WEBSOCKET_COMMAND_INFO primary key (GUID);

prompt
prompt Creating table WECHAT_LOG_ERROR
prompt ===============================
prompt
create table WECHAT_LOG_ERROR
(
  guid            VARCHAR2(50) default sys_guid() not null,
  errcode         VARCHAR2(50),
  errmsg          VARCHAR2(250),
  err_desp        VARCHAR2(250),
  err_posttitle   VARCHAR2(50),
  err_posturl     VARCHAR2(500),
  err_postmessage VARCHAR2(2000),
  create_date     DATE default sysdate not null,
  is_test_log     VARCHAR2(4)
)
;
comment on table WECHAT_LOG_ERROR
  is '΢��-�쳣��־';
comment on column WECHAT_LOG_ERROR.errcode
  is '�������';
comment on column WECHAT_LOG_ERROR.errmsg
  is '������Ϣ';
comment on column WECHAT_LOG_ERROR.err_desp
  is '��������';
comment on column WECHAT_LOG_ERROR.err_posttitle
  is '����';
comment on column WECHAT_LOG_ERROR.err_posturl
  is '���͵�ҵ��';
comment on column WECHAT_LOG_ERROR.err_postmessage
  is '���͵ı���';
comment on column WECHAT_LOG_ERROR.create_date
  is '����ʱ��';
comment on column WECHAT_LOG_ERROR.is_test_log
  is '�Ƿ��ǲ�����־';
alter table WECHAT_LOG_ERROR
  add constraint PK_WECHAT_LOG_ERROR primary key (GUID);

prompt
prompt Creating table WECHAT_PARAM_ACCESS
prompt ==================================
prompt
create table WECHAT_PARAM_ACCESS
(
  guid            VARCHAR2(50) default sys_guid() not null,
  access_desp     VARCHAR2(50) not null,
  app_id          VARCHAR2(50) not null,
  app_secret      VARCHAR2(50) not null,
  access_token    VARCHAR2(500),
  expires_in      VARCHAR2(50),
  last_time       DATE default sysdate not null,
  expiration_time DATE default SYSDATE+ 2 / 24 not null
)
;
comment on table WECHAT_PARAM_ACCESS
  is '΢�Ź��ں�-����-����';
comment on column WECHAT_PARAM_ACCESS.access_desp
  is '����';
comment on column WECHAT_PARAM_ACCESS.app_id
  is '���ں�appId';
comment on column WECHAT_PARAM_ACCESS.app_secret
  is '���ں�����';
comment on column WECHAT_PARAM_ACCESS.access_token
  is '���ںſ���';
comment on column WECHAT_PARAM_ACCESS.expires_in
  is '��Ч��';
comment on column WECHAT_PARAM_ACCESS.last_time
  is '��ȡʱ��';
comment on column WECHAT_PARAM_ACCESS.expiration_time
  is '����ʱ��';
alter table WECHAT_PARAM_ACCESS
  add constraint PK_WECHAT_PARAM_ACCESS primary key (GUID);

prompt
prompt Creating table WECHAT_PARAM_ERR
prompt ===============================
prompt
create table WECHAT_PARAM_ERR
(
  guid        VARCHAR2(50) default sys_guid() not null,
  err_code    VARCHAR2(50) not null,
  err_name    VARCHAR2(250) not null,
  create_date DATE default sysdate not null
)
;
comment on table WECHAT_PARAM_ERR
  is '΢�Ź��ں�-������-�������';
comment on column WECHAT_PARAM_ERR.err_code
  is '΢�Ŵ��󷵻ش���';
comment on column WECHAT_PARAM_ERR.err_name
  is '΢�Źٷ�������Ϣ';
comment on column WECHAT_PARAM_ERR.create_date
  is '����ʱ��';
alter table WECHAT_PARAM_ERR
  add constraint PK_WECHAT_PARAM_ERR primary key (GUID);

prompt
prompt Creating table WECHAT_USER_OPEN_ID
prompt ==================================
prompt
create table WECHAT_USER_OPEN_ID
(
  guid           VARCHAR2(50) default sys_guid() not null,
  user_id        VARCHAR2(50),
  app_id         VARCHAR2(150),
  subscribe      VARCHAR2(50),
  openid         VARCHAR2(50),
  nickname       VARCHAR2(50),
  sex            VARCHAR2(50),
  city           VARCHAR2(50),
  country        VARCHAR2(50),
  province       VARCHAR2(50),
  language       VARCHAR2(50),
  headimgurl     VARCHAR2(250),
  subscribe_time VARCHAR2(50),
  unionid        VARCHAR2(50),
  remark         VARCHAR2(50),
  groupid        VARCHAR2(50),
  create_date    DATE default sysdate not null
)
;
comment on table WECHAT_USER_OPEN_ID
  is '΢��-�û�OpenId';
comment on column WECHAT_USER_OPEN_ID.user_id
  is '�û����';
comment on column WECHAT_USER_OPEN_ID.app_id
  is '΢�Ź��ں�AppId';
comment on column WECHAT_USER_OPEN_ID.subscribe
  is '"	�û��Ƿ��ĸù��ںű�ʶ"';
comment on column WECHAT_USER_OPEN_ID.openid
  is '�û�Openid';
comment on column WECHAT_USER_OPEN_ID.nickname
  is '�ǳ�';
comment on column WECHAT_USER_OPEN_ID.create_date
  is '��ȡʱ��';
alter table WECHAT_USER_OPEN_ID
  add constraint PK_WECHAT_USER_OPEN_ID primary key (GUID);

prompt
prompt Creating sequence SERVERIDSEQUENCE
prompt ==================================
prompt
create sequence SERVERIDSEQUENCE
minvalue 1
maxvalue 9999999999999999999999999999
start with 101
increment by 1
cache 10;

prompt
prompt Creating view V_APP_SERVER
prompt ==========================
prompt
CREATE OR REPLACE FORCE VIEW V_APP_SERVER AS
SELECT A.GUID AS SERVER_GUID,
       A.DATA_LINK,
       A.SERVER_ID,
       D.DATA_COMMANDS,
       D.PROJECT_CODE,
       D.PROJECT_NAME,
       D.PROJECT_GUID,
       D.APP_REAMRK,
       D.APP_REGION,
       D.APP_REGION_NAME,
       D.APP_GUID,
       D.APP_BUSINESS_TYPE
  FROM BASE_SERVER_INFO A
  LEFT JOIN (SELECT B.GUID              AS APP_GUID,
                    B.SERVER_GUID,
                    B.Extend_Varchar1   AS APP_REAMRK,
                    C.PROJECT_CODE,
                    C.PROJECT_NAME,
                    C.GUID              AS PROJECT_GUID,
                    C.PROJECT_REGION    AS PROJECT_REGION,
                    X.name              as APP_REGION_NAME,
                    B.DATA_COMMANDS,
                    B.APP_REGION,
                    B.APP_BUSINESS_TYPE
               FROM APP_SERVER_PROJECT B
               LEFT JOIN APP_PROJECT_MANAGE C
                 ON B.PROJECT_GUID = C.GUID
               left join base_parameters x
                 on b.app_region = x.code) D
    ON (A.GUID = D.SERVER_GUID);

prompt
prompt Creating view V_DR_NEWEST_DISK
prompt ==============================
prompt
CREATE OR REPLACE FORCE VIEW V_DR_NEWEST_DISK AS
SELECT "GUID",
       "SERVER_DATA_LINK",
       SERVER_ID,
       BAT_NO,
       "DISK_NAME",
       "DISK_SURPLUS",
       "DISK_USED",
       "FILE_SYSTEM",
       "CREATE_DATE",
       "DISK_TOTAL",
       "ROW_INDEX"
  FROM (SELECT x.*,
               ROW_NUMBER() OVER(PARTITION BY x.SERVER_ID, disk_name order by create_date desc) AS row_index
          FROM mpi_server_disk_detail x)
 WHERE row_index = 1;

prompt
prompt Creating view V_DR_NEWEST_MSMQ
prompt ==============================
prompt
CREATE OR REPLACE FORCE VIEW V_DR_NEWEST_MSMQ AS
SELECT "GUID",
       "SERVER_DATA_LINK",
       SERVER_ID,
       BAT_NO,
       "MQ_NAME",
       "MQ_QTY",
       "IS_ACTIVE",
       "CREATE_DATE",
       "MQ_REMARK",
       "EXTEND_VARCHAR1",
       "EXTEND_VARCHAR2",
       "EXTEND_NUMBER1",
       "EXTEND_DATE",
       "ROW_INDEX"
  FROM (SELECT X.*,
               ROW_NUMBER() OVER(PARTITION BY X.SERVER_ID, MQ_NAME ORDER BY CREATE_DATE DESC) AS ROW_INDEX
          FROM MPI_SERVER_MSMQ X)
 WHERE ROW_INDEX = 1
   AND SERVER_ID IS NOT NULL;

prompt
prompt Creating view V_DR_NEWEST_SERVICES
prompt ==================================
prompt
CREATE OR REPLACE FORCE VIEW V_DR_NEWEST_SERVICES AS
SELECT "GUID",
       "SERVER_DATA_LINK",
       SERVER_ID,
       BAT_NO,
       "SERVICES_NAME",
       "SERVICES_ID",
       "SERVICES_REMARK",
       "STATUS",
       "THREAD_NUMS",
       "CREATE_DATE",
       "ROW_INDEX"
  FROM (SELECT X.*,
               ROW_NUMBER() OVER(PARTITION BY X.SERVER_ID, SERVICES_NAME ORDER BY CREATE_DATE DESC) AS ROW_INDEX
          FROM MPI_SERVER_SERVICES X)
 WHERE ROW_INDEX = 1
   AND SERVER_ID IS NOT NULL;

prompt
prompt Creating view V_PROJECT_SERVER
prompt ==============================
prompt
CREATE OR REPLACE FORCE VIEW V_PROJECT_SERVER AS
SELECT  A.SERVER_ID,
       A."NAME",
       A."IP",
        A."REMARK",
         A."STATUS",
         A."DATA_LINK",
         A.SERVER_REGION,

       D.PROJECT_CODE,
       D.PROJECT_NAME,
       P.NAME AS REGION_NAME
  FROM BASE_SERVER_INFO A
  LEFT JOIN (SELECT B.SERVER_ID,
                    C.PROJECT_CODE,
                    C.PROJECT_NAME
               FROM RELATION_SERVER_PROJECT B
               INNER JOIN BASE_PROJECT_MANAGE C  ON B.PROJECT_ID = C.PROJECT_CODE) D
    ON A.SERVER_ID = D.SERVER_ID
  LEFT JOIN (SELECT CODE,NAME FROM BASE_PARAMETERS WHERE GROUP_CODE='PROVINCE') P ON A.SERVER_REGION = P.CODE;

prompt
prompt Creating view V_SERVER_CONTROL
prompt ==============================
prompt
CREATE OR REPLACE FORCE VIEW V_SERVER_CONTROL AS
SELECT
       B.GUID,
       B.EXTEND_VARCHAR2 AS SERVER_ID,
       B.DATA_TYPE,
       A.NAME AS DATA_TYPE_NAME,
       B.DATA_VALUE,
       B.CREATE_DATE,
       B.SERVER_DATA_LINK,
       B.STATUS,
       C.NAME AS STATUS_NAME,
       B.DESCRIPTION,
       B.EXTEND_VARCHAR1,
       B.EXTEND_VARCHAR2,
       B.EXTEND_NUMBER1,
       B.EXTEND_DATE
  FROM BASE_SERVER_INFO_CONTROL B
  LEFT JOIN BASE_PARAMETERS A
    ON A.CODE = B.DATA_TYPE
    LEFT JOIN     BASE_PARAMETERS C
       ON C.CODE = B.STATUS
       WHERE C.GROUP_CODE='MPI_SERVER_CONTROL_STATUS';

prompt
prompt Creating view V_REPORT_SERVER_CONTROL
prompt =====================================
prompt
CREATE OR REPLACE FORCE VIEW V_REPORT_SERVER_CONTROL AS
SELECT A.GUID,
       A.PROJECT_REGION,
       A.PROJECT_REGION_NAME,
       A.PROJECT_CODE,
       A.PROJECT_NAME,
       A.NAME,
       A.IP,
       A.SERVER_ENABLE,
       B.DATA_TYPE,
       B.DATA_TYPE_NAME,
       B.DATA_VALUE,
       B.STATUS_NAME,
       B.CREATE_DATE,
       A.DATA_LINK
  FROM V_PROJECT_SERVER A
 RIGHT JOIN V_SERVER_CONTROL B
    ON A.SERVER_ID = B.SERVER_ID

 ORDER BY A.PROJECT_REGION, A.PROJECT_NAME, A.IP, B.DATA_TYPE, B.DATA_VALUE;

prompt
prompt Creating view V_RLAT_SERVER_PROJECT
prompt ===================================
prompt
CREATE OR REPLACE FORCE VIEW V_RLAT_SERVER_PROJECT AS
SELECT A."GUID",
       A."NAME",
       A."IP",
       A."PROCESSOR",
       A."SYSTEM_TYPE",
       A."SYSTEM_VERSION",
       A."CUR_DATE",
       A."WORK_GROUP",
       A."IS_ACTIVE",
       A."REMARK",
       A."CREATE_DATE",
       A."STATUS",
       A."ENABLE",
       A. EXECUTE_MODEL ,
       A.IP_INTERNAL_NETWORK ,
       A.IP_VIRTUAL,
       A.SERVER_TYPE,
       A.REMARK_CLOSE_CONTROLLOR ,
       A.SERVER_ID,
       CASE
         WHEN A."ENABLE" = 1 THEN
          '�������'
         WHEN A."ENABLE" = 2 THEN
          '���ڴ���'
         ELSE
          '��ͣ���'
       END AS SERVER_ENABLE,
       A."URL",
       A."DATA_LINK",
       A."DATA_TYPE",
       D.PROJECT_GUID,
       D."PROJECT_CODE",
       D."PROJECT_NAME",
       D.PROJECT_REGION,
       P.NAME AS PROJECT_REGION_NAME
  FROM BASE_SERVER_INFO A
  LEFT JOIN (SELECT B.SERVER_ID,
                    C.PROJECT_CODE,
                    C.PROJECT_NAME,
                    C.GUID           AS PROJECT_GUID,
                    C.PROJECT_REGION AS PROJECT_REGION
               FROM relation_server_project B
               LEFT JOIN BASE_PROJECT_MANAGE C
                 ON B.PROJECT_ID = C.PROJECT_CODE) D
    ON (A.SERVER_ID = D.SERVER_ID )
  LEFT JOIN BASE_PARAMETERS P
    ON D.PROJECT_REGION = P.CODE;

prompt
prompt Creating view V_SERVER_SEND_TIMER
prompt =================================
prompt
create or replace force view v_server_send_timer as
select B.GUID AS GUID,
        B.SERVER_ID AS SERVER_ID,
        A.SERVER_ID AS SERVER_ID2,
        A.NAME AS SERVER_NAME,
        B.INTERVAL_TYPE AS INTERVAL_TYPE,
        B.DATA_TYPE AS DATA_TYPE,
        A.DATA_LINK AS DATA_LINK,
        A.ENABLE AS ENABLE,
        B.CREATE_DATE AS CREATE_DATE,
        B.LAST_SEND_DATE AS  LAST_SEND_DATE
    FROM BASE_SERVER_INFO A
    INNER JOIN MPI_DATA_RECEIVE_TIMER B
    ON A.GUID=B.SERVER_ID;

prompt
prompt Creating view V_TEST
prompt ====================
prompt
create or replace force view v_test as
select "GUID","SYS_MENU_DETAIL_ID","NAME","IP","PROCESSOR","SYSTEM_TYPE","SYSTEM_VERSION","CUR_DATE","WORK_GROUP","IS_ACTIVE","REMARK","CREATE_DATE","STATUS","URL","DATA_LINK","DATA_TYPE","EXECUTE_MODEL","IP_INTERNAL_NETWORK","IP_VIRTUAL","SERVER_TYPE","REMARK_CLOSE_CONTROLLOR","SERVER_ID","SERVER_REGION","ENABLE","SERVER_MODEL"
    from base_server_info where rownum=1;

prompt
prompt Creating view V_USER_PROJECT
prompt ============================
prompt
CREATE OR REPLACE FORCE VIEW V_USER_PROJECT AS
SELECT A.PERSON_ID,
       A.PERSON_NAME,
       A.PERSON_EMAIL,
       A.PERSON_TYPE,
       B.REC_TYPE,
       B.REC_ADDRESS,
       E.PROJECT_ID
  FROM SSO_USER A
 INNER JOIN BASE_PERSON_REC_ADDRESS B    ON A.PERSON_ID = B.PERSON_ID
 INNER JOIN (
 SELECT C.PERSON_ID,D.PROJECT_ID FROM RELATION_ROLE_PERSON C
 INNER JOIN RELATION_ROLE_PROJECT D ON C.ROLE_ID =D.ROLE_ID
 WHERE C.APP_ID='WEB'
 ) E    ON A.PERSON_ID = E.PERSON_ID;

prompt
prompt Creating view V_USER_REC_LIST
prompt =============================
prompt
CREATE OR REPLACE FORCE VIEW V_USER_REC_LIST AS
SELECT distinct A.PERSON_ID,
       A.PERSON_NAME,
       A.PERSON_EMAIL,
       A.PERSON_TYPE,
       D.REC_TYPE,
       D.REC_ADDRESS,
       b.role_type,
       c.guid AS server_guid
  FROM BASE_PERSON_INFO A
 INNER JOIN BASE_PERSON_REC_ADDRESS D
    ON A.PERSON_ID = D.PERSON_ID
 INNER JOIN BASE_SERVER_PERSON B
    ON A.PERSON_ID = B.PERSON_GUID
 INNER JOIN BASE_SERVER_INFO C
    ON B.SERVER_GUID = C.GUID;

prompt
prompt Creating function FN_GET_SERVERWARNINGLEVEL
prompt ===========================================
prompt
CREATE OR REPLACE FUNCTION FN_GET_SERVERWARNINGLEVEL
(
    P_SERVER_ID VARCHAR2
)
RETURN VARCHAR2 IS
/****************************************************************************************
  �������������ݲɼ�������ת����Ӧ�ĵȼ�
  �޸�˵����
  �汾��          �༭ʱ��         �༭��                  �޸�����
  1.0.0          2019-08-21       KanadeM                  CREATOR
****************************************************************************************/

V_TOTAL_CONTROL VARCHAR2(10);
V_SERVICE_TOTAL VARCHAR2(10);
V_SERVICE_STOP VARCHAR2(10);
SERVICE_STOP  VARCHAR2(10);
V_OVERTIME VARCHAR2(10);
V_TOTAL_OVERTIME VARCHAR2(10);
V_REGION_WARNCOUNT NUMBER;
V_TOTAL_DISK VARCHAR2(10);
V_MAX_DISK_WARNING VARCHAR2(10);
V_MAX_CPU_LEVEL VARCHAR2(10);
V_MAX_MEMORY_LEVEL VARCHAR2(10);
MAX_WARNING_LEVEL VARCHAR2(250);

BEGIN
  MAX_WARNING_LEVEL := 0;
  /*��ȡ��ʱʱ������*/
  SELECT VALUE INTO V_OVERTIME FROM  BASE_PARAMETERS WHERE GROUP_CODE = 'OVERTIME' AND CODE = 'OVERTIME';
  /*��ȡȫ���ܿ�����*/
  SELECT COUNT(*) INTO V_TOTAL_CONTROL FROM SERVER_CONTROL_INFO 
  WHERE CONTROL_STATUS <> '0'  AND SERVER_ID = P_SERVER_ID;
  /*��ȡȫ����ʱ����*/
  IF V_TOTAL_CONTROL > 0 THEN 
     SELECT COUNT(*) INTO V_TOTAL_OVERTIME FROM SERVER_CONTROL_INFO 
     WHERE CONTROL_STATUS <> '0' AND UPDATE_DATE IS NOT NULL AND UPDATE_DATE < (SEND_DATE - V_OVERTIME/60/24) AND SERVER_ID = P_SERVER_ID;
     MAX_WARNING_LEVEL := (V_TOTAL_OVERTIME / V_TOTAL_CONTROL)* 100 ;   /*�������Ԥ��ֵ*/
     /*��ȡȫ����������*/
     SELECT COUNT(*) INTO V_SERVICE_TOTAL FROM SERVER_CONTROL_INFO 
     WHERE CONTROL_STATUS <> '0' AND UPDATE_DATE IS NOT NULL AND UPDATE_DATE > (SEND_DATE - V_OVERTIME/60/24) 
     AND MSG_TYPE = 'Y00004' AND SERVER_ID = P_SERVER_ID;
     /*��ȡȫ��ֹͣ��������*/
     IF V_SERVICE_TOTAL > 0 THEN
        SELECT COUNT(*) INTO V_SERVICE_STOP FROM SERVER_CONTROL_INFO 
               WHERE CONTROL_STATUS <> '0' AND UPDATE_DATE IS NOT NULL AND UPDATE_DATE > (SEND_DATE - V_OVERTIME/60/24) 
                     AND MSG_TYPE = 'Y00004' AND CONTROL_WARNING_VALUE = CONTROL_VALUE AND SERVER_ID = P_SERVER_ID;
        IF (V_SERVICE_STOP / V_SERVICE_TOTAL)* 100 > MAX_WARNING_LEVEL THEN
              MAX_WARNING_LEVEL := (V_SERVICE_STOP / V_SERVICE_TOTAL)* 100 ;   /*�������Ԥ��ֵ*/
              END IF;
              END IF;
  /*��ȡ������Ԥ��ֵ*/
  SELECT MAX(CASE WHEN A.CONTROL_VALUE > A.WARNING_LEVEL4 AND A.WARNING_LEVEL IS NOT NULL THEN '100'
                    WHEN A.CONTROL_VALUE > A.WARNING_LEVEL3 AND A.WARNING_LEVEL IS NOT NULL THEN '75'
                    WHEN A.CONTROL_VALUE > A.WARNING_LEVEL2  AND A.WARNING_LEVEL IS NOT NULL THEN '50'
                    WHEN A.CONTROL_VALUE > A.WARNING_LEVEL1  AND A.WARNING_LEVEL IS NOT NULL THEN '25'
                    WHEN A.WARNING_LEVEL IS NOT NULL THEN '0'
                    ELSE '' END) INTO V_MAX_DISK_WARNING
                    FROM SERVER_CONTROL_INFO A
                    WHERE CONTROL_STATUS <> '0' AND UPDATE_DATE IS NOT NULL AND UPDATE_DATE > (SEND_DATE - V_OVERTIME/60/24) 
                    AND MSG_TYPE = 'Y00001' AND SERVER_ID = P_SERVER_ID;
  IF V_MAX_DISK_WARNING > MAX_WARNING_LEVEL THEN
    MAX_WARNING_LEVEL := V_MAX_DISK_WARNING ;   /*�������Ԥ��ֵ*/
  END IF;
  /*��ȡ���CPUԤ��ֵ*/
  SELECT MAX(CASE WHEN A.CONTROL_VALUE > A.WARNING_LEVEL4 AND A.WARNING_LEVEL IS NOT NULL THEN '100'
                    WHEN A.CONTROL_VALUE > A.WARNING_LEVEL3 AND A.WARNING_LEVEL IS NOT NULL THEN '75'
                    WHEN A.CONTROL_VALUE > A.WARNING_LEVEL2  AND A.WARNING_LEVEL IS NOT NULL THEN '50'
                    WHEN A.CONTROL_VALUE > A.WARNING_LEVEL1  AND A.WARNING_LEVEL IS NOT NULL THEN '25'
                    WHEN A.WARNING_LEVEL IS NOT NULL THEN '0'
                    ELSE '' END) INTO V_MAX_CPU_LEVEL
                    FROM SERVER_CONTROL_INFO A
                    WHERE CONTROL_STATUS <> '0' AND UPDATE_DATE IS NOT NULL AND UPDATE_DATE > (SEND_DATE - V_OVERTIME/60/24) 
                    AND MSG_TYPE = 'Y00006' AND SERVER_ID = P_SERVER_ID;
  IF V_MAX_CPU_LEVEL > MAX_WARNING_LEVEL THEN
    MAX_WARNING_LEVEL := V_MAX_CPU_LEVEL ;   /*�������Ԥ��ֵ*/
  END IF;
  /*��ȡ����ڴ�Ԥ��ֵ*/
  SELECT MAX(CASE WHEN A.CONTROL_VALUE > A.WARNING_LEVEL4 AND A.WARNING_LEVEL IS NOT NULL THEN '100'
                    WHEN A.CONTROL_VALUE > A.WARNING_LEVEL3 AND A.WARNING_LEVEL IS NOT NULL THEN '75'
                    WHEN A.CONTROL_VALUE > A.WARNING_LEVEL2  AND A.WARNING_LEVEL IS NOT NULL THEN '50'
                    WHEN A.CONTROL_VALUE > A.WARNING_LEVEL1  AND A.WARNING_LEVEL IS NOT NULL THEN '25'
                    WHEN A.WARNING_LEVEL IS NOT NULL THEN '0'
                    ELSE '' END) INTO V_MAX_MEMORY_LEVEL
                    FROM SERVER_CONTROL_INFO A
                    WHERE CONTROL_STATUS <> '0' AND UPDATE_DATE IS NOT NULL AND UPDATE_DATE > (SEND_DATE - V_OVERTIME/60/24) 
                    AND MSG_TYPE = 'Y00007' AND SERVER_ID = P_SERVER_ID;
  IF V_MAX_MEMORY_LEVEL > MAX_WARNING_LEVEL THEN
    MAX_WARNING_LEVEL := V_MAX_MEMORY_LEVEL ;   /*�������Ԥ��ֵ*/
  END IF;
  END IF;
  RETURN MAX_WARNING_LEVEL;

END FN_GET_SERVERWARNINGLEVEL;
/

prompt
prompt Creating function FN_GET_MAXWARNINGLEVEL
prompt ========================================
prompt
CREATE OR REPLACE FUNCTION FN_GET_MAXWARNINGLEVEL
(
    P_REGION_NAME VARCHAR2
)
RETURN VARCHAR2 IS
/****************************************************************************************
  �������������ݲɼ�������ת����Ӧ�ĵȼ�
  �޸�˵����
  �汾��          �༭ʱ��         �༭��                  �޸�����
  1.0.0          2019-08-21       KanadeM                  CREATOR
****************************************************************************************/

TOTAL_CONTROL VARCHAR2(10);
SERVICE_TOTAL VARCHAR2(10);
SERVICE_STOP  VARCHAR2(10);
V_REGION_WARNCOUNT NUMBER;
MAX_SERVICE_COUNT VARCHAR2(10);
MAX_WARNING_LEVEL VARCHAR2(250);
MAX_CONTROL_LEVEL VARCHAR2(10);
MAX_OVERTIME_COUNT VARCHAR2(10);

BEGIN
  MAX_WARNING_LEVEL := 0;
  SELECT MAX(FN_GET_SERVERWARNINGLEVEL(A.SERVER_ID)) INTO MAX_WARNING_LEVEL FROM BASE_SERVER_INFO A 
       INNER JOIN SERVER_CONTROL_INFO B
       ON A.SERVER_ID = B.SERVER_ID
       WHERE A.SERVER_REGION = P_REGION_NAME AND A.ENABLE = '1';
  RETURN MAX_WARNING_LEVEL;

END FN_GET_MAXWARNINGLEVEL;
/

prompt
prompt Creating function FN_GET_TRADE_CODE
prompt ===================================
prompt
CREATE OR REPLACE FUNCTION FN_GET_TRADE_CODE
(
    P_VALUE NUMBER,
    P_TYPE VARCHAR2
)
RETURN VARCHAR2 IS
/****************************************************************************************
  �������������ݲɼ�������ת����Ӧ�ĵȼ�
  �޸�˵����
  �汾��          �༭ʱ��         �༭��                  �޸�����
  1.0.0          2019-07-30       xiaoxiang.sheng          CREATOR
****************************************************************************************/
T_RESULT VARCHAR2(10);
V_TEMP VARCHAR2(10);
V_COUNTA10 NUMBER;
V_COUNTA20 NUMBER;
V_COUNTA30 NUMBER;
--V_COUNTA40 NUMBER;
V_COUNTA50 NUMBER;
BEGIN
    V_TEMP:='A99';
    SELECT VALUE INTO V_COUNTA10 FROM BASE_THRESHOLD_SET_GRADE WHERE TYPE=P_TYPE AND CODE='A10';
    SELECT VALUE INTO V_COUNTA20 FROM BASE_THRESHOLD_SET_GRADE WHERE TYPE=P_TYPE AND CODE='A20';
    SELECT VALUE INTO V_COUNTA30 FROM BASE_THRESHOLD_SET_GRADE WHERE TYPE=P_TYPE AND CODE='A30';
    --SELECT VALUE INTO V_COUNTA40 FROM BASE_THRESHOLD_SET_GRADE WHERE TYPE=P_TYPE AND CODE='A40';
    SELECT VALUE INTO V_COUNTA50 FROM BASE_THRESHOLD_SET_GRADE WHERE TYPE=P_TYPE AND CODE='A50';

    IF P_VALUE<=V_COUNTA50 THEN
      V_TEMP:='A50';
    --ELSIF P_VALUE<=V_COUNTA40 THEN
      --V_TEMP:='A40';
    ELSIF P_VALUE<=V_COUNTA30 THEN
      V_TEMP:='A30';
    ELSIF P_VALUE<=V_COUNTA20 THEN
      V_TEMP:='A20';
    ELSIF P_VALUE<=V_COUNTA10 THEN
      V_TEMP:='A10';
    END IF;

    RETURN V_TEMP;

    EXCEPTION  WHEN OTHERS THEN
     IF P_VALUE IS NULL THEN
       RETURN 'A99';
     ELSE
       RETURN 'A99';
     END IF;
END FN_GET_TRADE_CODE;
/

prompt
prompt Creating function FN_GET_MAX_PROVINCE
prompt =====================================
prompt
CREATE OR REPLACE FUNCTION FN_GET_MAX_PROVINCE
(
    P_NAME VARCHAR2
)
RETURN VARCHAR2 IS
/****************************************************************************************
  �������������ݲɼ�������ת����Ӧ�ĵȼ�
  �޸�˵����
  �汾��          �༭ʱ��         �༭��                  �޸�����
  1.0.0          2019-07-30       xiaoxiang.sheng          CREATOR
****************************************************************************************/
T_RESULT VARCHAR2(10);
V_TEMP VARCHAR2(10);
BEGIN

   /* SELECT a.CODE,a.NAME,t.MSG_TYPE,
    CASE WHEN MSG_TYPE IN ('Y00001','Y00011') THEN t.Control_Value*100 WHEN Control_Value is null then 0 ELSE t.Control_Value*1 END,
    FN_GET_TRADE_CODE(CASE WHEN MSG_TYPE IN ('Y00001','Y00011') THEN t.Control_Value*100 WHEN Control_Value is null then 0 ELSE t.Control_Value*1 END,DECODE(t.MSG_TYPE,'Y00001','WARNING_DISK_USED', 'Y00002','WARNING_MSMQ_QTY','I20','WARNING_TIMEOUT','Y00011')),
    CASE WHEN MSG_TYPE IN ('Y00001','Y00011') THEN t.Control_Value*100 ELSE t.Control_Value*1 END,
    t.send_date,
    t.update_date,
    FN_GET_TRADE_CODE( CASE WHEN t.update_date<t.send_date THEN (SYSDATE-send_date)*24*60*60  ELSE (t.update_date-t.send_date)*24*60*60 END,'WARNING_TIMEOUT'),
    CASE WHEN t.update_date<t.send_date THEN (SYSDATE-send_date)*24*60*60  ELSE (t.update_date-t.send_date)*24*60*60 END
    from SERVER_CONTROL_INFO t left join BASE_PARAMETERS a on instr(t.server_id,a.Code)>0 and a.GROUP_CODE = 'PROVINCE'  where  t.msg_type not in('Y00004','Y00008','Y00013') and t.update_date is not null and t.send_date is not null order by t.update_date desc;
   */
  SELECT 
  MIN(
    least( 
            FN_GET_TRADE_CODE(CASE WHEN MSG_TYPE IN ('Y00001','Y00011') THEN t.Control_Value*100 WHEN Control_Value is null then 0 ELSE t.Control_Value*1 END,DECODE(t.MSG_TYPE,'Y00001','WARNING_DISK_USED', 'Y00002','WARNING_MSMQ_QTY','Y00011','WARNING_ORACLE')),
            FN_GET_TRADE_CODE((SYSDATE-t.update_date)*24*60,'WARNING_TIMEOUT')
         )
  ) INTO V_TEMP
  FROM SERVER_CONTROL_INFO t left join BASE_PARAMETERS a on instr(t.server_id,a.Code)>0 and a.GROUP_CODE = 'PROVINCE'  where  t.msg_type not in('Y00004','Y00008','Y00013')
  and EXISTS(select 1 from BASE_SERVER_INFO b where b.enable='1' and b.server_region=a.code)
  and t.update_date is not null and t.send_date is not null and a.Name=P_NAME
  GROUP BY a.CODE,a.NAME;

  SELECT NAME INTO T_RESULT FROM BASE_TRADE WHERE CODE=V_TEMP;
  RETURN T_RESULT;

END FN_GET_MAX_PROVINCE;
/

prompt
prompt Creating function FN_GET_MAX_TRADE
prompt ==================================
prompt
CREATE OR REPLACE FUNCTION FN_GET_MAX_TRADE
(
    P_NAME VARCHAR2
)
RETURN VARCHAR2 IS
/****************************************************************************************
  �������������ݲɼ�������ת����Ӧ�ĵȼ�
  �޸�˵����
  �汾��          �༭ʱ��         �༭��                  �޸�����
  1.0.0          2019-07-30       xiaoxiang.sheng          CREATOR
****************************************************************************************/
T_RESULT VARCHAR2(10);
V_TEMP VARCHAR2(10);
BEGIN


  SELECT least(FN_GET_TRADE_CODE(10,'CPU'),
         FN_GET_TRADE_CODE(10,'DB'),
         FN_GET_TRADE_CODE((SELECT 100*SUM(A.CONTROL_VALUE)/COUNT(1*V.VALUE) DISK from server_control_info a  INNER JOIN BASE_CONTROL_VALUE V ON A.MSG_TYPE=V.CODE where   a.server_id=(SELECT max(D.SERVER_ID) FROM (BASE_SERVER_INFO C INNER JOIN
                            (SELECT B.SERVER_ID,MAX(B.UPDATE_DATE) WARNING_DATE FROM BASE_SERVER_INFO A,SERVER_CONTROL_INFO B
                            WHERE A.GUID = B.SERVER_ID AND A.STATUS = '0' GROUP BY B.SERVER_ID) D
                            ON C.GUID = D.SERVER_ID)INNER JOIN (SELECT CODE,NAME FROM BASE_PARAMETERS WHERE GROUP_CODE = 'PROVINCE') E
                            ON C.SERVER_REGION = E.CODE WHERE E.NAME||C.NAME=P_NAME) AND A.MSG_TYPE='Y00001' AND ROWNUM=1),'WARNING_DISK_USED'),
         FN_GET_TRADE_CODE((SELECT (SYSDATE-D.WARNING_DATE)*24*60  FROM (BASE_SERVER_INFO C INNER JOIN
                            (SELECT B.SERVER_ID,MAX(B.UPDATE_DATE) WARNING_DATE FROM BASE_SERVER_INFO A,SERVER_CONTROL_INFO B
                            WHERE A.GUID = B.SERVER_ID AND A.STATUS = '0' GROUP BY B.SERVER_ID) D
                            ON C.GUID = D.SERVER_ID)INNER JOIN (SELECT CODE,NAME FROM BASE_PARAMETERS WHERE GROUP_CODE = 'PROVINCE') E
                            ON C.SERVER_REGION = E.CODE WHERE E.NAME||C.NAME= P_NAME AND ROWNUM=1),'WARNING_TIMEOUT'),
         FN_GET_TRADE_CODE((select MAX(A.CONTROL_VALUE/V.VALUE)*100 from server_control_info a INNER JOIN BASE_CONTROL_VALUE V ON A.MSG_TYPE=V.CODE  where   a.server_id=(SELECT max(D.SERVER_ID) FROM (BASE_SERVER_INFO C INNER JOIN
                            (SELECT B.SERVER_ID,MAX(B.UPDATE_DATE) WARNING_DATE FROM BASE_SERVER_INFO A,SERVER_CONTROL_INFO B
                            WHERE A.GUID = B.SERVER_ID AND A.STATUS = '0' GROUP BY B.SERVER_ID) D
                            ON C.GUID = D.SERVER_ID)INNER JOIN (SELECT CODE,NAME FROM BASE_PARAMETERS WHERE GROUP_CODE = 'PROVINCE') E
                            ON C.SERVER_REGION = E.CODE WHERE E.NAME||C.NAME=P_NAME) AND A.MSG_TYPE='Y00002' AND ROWNUM=1),'WARNING_MSMQ_QTY')) INTO V_TEMP
         FROM DUAL;

    SELECT NAME INTO T_RESULT FROM BASE_TRADE WHERE CODE=V_TEMP;
    RETURN T_RESULT;

   
    
END FN_GET_MAX_TRADE;
/

prompt
prompt Creating function FN_GET_TRADE
prompt ==============================
prompt
CREATE OR REPLACE FUNCTION FN_GET_TRADE
(
    P_VALUE NUMBER,
    P_TYPE VARCHAR2
)
RETURN VARCHAR2 IS
/****************************************************************************************
  �������������ݲɼ�������ת����Ӧ�ĵȼ�
  �޸�˵����
  �汾��          �༭ʱ��         �༭��                  �޸�����
  1.0.0          2019-07-30       xiaoxiang.sheng          CREATOR
****************************************************************************************/
T_RESULT VARCHAR2(10);
V_TEMP VARCHAR2(10);
V_COUNTA10 NUMBER;
V_COUNTA20 NUMBER;
V_COUNTA30 NUMBER;
--V_COUNTA40 NUMBER;(ע�͵�40����������ͣ���Ϊ��ǰ�˲���ʾ�����á�����ģ�CXH�޸�
V_COUNTA50 NUMBER;
BEGIN
    SELECT VALUE INTO V_COUNTA10 FROM BASE_THRESHOLD_SET_GRADE WHERE TYPE=P_TYPE AND CODE='A10';
    SELECT VALUE INTO V_COUNTA20 FROM BASE_THRESHOLD_SET_GRADE WHERE TYPE=P_TYPE AND CODE='A20';
    SELECT VALUE INTO V_COUNTA30 FROM BASE_THRESHOLD_SET_GRADE WHERE TYPE=P_TYPE AND CODE='A30';
    --SELECT VALUE INTO V_COUNTA40 FROM BASE_THRESHOLD_SET_GRADE WHERE TYPE=P_TYPE AND CODE='A40';
    SELECT VALUE INTO V_COUNTA50 FROM BASE_THRESHOLD_SET_GRADE WHERE TYPE=P_TYPE AND CODE='A50';

    IF P_VALUE<=V_COUNTA50 THEN
      V_TEMP:='A50';
  -- ELSIF P_VALUE<=V_COUNTA40 THEN
   --   V_TEMP:='A40';
    ELSIF P_VALUE<=V_COUNTA30 THEN
      V_TEMP:='A30';
    ELSIF P_VALUE<=V_COUNTA20 THEN
      V_TEMP:='A20';
    ELSIF P_VALUE<=V_COUNTA10 THEN
      V_TEMP:='A10';
    END IF;
    
  /*  IF P_VALUE>=V_COUNTA10 THEN
      V_TEMP:='A10';
    ELSIF P_VALUE>=V_COUNTA20 THEN
      V_TEMP:='A20';
    ELSIF P_VALUE>=V_COUNTA30 THEN
      V_TEMP:='A30';
    ELSIF P_VALUE>=V_COUNTA40 THEN
      V_TEMP:='A40';
    ELSIF P_VALUE>=V_COUNTA50 THEN
      V_TEMP:='A50';
    END IF;*/
    
    SELECT NAME INTO T_RESULT FROM BASE_TRADE WHERE CODE=V_TEMP;
    RETURN T_RESULT;

    EXCEPTION  WHEN OTHERS THEN
     IF P_VALUE IS NULL THEN
       RETURN 'δ�ɼ�������';
     ELSE
       RETURN 'δ����Ԥ���ȼ�';
     END IF;
END FN_GET_TRADE;
/

prompt
prompt Creating function FN_GET_TRADE_MAP
prompt ==================================
prompt
CREATE OR REPLACE FUNCTION FN_GET_TRADE_MAP
(
    P_VALUE VARCHAR2
)
RETURN VARCHAR2 IS
/****************************************************************************************
  �������������ݲɼ�������ת����Ӧ�ĵȼ�
  �޸�˵����
  �汾��          �༭ʱ��         �༭��                  �޸�����
  1.0.0          2019-07-30       xiaoxiang.sheng          CREATOR
****************************************************************************************/
T_RESULT VARCHAR2(10);
V_TEMP VARCHAR2(10);

BEGIN
    IF P_VALUE='����' THEN
      V_TEMP:=100;
    ELSIF P_VALUE='�ϲ�' THEN
      V_TEMP:=80;
    ELSIF P_VALUE='�е�' THEN
      V_TEMP:=60;
    ELSIF P_VALUE='����' THEN
      V_TEMP:=40;
    ELSIF P_VALUE='����' THEN
      V_TEMP:=20;
    END IF;
    return  V_TEMP;

END FN_GET_TRADE_MAP;
/

prompt
prompt Creating function FN_GET_WARNCOUNT
prompt ==================================
prompt
CREATE OR REPLACE FUNCTION FN_GET_WARNCOUNT
(
    P_SERVERID VARCHAR2
)
RETURN VARCHAR2 IS
/****************************************************************************************
  �������������ݲɼ�������ת����Ӧ�ĵȼ�
  �޸�˵����
  �汾��          �༭ʱ��         �༭��                  �޸�����
  1.0.0          2019-08-21       KanadeM                  CREATOR
****************************************************************************************/
T_RESULT VARCHAR2(10);
BEGIN
  SELECT
  MIN(
    least(
            FN_GET_TRADE_CODE(CASE WHEN MSG_TYPE IN ('Y00001','Y00011') THEN t.Control_Value*100 WHEN Control_Value is null then 0 ELSE t.Control_Value*1 END,DECODE(t.MSG_TYPE,'Y00001','WARNING_DISK_USED', 'Y00002','WARNING_MSMQ_QTY','Y00011','WARNING_ORACLE')),
            FN_GET_TRADE_CODE((SYSDATE-t.update_date)*24*60,'WARNING_TIMEOUT')
         )
  ) INTO V_TEMP
  FROM SERVER_CONTROL_INFO t left join BASE_PARAMETERS a on instr(t.server_id,a.Code)>0 and a.GROUP_CODE = 'PROVINCE'  where  t.msg_type not in('Y00004','Y00008','Y00013')
  and EXISTS(select 1 from BASE_SERVER_INFO b where b.enable='1' and b.server_region=a.code)
  and t.update_date is not null and t.send_date is not null and a.Name=P_NAME
  GROUP BY a.CODE,a.NAME;

  SELECT NAME INTO T_RESULT FROM BASE_TRADE WHERE CODE=V_TEMP;
  RETURN T_RESULT;

END FN_GET_WARNCOUNT;
/

prompt
prompt Creating function FN_WARNINGLEVELTOCHAR
prompt =======================================
prompt
CREATE OR REPLACE FUNCTION FN_WARNINGLEVELTOCHAR
(
    P_WARNING_LEVEL VARCHAR2
)
RETURN VARCHAR2 IS
/****************************************************************************************
  �������������ݲɼ�������ת����Ӧ�ĵȼ�
  �޸�˵����
  �汾��          �༭ʱ��         �༭��                  �޸�����
  1.0.0          2019-08-21       KanadeM                  CREATOR
****************************************************************************************/

TOTAL_CONTROL VARCHAR2(10);
V_REGION_WARNCOUNT NUMBER;
MAX_SERVICE_COUNT VARCHAR2(10);
MAX_WARNING_LEVEL VARCHAR2(10);
MAX_CONTROL_LEVEL VARCHAR2(10);
MAX_OVERTIME_COUNT VARCHAR2(10);

BEGIN
  CASE 
    WHEN P_WARNING_LEVEL >= 75 THEN
      MAX_WARNING_LEVEL := '����';
    WHEN P_WARNING_LEVEL >= 50 THEN
      MAX_WARNING_LEVEL := '�ж�';
    WHEN P_WARNING_LEVEL >= 25 THEN
      MAX_WARNING_LEVEL := '���';
    WHEN P_WARNING_LEVEL > 0 THEN
      MAX_WARNING_LEVEL := '����';
    ELSE  MAX_WARNING_LEVEL := '����';
  END CASE;
  RETURN MAX_WARNING_LEVEL;

END FN_WARNINGLEVELTOCHAR;
/

prompt
prompt Creating function FUNC_TEST
prompt ===========================
prompt
create or replace function func_test(Name in type, Name in type, ...) return  is
  FunctionResult ;
begin
  
  return(FunctionResult);
end func_test;
/

prompt
prompt Creating function F_REGION_NAME2CODE
prompt ====================================
prompt
CREATE OR REPLACE FUNCTION F_REGION_NAME2CODE(REGION_NAME VARCHAR)
    RETURN VARCHAR
    IS
    REGION_CODE VARCHAR(20);
BEGIN
    SELECT CODE INTO REGION_CODE FROM BASE_PARAMETERS WHERE GROUP_CODE = 'PROVINCE' AND NAME = REGION_NAME;
    RETURN REGION_CODE;
END F_REGION_NAME2CODE;
/

prompt
prompt Creating function REGION_CODE2NAME
prompt ==================================
prompt
CREATE OR REPLACE FUNCTION REGION_CODE2NAME(REGION_CODE VARCHAR)
    RETURN VARCHAR
    IS
    REGION_NAME VARCHAR(20);
BEGIN
    SELECT NAME INTO REGION_NAME FROM BASE_PARAMETERS WHERE GROUP_CODE = 'PROVINCE' AND CODE = REGION_CODE;
    RETURN REGION_NAME;
END REGION_CODE2NAME;
/

prompt
prompt Creating function REGION_MSGTYPE2NAME
prompt =====================================
prompt
CREATE OR REPLACE FUNCTION REGION_MSGTYPE2NAME(MSG_TYPE VARCHAR)
    RETURN VARCHAR
    IS
    MSG_NAME VARCHAR(20);
BEGIN
    SELECT NAME INTO MSG_NAME FROM BASE_PARAMETERS WHERE GROUP_CODE = 'MSG_TYPE' AND CODE = MSG_TYPE;
    RETURN MSG_NAME;
END REGION_MSGTYPE2NAME;
/

prompt
prompt Creating function VALUE2LEVEL
prompt =============================
prompt
CREATE OR REPLACE FUNCTION VALUE2LEVEL(V_VALUE VARCHAR,V_TYPE VARCHAR)
    RETURN VARCHAR
    IS
    LEVEL_NAME VARCHAR(20);
BEGIN
  IF regexp_like(V_VALUE,'.([a-z]+|[A-Z])') THEN
 LEVEL_NAME:=V_VALUE;
    ELSE
     
          SELECT MAX(C.NAME) INTO LEVEL_NAME  FROM BASE_THRESHOLD_SET_GRADE A INNER JOIN BASE_TRADE C ON A.CODE=C.CODE WHERE  a.TYPE =V_TYPE AND
    A.VALUE=(SELECT MAX(VALUE) FROM BASE_THRESHOLD_SET_GRADE B WHERE B.TYPE = V_TYPE AND B.VALUE<TO_NUMBER(V_VALUE));
    END IF;
    
    RETURN LEVEL_NAME;
END VALUE2LEVEL;
/

prompt
prompt Creating procedure PROC_TEST
prompt ============================
prompt
create or replace procedure Proc_test(P_Table_name IN VARCHAR2 := NULL) is
begin
  --����һ��ע�Ͷ�112��      
  insert into Log_test
    (Guid, Log_Name, Log_Time)
  values
    (sys_guid(), P_Table_name, sysdate);
end Proc_test;
/

