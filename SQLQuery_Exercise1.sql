CREATE DATABASE OurExerciseDb ON PRIMARY
(NAME = 'Exercise_Db',FILENAME = 'D:\Exercises\Exercise_Db.mdf',
SIZE = 24MB , MAXSIZE = 32MB , FILEGROWTH = 8MB)
LOG ON
(NAME = 'Exercise_log', FILENAME = 'D:\Exercises\Exercise_log.ldf')
COLLATE SQL_Latin1_General_CP1_CI_AS

use OurExerciseDb
create table StudentRegistrations
(StudentId int not null,
CourseCode nvarchar(50) not null,
RegistrationDate date,
constraint course_r primary key(StudentId,CourseCode)
)
select * from StudentRegistrations

insert into StudentRegistrations values (11,'MC201','08/08/2023')
insert into StudentRegistrations(StudentId,CourseCode) values (11,'MC202')
insert into StudentRegistrations values (12,'MC201','02/08/2023')
insert into StudentRegistrations values (13,'MC201','05/08/2023')
insert into StudentRegistrations(StudentId,CourseCode) values (12,'MC203')

