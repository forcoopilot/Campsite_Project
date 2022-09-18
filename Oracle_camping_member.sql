

commit;

select * from camping_member;

create sequence smartboard_num
	start with 1
	increment by 1
	minvalue 1
	maxvalue 1000
	cycle;
	
drop sequence smartboard_num;

create table smartboard (
	Num number primary key ,
	Writer varchar2(30) not null,
	Email varchar2(40) not null,
	Subject varchar2(40) not null,
	Password varchar2(15) not null,
	Reg_date Date,
	Ref number,
	Re_step number,
	Re_level number,
	ReadCount number,
	Content varchar2(500) not null
);

drop table smartboard;

select * from smartboard;
	
insert into smartboard values(smartboard_num.nextval, '장준기', 
'ccc@ccc.com', '가을아~', '1234', sysdate, 1, 1, 1, 0, '가을이라 가을이면 가을라면 좋아요');
insert into smartboard values(smartboard_num.nextval, '장준기', 
'aaa@aaa.com', '졸려', '1234', sysdate, 2, 1, 1, 0, '가을이라 가을이면 가을라면 좋아요');
insert into smartboard values(smartboard_num.nextval, '장준기', 
'bbb@bbb.com', '집가자', '1234', sysdate, 3, 1, 1, 0, '가을이라 가을이면 가을라면 좋아요');