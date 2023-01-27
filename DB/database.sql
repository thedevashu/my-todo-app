
create schema todo_app;
use todo_app;


drop table if exists user_info;
create table user_info(
uname varchar(20) primary key,
password varchar(20),
dob date,
email varchar(20),
mobile varchar(12)
);

drop table if exists task;
create table task(
task_id decimal primary key,
task_name varchar(20),
task_desc varchar(100),
start_time datetime,
end_time datetime,
task_status decimal default(0) check(task_status = 1 or 0),
task_priority decimal default(1) check(task_priority = 1 or 2 or 3)
);


drop table if exists user_tasks;
create table user_tasks(
uname varchar(20) ,
task_id decimal,
foreign key(uname) references user_info(uname),
foreign key(task_id) references task(task_id)
);

alter table user_info add full_name varchar(20);

DELIMITER //
drop PROCEDURE if exists `insert_user`;
CREATE PROCEDURE `insert_user` (
in in_uname varchar(20),
in in_password varchar(20),
in in_dob date,
in in_email varchar(20),
in in_mobile varchar(20),
in in_full_name varchar(20)
)
BEGIN
	insert into user_info(uname,password,dob,email,mobile,full_name) 
    value(in_uname,in_password,in_dob,in_email,in_mobile,in_full_name);
END//
DELIMITER ;
call insert_user("ashudon","123","1998-12-28","ashu@gmail.com","345466789067","ashutosh yadav");


SET SQL_SAFE_UPDATES=0;
delete from user_info where full_name is null;
SET SQL_SAFE_UPDATES=1;

DELIMITER //
CREATE PROCEDURE `login_user` (
in in_uname varchar(20),
in in_password varchar(20)
)
BEGIN
	select * from user_info where uname = in_uname and password = in_password;
END//
DELIMITER ;

call login_user("ashu","123");



DELIMITER //
CREATE PROCEDURE `add_task` (
in in_uname varchar(20),
in in_password varchar(20)
)
BEGIN
	select * from user_info where uname = in_uname and password = in_password;
END//
DELIMITER ;