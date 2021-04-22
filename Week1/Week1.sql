use university;

insert into student (firstname, lastname, dob)
values ('Manish', ' Narayan', '1980-02-03');
insert into student (firstname, lastname, dob)
values ('David', ' Rossi', '1995-01-10');
insert into student (firstname, lastname, dob)
values ('John', 'Doe', '1965-07-21');


select * from student;
select firstname, lastname from student;

select * from student order by dob;

select * from student where lastname like '%e%';

select * from student where (studentid = 2 or studentid = 3) order by lastname desc;

delete from student where studentid = 2;

update student set lastname = 'Narayana' where studentid = 1;

select * from student;

