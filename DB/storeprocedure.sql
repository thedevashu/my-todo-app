CREATE PROCEDURE `insert_user` (
in in_uname varchar(20),
in in_password varchar(20),
in in_dob date,
in in_email varchar(20),
in in_mobile varchar(20)
)
BEGIN
	insert into user_info(uname,password,dob,email,mobile) 
    value(in_uname,in_password,in_dob,in_email,in_mobile);
END
