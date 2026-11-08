-- Who hires the most data people? One row per company
{# TODO: filter out job boards like Jobs via Dice#}
{{ config(materialized='table')}}
{% set top_n = 50 %}
SELECT 
    COUNT(*) AS postings,
    company_name
FROM {{ref('postings')}}
WHERE company_name NOT IN ('Jobs via Dice', 'beBeeData', 'Online Surveys', 'ExecutivePlacements.com', 'The Elite Job', 'VirtualVocations')
GROUP BY company_name
ORDER BY postings DESC
LIMIT {{ top_n }}