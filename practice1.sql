# 1.创建数据库employee_db

# 2.在数据库employee_db中创建table：`Employee`

# 3.将`employee-data.csv`文件中的数据导入数据表Employee中

# 4.在数据库employee_db中创建table：`Company`

# 5.将`company-data.csv`文件中的数据导入Company数据表中

# 6.找出Employee表中姓名包含`n`字符并且薪资大于6000的雇员所有个人信息

# ps:本练习中只需要将6的结果复制到`result.txt`文件中
select * from Employee where name like "%n%" and salary > 6000;
 create table Employee(
     id int primary key,
     name varchar(20),
     age int,
     gender varchar(4),
     companyId int,
     salar double
 )COMMENT"用户表";

 create table Company
 (
     id int primary key,
     companyName varchar(10),
     employeesNumber varchar(10)
 );

load data infile 'F:/mysql-8.0.16-winx64/backup/company-data.csv'
into table Company
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\n';

load data infile 'F:/MySqlData/test1.csv'
into table student character set gb2312
fields terminated by ',' optionally enclosed by '"' escaped by '"'
lines terminated by '\r\n';

ALTER TABLE Employee
MODIFY COLUMN salary varchar(20);