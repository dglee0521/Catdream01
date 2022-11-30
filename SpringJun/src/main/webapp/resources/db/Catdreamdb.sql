create database catdreamdb;

use catdreamdb;

delete from catdreamdb; -- 내용삭제
drop database catdreamdb; -- 완전삭제




create table member(
	id varchar(15) primary key,  -- 아이디
    password varchar(30) not null, -- 비밀번호
    name varchar(10) not null, -- 이름
    birth date not null, -- 생년월일 날짜
    gender varchar(2) not null,  -- 성별
    email varchar(30) not null,  -- 이메일
    phone varchar(15) not null,  -- 휴대폰 번호
    jobrank varchar(5) not null, -- 직급
    regdata datetime default now() -- 등록날짜
);
-- 생성일자 추가해야하고 성별은 남자M 여자F 선택안함U 인데 남자로 저장되어있다
insert into member(id,password,name,birth,gender,email,phone,jobrank)
values('hjg8013','123456','황준호','1997-12-15','남자','hjg8012@naver.com','01029128013','관리자');

select * from member;

create table board(
bno int primary key auto_increment,
title varchar(50) not null,
content longtext,
writer varchar(15),
regdate datetime default now(),
cnt int default 0,
memberId varchar(15)
);

select * from board order by regdate desc;

	 	select * from board order by regdate desc;

create table reply(
	rno int primary key auto_increment,
    bno int,
    reply varchar(1000) not null,
    replyer varchar(15),
    replydate datetime default now(),
    memberId varchar(15)
);

select * from reply;

create table attach(
	uuid varchar(50) primary key,
    uploadpath varchar(100),
    filename varchar(100),
    image int,
	bno int
);


select * from attach;

create table product(
	pno int primary key auto_increment,
    pname varchar(100),
	pimage int,
    pimgname varchar(100),
    pcontent longtext,
    pprice varchar(100),
    pbargain varchar(100),
    pdate datetime default now(),
    pbrand varchar(20),
    pstar int,
    pstarno int,
    puuid varchar(50),
    puploadpath varchar(100)
);



    
select * from product;

drop table product;