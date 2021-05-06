use sakila;

create view view_AddressSummary as 
select postal_code, phone 
from address a
join staff s on a.address_id = s.address_id;

select * from view_addresssummary limit 1;

drop view view_addresssummary;

drop table xyz;

select first_name from actor;
call testLoop();
select first_name from actor;

CREATE DEFINER=`root`@`localhost` PROCEDURE `testLoop`()
BEGIN
	DECLARE counter INT;
    DECLARE actorCount int;
    
    set counter = 1;
	select count(*) into actorCount from actor;
    
    WHILE counter <= actorCount DO
        update actor set first_name = concat(first_name, counter)
        where actor_id = counter;
        SET counter = counter + 1;
    END WHILE;
END