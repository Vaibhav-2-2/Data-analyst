SELECT * FROM job_postings_fact LIMIT 100;

-- Date only
SELECT job_posted_date FROM job_postings_fact LIMIT 10;

SELECT job_posted_date::DATE FROM job_postings_fact LIMIT 10;

SELECT '2025-08-01'::DATE,
        '123'::INTEGER,
        'true'::BOOLEAN,
        '3.14'::REAL;
        

--  Time zone
SELECT job_posted_date At time zone 'UTC'
FROM job_postings_fact LIMIT 10;

-- Extract 
SELECT EXTRACT(MONTH FROM job_posted_date) AS month,
EXTRACT(YEAR FROM job_posted_date) AS year,
EXTRACT(DAY FROM job_posted_date) AS day
FROM job_postings_fact LIMIT 10; 


--  combined query

select 
count(job_id)as posted_count,
EXTRACT(MONTH FROM job_posted_date) AS month
FROM job_postings_fact
where job_title_short = 'Data Analyst'
GROUP BY month
ORDER BY posted_count DESC
LIMIT 10;


-- practice problem
CREATE TABLE job_postings_fact_january AS
    select * FROM job_postings_fact
    where EXTRACT(MONTH FROM job_posted_date) = 1
    
SELECT * FROM job_postings_fact_january LIMIT 10;




CREATE TABLE job_postings_fact_February AS
    select * FROM job_postings_fact
    where EXTRACT(MONTH FROM job_posted_date) = 2

SELECT * FROM job_postings_fact_February LIMIT 10;




CREATE TABLE job_postings_fact_March AS
    select * FROM job_postings_fact
    where EXTRACT(MONTH FROM job_posted_date) = 3

SELECT * FROM job_postings_fact_March LIMIT 10;

