create procedure SPAddEmployeeDetails
(
	@EmployeeName varchar(200),
	@Salary bigint,
	@StartDate date,
	@Gender varchar(20),
	@EmpPhone bigint,
	@EmpAddress varchar(200),
	@Department varchar(200),
	@BasicPay bigint,
	@Deductions float,
	@TaxablePay float,
	@IncomeTax float,
	@NetPay bigint
)
as
begin
	insert into employee_payroll values(@EmployeeName,@Salary,@StartDate,@Gender,@EmpPhone,@EmpAddress,
	@Department ,@BasicPay ,@Deductions,@TaxablePay,@IncomeTax,@NetPay)
end
	
	
	
	
	
	
	
	
	
	
