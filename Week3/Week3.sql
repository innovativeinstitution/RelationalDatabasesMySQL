create schema AcmeBook;

use AcmeBook;

CREATE TABLE user
  (
     userid     INT NOT NULL auto_increment,
     firstname  VARCHAR(50) NULL,
     lastname   VARCHAR(50) NULL,
     username   VARCHAR(50) NOT NULL,
     email      VARCHAR(100) NOT NULL,
     password   VARCHAR(12) NOT NULL,
     createdttm DATETIME NOT NULL,
     PRIMARY KEY (userid)
  ); 

create table post (
	postId int not null auto_increment,
    userId int not null,
    title varchar(100) not null,
    body text not null,
    createDtTm datetime not null,
    primary key (postId),
    constraint fk_post_user
    foreign key (userId)
    references user (userId)
);

create table comment (
	commentId int not null auto_increment,
    postId int not null,
    userId int not null,
    body text not null,
    createDtTm datetime not null,
    primary key (commentId),
    constraint fk_comment_post
    foreign key (postId)
    references post (postId),
    constraint fk_comment_user
    foreign key (userId)
    references user (userId)
);

drop table user;
alter table user add middleName varchar(50) null;

select now();

insert into user (firstName, lastName, userName, email, password, createDtTm)
values ('Manish', 'Narayan', 'mnarayan', 'mnarayan@promineo.com', 'password123', now());
insert into user (firstName, lastName, userName, email, password, createDtTm)
values ('David', 'Rossi', 'drossi', 'drossi@promineo.com', 'password456', now());

insert into post (userId, title, body, createDtTm)
values (1, 'My First Post', 'Hello World', now());
insert into post (userId, title, body, createDtTm)
values (2, 'David''s Post', 'Hello Universe', now());

insert into comment (postId, userId, body, createDtTm)
values (1, 1, 'Hello adding my comments', now());
insert into comment (postId, userId, body, createDtTm)
values (2, 2, 'Hello adding David comments', now());
insert into comment (postId, userId, body, createDtTm)
values (2, 1, 'Hello adding manish comment to david post', now());


select * from user;
select * from post;
select * from comment;

select * from user u 
join post p on u.userId = p.userId;

select * from user u
join comment c on u.userId = c.userId;

select * from user u
join post p on u.userId = p.userId 
join comment c on p.postid = c.postid
where u.lastName = 'Rossi';















