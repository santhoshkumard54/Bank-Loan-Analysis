CREATE TABLE loan_data (
    id BIGINT,
    address_state VARCHAR(10),
    application_type VARCHAR(50),
    emp_length VARCHAR(50),
    emp_title VARCHAR(255),
    grade CHAR(1),
    home_ownership VARCHAR(50),
    issue_date DATE,
    last_credit_pull_date DATE,
    last_payment_date DATE,
    loan_status VARCHAR(50),
    next_payment_date DATE,
    member_id BIGINT,
    purpose VARCHAR(100),
    sub_grade VARCHAR(5),
    term VARCHAR(20),
    verification_status VARCHAR(50),
    annual_income NUMERIC(15,2),
    dti NUMERIC(10,4),
    installment NUMERIC(10,2),
    int_rate NUMERIC(10,4),
    loan_amount NUMERIC(15,2),
    total_acc INTEGER,
    total_payment NUMERIC(15,2)
);

select * from loan_data;

--   KPI 1 : Total Loan Applications

select count(id) from loan_data;

 --  KPI 2 : MTD Loan summary
SELECT
	To_char(max(issue_date),'month') as Latest_month,
	Extract(Year from max(issue_date)) as Latest_month,
	COUNT(id) AS mtd_loan_applications,
	CONCAT(ROUND(SUM(loan_amount)/1000000,2),'M') as Loan_Funded_Amount,
	CONCAT(ROUND(SUM(total_payment)/1000000,2),'M') as Loan_Received_Amount
	FROM loan_data
where date_trunc('month',issue_date)=
(select date_trunc('month',max(issue_date))from loan_data);

--   KPI 3 : Total Funded Amount

SELECT concat(round(sum(loan_amount)/1000000,2),'M') AS total_funded_amount from loan_data;

 --  KPI 4 : Average Interest Rate

 SELECT concat(round(AVG(int_rate)*100,2),'%') as Avg_interest_rate from loan_data;

 --	 KPI 5 : Average Debt-To-Income Ratio (DTI)

SELECT concat(round(AVG(dti)*100,2),'%') as Avg_interest_rate from loan_data;

 --  KPI 6 : Good Loan counts,Funded amount,Received amount & Percentage
 --  Loan Status = Fully Paid + Current

SELECT 
		Concat(ROUND(SUM(CASE WHEN loan_status IN ('Fully Paid','Current')
		THEN loan_amount END)/1000000),'M') AS Good_loan_Amount,
		Concat(ROUND(SUM(CASE WHEN loan_status IN ('Fully Paid','Current') 
		THEN total_payment END)/1000000),'M') AS Good_loan_Received_Amount,
		COUNT(CASE WHEN loan_status IN ('Fully Paid','Current') THEN id END) AS Good_loan_application_count,
		Concat(ROUND(COUNT(CASE WHEN loan_status IN ('Fully Paid','Current') THEN id END)
		*100/COUNT(id),2),'%') AS Good_Loan_Percentage
FROM loan_data;


 --  KPI 7 : Bad Loan counts,Funded amount,Received amount & Percentage
 --  Loan Status = Charged Off


SELECT 
		Concat(ROUND(SUM(CASE WHEN loan_status ='Charged Off' THEN loan_amount END)/1000000),'M') AS Bad_loan_Amount,
		Concat(ROUND(SUM(CASE WHEN loan_status ='Charged Off' THEN total_payment END)/1000000),'M') AS Bad_loan_Received_Amount,
		COUNT(CASE WHEN loan_status ='Charged Off' THEN id END) AS Bad_loan_application_count,
		Concat(ROUND(COUNT(CASE WHEN loan_status ='Charged Off' THEN id END)
		*100/COUNT(id),2),'%') AS Bad_Loan_Percentage
FROM loan_data;

 
--  Monthly Loan Applications Trend

SELECT
	TO_CHAR(issue_date,'Mon YYYY') AS Month,
	COUNT(id) AS Loan_applications,
	CONCAT(ROUND(SUM(loan_amount)/1000000,2),'M') as Loan_Funded_Amount,
	CONCAT(ROUND(SUM(total_payment)/1000000,2),'M') as Loan_Received_Amount
FROM Loan_data
GROUP BY MONTH
ORDER BY MIN(issue_date);

-- State wise loan Analysis

SELECT 
	address_state,
	COUNT(id) as Total_loan_applications,
	CONCAT(ROUND(SUM(loan_amount)/1000000,2),'M') as Loan_Funded_Amount,
	CONCAT(ROUND(SUM(total_payment)/1000000,2),'M') as Loan_Received_Amount
FROM loan_data
GROUP BY address_state
ORDER BY SUM(loan_amount) Desc;

--  Loan Purpose Analysis

SELECT 
	purpose,
	COUNT(id) as Total_loan_applications,
	CONCAT(ROUND(SUM(loan_amount)/1000000,2),'M') as Loan_Funded_Amount,
	CONCAT(ROUND(SUM(total_payment)/1000000,2),'M') as Loan_Received_Amount
FROM loan_data
GROUP BY purpose
ORDER BY SUM(loan_amount) Desc;

--  Home Ownership Analysis

SELECT 
	home_ownership,
	COUNT(id) as Total_loan_applications,
	CONCAT(ROUND(SUM(loan_amount)/1000000,2),'M') as Loan_Funded_Amount,
	CONCAT(ROUND(SUM(total_payment)/1000000,2),'M') as Loan_Received_Amount
FROM loan_data
GROUP BY home_ownership
ORDER BY SUM(loan_amount) Desc;

--  Employment Length Analysis

SELECT 
	emp_length,
	COUNT(id) as Total_loan_applications,
	CONCAT(ROUND(SUM(loan_amount)/1000000,2),'M') as Loan_Funded_Amount,
	CONCAT(ROUND(SUM(total_payment)/1000000,2),'M') as Loan_Received_Amount
FROM loan_data
GROUP BY emp_length
ORDER BY SUM(loan_amount) Desc;




  

