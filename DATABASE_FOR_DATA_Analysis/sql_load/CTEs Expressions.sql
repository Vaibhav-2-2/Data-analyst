--  CTEs Expressions
with jan_jobs As ( --CTE start
    SELECT * 
    FROM job_postings_fact
    WHERE EXTRACT(MONTH from job_posted_date)=1
    ) -- CTE end here

SELECT * from jan_jobs;




-- Ex2 CTE
With job_count_per_com as(
SELECT 
company_id,
COUNT(*) as job_count
from job_postings_fact
GROUP BY company_id
)

-- SELECT * from job_count_per_com;

SELECT
    company_dim.name as comapny_name,
    job_count_per_com.job_count as count_jobs
from company_dim
Left Join 
job_count_per_com 
on job_count_per_com.company_id = company_dim.company_id
ORDER BY count_jobs DESC;



-- CTEs Example again
with remote_job_skills as (
    SELECT
    skill_id,
    COUNT(*) as skill_count
    -- job_post.job_work_from_home
    from
    skills_job_dim as skills_to_job 
    Inner Join job_postings_fact as job_post ON job_post.job_id = skills_to_job.job_id
    WHERE 
    job_post.job_work_from_home = True AND
    job_post.job_title_short = 'Data Analyst'
    GROUP BY skill_id
    LIMIT 100 )

SELECT 
skills_dim.skill_id,
skills_dim.skills as skill_name,
skill_count
from remote_job_skills
Inner Join skills_dim ON
skills_dim.skill_id = remote_job_skills.skill_id
ORDER BY skill_count Desc
LIMIT 5
;
 


