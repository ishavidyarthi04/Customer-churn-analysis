SELECT * FROM customer_churn.`wa_fn-usec_-telco-customer-churn`;
SELECT COUNT(*) AS Total_Customers
FROM `wa_fn-usec_-telco-customer-churn`;
SELECT Churn,
       COUNT(*) AS Customer_Count
FROM `wa_fn-usec_-telco-customer-churn`
GROUP BY Churn;
SELECT ROUND(
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100 / COUNT(*),
    2
) AS Churn_Rate
FROM `wa_fn-usec_-telco-customer-churn`;
SELECT gender,
       Churn,
       COUNT(*) AS Customers
FROM `wa_fn-usec_-telco-customer-churn`
GROUP BY gender, Churn;
SELECT Contract,
       Churn,
       COUNT(*) AS Customers
FROM `wa_fn-usec_-telco-customer-churn`
GROUP BY Contract, Churn;
SELECT Churn,
       ROUND(AVG(MonthlyCharges), 2) AS Avg_Monthly_Charges
FROM `wa_fn-usec_-telco-customer-churn`
GROUP BY Churn;