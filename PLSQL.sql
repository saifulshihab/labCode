select * from Course
select * from Department
select * from Student
select * from Taken_Course

print 'I am Saiful islam'

/*variable*/

Declare @i varchar(25),@j int
Set @i = 'Jony'

print 'I am: '+@i

declare @a float = 16.5,@b float = 9.5,@c float = 151.9,@d float = 20.8
declare @sum float = @a+@b+@c+@d
print 'Total is: '+ Cast(@sum as varchar(15))

/*Process 1*/
declare @name varchar(25),@add varchar(50)
Set @name = (Select S_Name from Student where S_ID='171-35-1257')
set @add = (Select S_address from Student where S_ID='171-35-1257') 
select @name as Name, @add as Address


/*Process 2*/
declare @name varchar(25),@add varchar(50)
(Select @name = S_Name from Student where S_ID='171-35-1257')
(Select @add = S_address from Student where S_ID='171-35-1257') 
select @name as Name, @add as Address 

/*Process 3*/
declare @name varchar(25),@add varchar(50)
(Select @name = S_Name, @add = S_address from Student where S_ID='171-35-1257')
select @name as Name, @add as Address 

/*Process 4*/
declare @name varchar(25)=(Select S_Name from Student where S_ID='171-35-1257'),
@add varchar(50)=(Select S_address from Student where S_ID='171-35-1257') 
select @name as Name, @add as Address 

/*Question*/
declare @name varchar(55), @dname varchar(35)
select @name=S_Name, @dname=D_Name from Student inner join Department on Student.D_ID=Department.D_ID where S_ID='171-11-1261'
select @name as Name , @dname as Department