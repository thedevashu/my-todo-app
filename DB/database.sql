
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
task_id int auto_increment  primary key,
task_name varchar(20),
task_desc varchar(100),
start_time datetime,
end_time datetime,
task_status decimal default(0) check(task_status = 0 or 1),
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

SHOW CREATE table task;


ALTER TABLE user_tasks DROP FOREIGN KEY `fk_task`;

ALTER TABLE task MODIFY  task_id decimal;
ALTER TABLE task CHANGE task_id task_id int not null  AUTO_INCREMENT;
Alter TABLE task ADD PRIMARY KEY (task_id);
ALTER TABLE user_tasks add CONSTRAINT `fk_task` foreign key (task_id) REFERENCES task(task_id) ;
ALTER TABLE task ALTER task_status SET DEFAULT 0;
ALTER TABLE task ALTER task_priority SET DEFAULT 1;

ALTER TABLE task ADD COLUMN  uname varchar(20),add foreign key (uname) REFERENCES user_info(uname);
drop PROCEDURE `add_task`;
DELIMITER //
CREATE PROCEDURE `add_task` (
in in_task_name varchar(20),
in in_task_desc varchar(20),
in in_start_time datetime,
in in_end_time datetime,
in in_user_name varchar(20)
)
BEGIN
	insert into 
task(

task_name,
task_desc,
start_time,
end_time,
uname)
 values
(
in_task_name,
in_task_desc,
in_start_time,
in_end_time,
in_user_name
);



END//
DELIMITER ;
delete from task where task_id = 1;
commit;
call add_task('call pro','testing','1998-01-23 12:45:56','2010-12-31 01:15:00');
insert into 
task(task_name,
task_desc,
start_time,
end_time,
task_status,
task_priority)
 values
("insert",
"write insert sp"
,'1998-01-23 12:45:56',
'2010-12-31 01:15:00',
1,
1);