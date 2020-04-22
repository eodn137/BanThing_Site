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
    price varchar(20) not null,
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