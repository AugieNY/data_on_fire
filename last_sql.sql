CREATE TABLE median_byeducation(
Educational_attainment CHAR(50),
Median_weekly_earnings FLOAT,
Unemployment_rate CHAR(15));

SELECT DISTINCT education_level FROM bank_churn;
SELECT DISTINCT Educational_attainment FROM median_byeducation;

CREATE TABLE medians AS
	SELECT
	CASE "median_byeducation"."educational_attainment"
	WHEN 'Associate' THEN 'Graduate'
	WHEN 'Less than a high school diploma' THEN 'Unknown'
	WHEN 'Bachelors' THEN 'Graduate'
	WHEN 'Masters' THEN 'Post-Graduate'
	WHEN 'High School' THEN 'High School'
	WHEN 'No degree' THEN 'Uneducated'
	WHEN 'Doctoral degree' THEN 'Doctorate'
	WHEN 'Professional degree' THEN 'Graduate'
	ELSE 'Unknown' END as "Education",
	"median_byeducation"."median_weekly_earnings" as "Weekly_median_earnings",
	"median_byeducation"."median_weekly_earnings" * 52 as "Yearly_median_earnings"
	FROM median_byeducation;
	
	
CREATE TABLE all_data AS
SELECT bank_churn.*,
medians."Weekly_median_earnings",
medians."Yearly_median_earnings"
FROM bank_churn
LEFT JOIN medians ON bank_churn."education_level" = "medians"."Education"