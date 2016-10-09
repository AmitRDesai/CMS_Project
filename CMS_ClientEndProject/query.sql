Username : E1082926
Password: E1082926


create table cms_vendor(
v_id varchar2(10) primary key,
v_name varchar2(30) not null,
v_pwd varchar2(30) default 'tcs@1234' not null,
v_type varchar2(20) not null
);

drop table vendor;

create table cms_admin(
a_id varchar2(10) primary key,
a_name varchar2(30) not null,
a_pwd varchar2(30) default 'tcs@1234' not null
);

create table cms_employee(
e_id varchar2(10) primary key,
e_name varchar2(30) not null,
e_pwd varchar2(30) default 'tcs@1234' not null
);

create table cms_item(
i_id int primary key,
v_id varchar2(10) references cms_vendor(v_id),
i_name varchar2(30) not null,
i_price number(10,2) not null,
i_type varchar2(30),
i_mo number(1) default 0 check (i_mo in (1,0)),
i_tu number(1) default 0 check (i_tu in (1,0)),
i_we number(1) default 0 check (i_we in (1,0)),
i_th number(1) default 0 check (i_th in (1,0)),
i_fr number(1) default 0 check (i_fr in (1,0)),
i_sa number(1) default 0 check (i_sa in (1,0)),
i_su number(1) default 0 check (i_su in (1,0)),
i_status number(1) default 0 check (i_status in (1,0)),
i_update number(1) default 0 check (i_update in (1,0))
);

create table cms_wallet(
e_id varchar2(10) references cms_employee(e_id),
v_id varchar2(10) references cms_vendor(v_id),
money number(10,2)
);

create table cms_transcation(
t_id int primary key,
t_eid varchar2(10) references cms_employee(e_id) not null,
t_vid varchar2(10) references cms_vendor(v_id) not null,
t_amount number(10,2) not null,
t_type varchar2(10) check(t_type in('debit','credit')),
t_date timestamp not null
);


create table cms_item_temporary(
i_id int references cms_item(i_id),
v_id varchar2(10) references cms_vendor(v_id),
temp_i_name varchar2(30) not null,
temp_i_price number(10,2) not null,
temp_i_update number(1) default 0 check (temp_i_update in (1,0))
);

