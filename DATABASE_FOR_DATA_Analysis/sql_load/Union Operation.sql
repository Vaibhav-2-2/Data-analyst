-- Union Operation 

SELECT 
job_id,job_title_short,job_location
FROM job_postings_fact_january

UNION

SELECT 
job_id,job_title_short,job_location
FROM job_postings_fact_february

-- LIMIT 50;

-- UNION all


SELECT 
job_id,job_title_short,job_location
FROM job_postings_fact_january

UNION ALL

SELECT 
job_id,job_title_short,job_location
FROM job_postings_fact_february

-- LIMIT 50;


-- problem

SELECT
Q1_job_posting.job_title_short,
Q1_job_posting.job_location,
Q1_job_posting.job_via,
Q1_job_posting.job_posted_date::Date
from
(
SELECT * from job_postings_fact_january
UNION ALL
SELECT * from job_postings_fact_february
UNION ALL
SELECT * from job_postings_fact_march
) AS Q1_job_posting
WHERE Q1_job_posting.salary_year_avg > 70000
AND
job_title_short='Data Analyst'
ORDER BY
salary_year_avg DESC;