create table register(
email varchar(50) primary key,
password varchar(20),
phone varchar(15),
address varchar(100),
desig varchar(15)default 'user'
);

insert into register values('admin@gmail.com','admin','9999999999','Hyderabad','admin');

create table tasks
(
task_id int  AUTO_INCREMENT,
email varchar(50),
task varchar(200),
startdate  varchar(20),
starttime varchar(20),
enddate varchar(20),
endtime varchar(20),
status varchar(20) default 'notstarted',
primary key(task_id),
foreign key(email) references register(email)
);

-- started
-- notstarted
-- completed
