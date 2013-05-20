delete from TBL_USER where ID in (-1,-2);
insert into TBL_USER values(-1,-1,'kevin','kevin','kevin@-16-3.com','1312345678');
insert into TBL_USER values(-2,-1,'zm','zm','zm-1-2-1987@-16-3.com','1312345678');

delete from TBL_GROUP where ID in (-1,-2,-3);
insert into TBL_GROUP values(-1,'dev','��������');
insert into TBL_GROUP values(-2,'test','���Բ���');
insert into TBL_GROUP values(-3,'information','��Ϣ��������');

delete from TBL_ROLE where ID in (-1,-2,-3);
insert into TBL_ROLE values(-1,'��ͨ�û�','��ͨ�Ĺ�˾�û�');
insert into TBL_ROLE values(-2,'����Ա','ϵͳ����Ա');
insert into TBL_ROLE values(-3,'������Ա','������Ϣ���Ĺ�����Ա');

delete from REL_USER_GROUP where ID in (-1,-2,-3);
insert into REL_USER_GROUP values(-1,-1,-1);
insert into REL_USER_GROUP values(-2,-1,-2);
insert into REL_USER_GROUP values(-3,-2,-1);

delete from REL_GROUP_ROLE where ID in (-1,-2,-3);
insert into REL_GROUP_ROLE values(-1,-1,-1);
insert into REL_GROUP_ROLE values(-2,-1,-2);
insert into REL_GROUP_ROLE values(-3,-2,-1);

delete from TBL_COMPANY where ID in (-1,-2,-3);
insert into TBL_COMPANY values(-1,'��������','�����г�����','��ɽ');
insert into TBL_COMPANY values(-2,'������','�����к�����','��˹');
insert into TBL_COMPANY values(-3,'�廪�Ϲ�','�����к�����','����');

delete from TBL_CONTRACT where ID in (-1,-2,-3);
insert into TBL_CONTRACT(id,contract_name,file_uri,md5) values(-1,'��ͬ-1','/contract_file/','uyeafhoenlaoy');
insert into TBL_CONTRACT(id,contract_name,file_uri,md5) values(-2,'��ͬ-2','/contract_file/','uydfaeeafavbf');
insert into TBL_CONTRACT(id,contract_name,file_uri,md5) values(-3,'��ͬ-3','/contract_file/','uyeradafvelkj');

delete from REL_INITIATE where ID in (-1);
insert into REL_INITIATE values(-1,-1,-1);

delete from REL_SIGNED where ID in (-1,-2);
insert into REL_SIGNED values(-1,-2,-1);
insert into REL_SIGNED values(-2,-3,-1);