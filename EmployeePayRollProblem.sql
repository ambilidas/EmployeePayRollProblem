--EMPLOYEE PAYROLL PROBLEM
--UC1
Create database Payroll_Service
--UC2
Create table employee_payroll(empId int identity(1,1) primary key,empName varchar(200),salary bigint,startDate date);
--UC3
insert into employee_payroll(empName,salary,startDate) values ('Ambili',25000,'2022-05-12')
insert into employee_payroll(empName,salary,startDate) values ('Anju',30000,'2021-08-24')
insert into employee_payroll(empName,salary,startDate) values ('Raj',26000,'2018-06-30')
insert into employee_payroll(empName,salary,startDate) values ('Athul',28000,'2021-07-11')
insert into employee_payroll(empName,salary,startDate) values ('Liano',35000,'2019-03-20')
--UC4
select * from employee_payroll
--UC5
select salary from employee_payroll where empName='Anju'
select empName from employee_payroll where startDate between CAST('2021-07-11' AS DATE) AND GETDATE() 
--UC6
alter table employee_payroll add gender varchar(20)
update employee_payroll set gender='M' where empName='Raj' or empName='Athul' or empName='Liano'
update employee_payroll set gender='F' where empName='Ambili' or empName='Anju'
--UC7
select SUM(salary) as TotalSalary from employee_payroll where gender='M' group by gender 
select SUM(salary) as TotalSalary from employee_payroll where gender='F' group by gender 
select AVG(salary) as AverageSalary from employee_payroll where gender='M' group by gender 
select AVG(salary) as AverageSalary from employee_payroll where gender='F' group by gender 
select MIN(salary) as MinimumSalary from employee_payroll where gender='M' group by gender 
select MIN(salary) as MinimumSalary from employee_payroll where gender='F' group by gender 
select MAX(salary) as MaximumSalary from employee_payroll where gender='M' group by gender 
select MAX(salary) as MaximumSalary from employee_payroll where gender='F' group by gender 
select COUNT(salary) as CountSalary from employee_payroll where gender='M' group by gender
select COUNT(salary) as CountSalary from employee_payroll where gender='F' group by gender
--UC8
--Extend table by adding employee phone,address,and department
alter table employee_payroll add empPhone bigint
alter table employee_payroll add empAddress varchar(200)
alter table employee_payroll add department varchar(200) not null default 'IT'
--UC9
--Extend table with Basic pay,Deductions,Taxable pay,Income tax,Net pay
alter table employee_payroll add basicPay bigint
alter table employee_payroll add deductions bigint
alter table employee_payroll add taxablePay bigint
alter table employee_payroll add incomeTax bigint
alter table employee_payroll add netPay bigint
--UC10
insert into employee_payroll values('Terissa',40000,'2018-04-14','F',75562314,'Mumbai','Sales and Marketing',30000,500,2000,1000,35000)
