SELECT
    search_term AS role, 
    ROUND(100.00 * COUNT(*) FILTER (WHERE job_work_from_home) / COUNT(*), 1) AS pct_remote
FROM {{ref('postings')}}
GROUP BY role
ORDER BY pct_remote DESC 