use query;

create table register(FullName varchar(30),
					  EmailID varchar(30),
					  UserName varchar(30),
					  Password varchar(30),
					  ConfirmPassword varchar(30));

select * from register

create table contactDtls(Title varchar(10),
						 FirstName varchar(20),
						 LastName varchar(20),
						 Gender varchar(10),
						 DateOfBirth varchar(30),
						 Address varchar(20),
						 Street varchar(20),
						 City varchar(20),
						 State varchar(30),
						 Email varchar(30),
						 MobileNumber varchar(20));
drop table contactDtls
select * from contactDtls
