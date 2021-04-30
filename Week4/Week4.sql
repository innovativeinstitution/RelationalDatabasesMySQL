use sakila;

select squareNumber(3) as NumberSquared;

select 3*3 as NumberSquared;

call `sakila`.`addTwoNumbers`(10, 20);


select squareNumber(3) from actor
where squareNumber(3) > 5;

select * from user;
call GetCommentsByUser('mnarayan@promineo.com');

CREATE DEFINER=`root`@`localhost` FUNCTION `squareNumber`(num int) RETURNS int
    DETERMINISTIC
BEGIN

declare answer int;
select num * num into answer;
return answer;
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `GetCommentsByUser`(email varchar(100))
BEGIN

	declare id int; 
    select userid into id from user where email = email;
    
	select * from comment 
    where email = email;
    
    update user set createDtTm = now
    where userid = id;
END
