
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

