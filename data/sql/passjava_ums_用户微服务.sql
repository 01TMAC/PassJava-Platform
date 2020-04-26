drop table if exists ums_member;

/*==============================================================*/
/* Table: ums_member                                            */
/*==============================================================*/
create table ums_member
(
   id                   bigint not null auto_increment comment 'id',
   mini_openid          int comment 'С����openid',
   mp_openid            varchar(64) comment '�����openid',
   unionid              varchar(64) comment '΢��unionid',
   level_id             bigint comment '��Ա�ȼ�id',
   user_name            char(64) comment '�û���',
   password             varchar(64) comment '����',
   nickname             varchar(64) comment '�ǳ�',
   phone                varchar(20) comment '�ֻ�����',
   email                varchar(64) comment '����',
   avatar               varchar(500) comment 'ͷ��',
   gender               tinyint comment '�Ա�',
   birth                date comment '����',
   city                 varchar(500) comment '���ڳ���',
   source_type          tinyint comment '�û���Դ',
   integration          int comment '����',
   register_time        datetime comment 'ע��ʱ��',
   del_flag             tinyint(1) DEFAULT 0 COMMENT 'ɾ����ǣ�0-������1-ɾ����'
   create_time          datetime default CURRENT_TIMESTAMP comment '����ʱ��',
   update_time          datetime default CURRENT_TIMESTAMP comment '����ʱ��',
   primary key (id)
);

alter table ums_member comment '��Ա-��Ա��';

drop table if exists ums_growth_change_history;

/*==============================================================*/
/* Table: ums_growth_change_history                             */
/*==============================================================*/
create table ums_growth_change_history
(
   id                   bigint not null auto_increment comment 'id',
   member_id            bigint comment '��Աid',
   change_count         int comment '�ı��ֵ������������',
   note                 varchar(500) comment '��ע',
   source_type          tinyint comment '0->ɨ�룻1->����;2->����',
   del_flag             tinyint(1) DEFAULT 0 COMMENT 'ɾ����ǣ�0-������1-ɾ����'
   create_time          datetime default CURRENT_TIMESTAMP comment '����ʱ��',
   update_time          datetime default CURRENT_TIMESTAMP comment '����ʱ��',
   primary key (id)
);

alter table ums_growth_change_history comment '��Ա-����ֵ�仯��ʷ��¼��';
