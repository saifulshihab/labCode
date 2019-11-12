/*Craete a procedure that will take dept name as input
all stdent list as output*/

alter procedure Stdlist
@dname varchar(35),
@add varchar(25)
as
begin
select S_ID, S_Name, S_address from Student inner join Department on Student.D_ID=Department.D_id
where D_Name = @dname and Location=@add
end

SP_helptext Stdlist

SP_depends Stdlist


create procedure stdcount
@name varchar (45),
@total int output
as
begin
select @total=count(S_ID) from Student inner join Department on  Student.D_ID=Department.D_id
 where D_Name = @name

end

 
declare @i int , @j varchar (25)
execute stdcount 'BBA', @i output, @j output
print 'dfdf'+@i+'sfsfsf'+@j



create procedure min_sal
as
begin
return (select min(salary) from employee )
end

declare @i int
execute @i = min_sal
select @i as MINIMUM_SALARY




/*create a procedure that will take emp id as input.
inside the procedure it will check the emp address of that id
if the address is dhaka it will updated to khulna else if the address is rajshahi it will chng his dept to Sales otherwise
it will print his orginal address*/

alter procedure addchng
@id varchar(35)
as
begin
declare @add varchar (45)
select @add=E_Address from employee where E_ID=@id
if (@add='Dhaka')
begin
update employee set E_Address = 'Rajshahi' where E_ID=@id
end
else if (@add='Rajshahi')
begin
update employee set Department='Sales' where E_ID=@id
end
else
begin
declare @pradd varchar (45)
select @pradd=E_Address from employee where E_ID=@id
print @pradd
end
end

addchng 'E016'