-- Who hires the most data people? One row per company
{# TODO: filter out job boards like Jobs via Dice#}
{% set top_n = 50 %}
SELECT 
    COUNT(*) AS postings,
    company_name
FROM {{ref('postings')}}
GROUP BY company_name
ORDER BY postings DESC
LIMIT {{ top_n }}