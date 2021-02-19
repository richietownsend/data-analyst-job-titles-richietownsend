/*SELECT COUNT (*) FROM data_analyst_jobs*/

/*SELECT *
FROM data_analyst_jobs
LIMIT 10;*/

/*SELECT COUNT (*)
FROM data_analyst_jobs
WHERE location = 'TN';*/

/*SELECT COUNT (*)
FROM data_analyst_jobs
WHERE location IN ('TN', 'KY');*/

/*SELECT *
FROM data_analyst_jobs
WHERE location = 'TN' AND star_rating > 4;*/

/*SELECT COUNT (*)
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000;*/

/*SELECT location AS state, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
WHERE location IS NOT NULL AND star_rating IS NOT NULL
GROUP BY location
ORDER BY avg_rating DESC;*/

/*SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs;*/

/*SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
WHERE location = 'CA';*/

/*SELECT company, AVG(star_rating) AS avg_rating
FROM data_analyst_jobs
WHERE review_count > 5000 AND company IS NOT NULL
GROUP BY company
ORDER BY avg_rating DESC;*/

/*SELECT title
FROM data_analyst_jobs
WHERE title ILIKE '%Analyst%';*/


/*SELECT title
FROM data_analyst_jobs
WHERE title NOT ILIKE '%Analyst%' AND title NOT ILIKE '%analytics%';*/