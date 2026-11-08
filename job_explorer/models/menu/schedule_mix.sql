SELECT 
    coalesce(job_schedule_type, 'Not Specificed') AS schedule,
    COUNT(*) AS postings
FROM {{ref('postings')}}
GROUP BY schedule
ORDER BY postings DESC