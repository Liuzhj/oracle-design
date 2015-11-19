--��������﷨: 

     create table ����

( 

�ֶ���1 �ֶ�����(����) �Ƿ�Ϊ��,
�ֶ���2 �ֶ�����        �Ƿ�Ϊ��

);  

--��������
alter table ����add constraint ������ primary key (�ֶ���1); 

--�������: 
alter table ����add constraint �����foreign key (�ֶ���1) references ������(�ֶ���2); 

--����Ψһ����
create unique index ���� on ����(����);   
--Ψһ���������ܲ�����ͬ������

--�ڽ������ʱ��ָ�����������

 create table T_STU ( 

      STU_ID               char(5)                         not null, 

       STU_NAME             varchar2(8)                     not null, 

      constraint PK_T_STU primary key (STU_ID) 

); 

 

--���������һ������
 
create table T_SCORE ( 

       EXAM_SCORE           number(5,2), 

       EXAM_DATE            date, 

        AUTOID               number(10)                      not null,

 

       STU_ID               char(5), 

       SUB_ID               char(3), 

       constraint PK_T_SCORE primary key (AUTOID), 

       constraint FK_T_SCORE_REFE foreign key (STU_ID) 

        references T_STU (STU_ID) 

) 

--������
 
create table classes( 

       id number(9) not null primary key, 

       classname varchar2(40) not null 

)       

--��ѯ��* ����ȫ���У�Ҳ��ָ�����ڵ�ĳһ�л����[����ʱ�Զ��ŷָ�]
select * from ����; 

--ɾ����
drop table ����; 

--�޸ı������
rename ���� to �µı���; 

--��ʾ��ṹ
describe ���� 

--������
alter table test add address varchar2(40); 

--ɾ����
alter table test drop column address; 

--�޸��е�����
alter table test modify address addresses varchar(40; 

--�޸��е�����
alter table ���� modify ���� ����(����);


--�������ע��
COMMENT ON TABLE ���� IS 'ע��'; 

--���ֶμ�ע��
COMMENT ON COLUMN ���� IS 'ע��'; 



--��������������

create sequence ������ increment by 1 start with 1 MAXVALUE 999999 

NOCYCLE NOCACHE; 

--��ѯ ��ǰ����
select ������.currval from dual 

--��ѯ��һ������
select ������.nextval from dual 

--��������
INSERT INTO ���� (��1, ��2,...) VALUES (ֵ1, ֵ2,....);
commit; 

--��������
update ���� set ����='�޸ĵ�ֵ' where ����; 
commit; 


--���������´򿪵ĶԻ��в��ܶԴ��н��в���
select * from ����  where ���� for update; --����



 

 

