create table Bts_Member(
    id varchar(30) primary key,
    pw varchar(50) not null,
    name varchar(30) not null,
    gender varchar(30) not null,
    ssan varchar(50) not null,
    ph varchar(50) not null,
    addr varchar(500),
    email varchar(100),
    nick varchar(30) not null,
    reg date default sysdate
);
commit;

create table Bts_Chat(
    num number primary Key,
    id varchar(30) not null,
    title varchar(500) not null,
    options varchar(30) not null,
    tag varchar(2000),
    product varchar(100) not null,
    price number not null,
    pay varchar(30) not null,
    gender varchar(30) not null,
    personnel number not null,
    place varchar(1000),
    img varchar(50),
    content varchar(2000),
    reg date default sysdate
);
create sequence Bts_Chat_seq nocache;
commit;


select * from Bts_Member;
desc Bts_Member;
select * from Bts_Chat;
desc Bts_Chat;

alter table Bts_Chat modify(id varchar2(100));
alter table Bts_Chat modify(options varchar2(100));
alter table Bts_Chat modify(place varchar2(2000));
alter table Bts_Chat modify(img varchar2(500));
alter table Bts_Chat modify(placeInfo varchar2(1000));
alter table Bts_Chat add(users varchar2(2000));

select * from Bts_Chat where options='��ǰ' and tag like '% %';
select * from Bts_Chat where tag like '%%';
insert into Bts_Chat values(Bts_Chat_seq.nextVal, 'hera', '�ܹ��Ż�Ǻ�','��ǰ','�ܹ���,����ŷ,�Ե�����,��������,ġ�����,����','�ܹ���',3000,'������','����',6,'���� ���Ǳ� ������ 1','1586757867924Hydrangeas.jpg','����1',sysdate,126.937497477391-37.4773850792419,'���,','���');
