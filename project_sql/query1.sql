
SELECT 
    job_id,
    job_title,
    salary_year_avg,
    name AS company_name 
FROM job_postings_fact
LEFT JOIN company_dim AS company ON job_postings_fact.company_id= company.company_id
WHERE 
     job_title_short = 'Data Analyst' AND
     job_location = 'Anywhere' AND
     salary_year_avg IS NOT NULL

ORDER BY salary_year_avg DESC
LIMIT 10;

SELECT
     job_id,
     job_title,
     salary_year_avg,
     job_schedule_type,
     job_location,
     name AS company_name
FROM job_postings_fact
LEFT JOIN company_dim AS company ON job_postings_fact.company_id = company.company_id
WHERE 
    job_title_short = 'Business Analyst' AND
    job_location = 'New York, NY' AND
    salary_year_avg IS NOT NULL
ORDER BY salary_year_avg DESC
LIMIT 15;