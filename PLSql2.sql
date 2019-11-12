select * from course
select * from department
select * from student
select * from Taken_Course

Q1: Write a program if  a table has data or not?
{} = Begin End

if exists (Select * from Student)
print 'Data Available'
else
Begin
print 'Data not available'
End
 
if (select S_address from Student where S_ID='171-35-1257') = 'Dhaka'
begin
print 'He is from Dhaka'
end
else
begin
print 'He is not from '
end


select * from employee

declare @sl int = ( select salary from employee where E_ID = 'E012' )
if(@sl < 90000)
begin
 
update employee set Salary = @sl+10000 where E_ID = 'E012'
end
else
BEGIN
update employee set Salary = @sl-10000 where E_ID = 'E012'
 
END
print 'his new salary: '+ cast (@sl as varchar(23))

select * from employee where E_ID = 'E012'

declare @i int  =1,@add varchar(24) =(select S_address from Student where S_ID='171-35-1257') ;
while @i<=10
Begin
 
 print @add
 set @i = @i+10
end

declare @ad varchar (25) = (Select S_address from Student where S_ID = '171-11-1261')

if @ad = 'Khulna'
begin
update Student set S_address = 'Barisal' where S_ID =  '171-11-1261'
end
else if @ad = 'Dhaka'
begin
delete from Student where S_address=@ad and  S_ID =  '171-11-1261'
end
else
print 'No match. Original add: '+@ad

select * from Student


declare @sal int = (select min(Salary) from employee)
if @sal < 50000
begin
declare @avgsal int = (select avg(Salary) from employee)
while @avgsal > 50000
begin
update employee set Salary = Salary*1.5
end
end

select * from employee