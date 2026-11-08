-- Who hires the most data people? One row per company
SELECT 
    COUNT(*) AS postings,
    company_name
FROM '../data/raw/raw_job_postings_*.parquet'
WHERE error IS NULL
GROUP BY company_name
ORDER BY postings DESC
LIMIT 50