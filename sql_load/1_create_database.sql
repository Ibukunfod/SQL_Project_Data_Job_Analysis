-- SubQuery
SELECT *
FROM (
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date) = 12
) AS may_jobs
LIMIT 10;

 
 -- CTE
 WITH september_jobs AS (
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date) = 9
)

SELECT *
FROM september_jobs;
 

WITH data_analyst_jobs AS (
    SELECT *
    FROM job_postings_fact
    WHERE job_title_short = 'Data Analyst'
)

SELECT *
FROM data_analyst_jobs;