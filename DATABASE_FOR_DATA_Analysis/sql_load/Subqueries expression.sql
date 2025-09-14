-- Subqueries expression

SELECT *
FROM (--subquery start
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(MONTH from job_posted_date)=1
) as January_jobs LIMIT 10;


-- ex2

SELECT company_id,name AS company_name
from company_dim
WHERE company_id In (
    SELECT company_id
    from job_postings_fact
    WHERE
    job_no_degree_mention = true
);