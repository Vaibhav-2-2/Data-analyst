-- case expression 

SELECT
COUNT(job_id) as NO_OF_JOBS,
-- job_title_short,
-- job_location,
    case 
        when job_location = 'Anywhere' Then 'Remote'
        when job_location = 'New York' Then 'Local'
        Else 'Onsite'
    End As location_category 
FROM job_postings_fact 
WHERE job_title_short = 'Data Analyst'
GROUP BY location_category;