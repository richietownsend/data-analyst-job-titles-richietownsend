/*ANSWERS:
Q1: 1793 rows
Q2: ExxonMobil
Q3: 21 postings in TN; 27 postings in TN or KY 
Q4: 3 postings in TN have a star rating above 4
Q5: 151 postings have a review count between 500 and 1000
Q6: Nebraska has the highest average rating
Q7: 881 unique job titles
Q8: 230 unique job titles for companies in CA
Q9: 40 companies with more than 5000 reviews across locations
Q10: Unilever, General Motors, Nike, American Express, Microsoft and Kaiser Permanente have a 4.19999980900000
Q11: 774 distinct titles; 1669 in total
Q12: 4 different job titles don't have analyst or analytics in the name; Tableau in the word in common
BONUS: Internet and Software (62), Banks and Financial Services(61), Consulting and Business Services(57), Health Care(52)
*/

--QUERIES--
--Q1--
/*SELECT COUNT (*) FROM data_analyst_jobs*/
--1793 rows--

--Q2--
/*SELECT *
FROM data_analyst_jobs
LIMIT 10;*/
--ExxonMobil--

--Q3--
/*SELECT COUNT (*)
FROM data_analyst_jobs
WHERE location = 'TN';*/
--21 postings in TN--

--Q3--
/*SELECT COUNT (*)
FROM data_analyst_jobs
WHERE location IN ('TN', 'KY');*/
--27 postings in TN and KY--

--Q4--
/*SELECT *
FROM data_analyst_jobs
WHERE location = 'TN' AND star_rating > 4;*/
--3 posting in TN have a star rating above 4--

--Q5--
/*SELECT COUNT (*)
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000;*/
--151 postings have a review count between 500 and 1000--

--Q6--
/*SELECT location AS state, ROUND(AVG(star_rating),2) AS avg_rating
FROM data_analyst_jobs
WHERE location IS NOT NULL AND star_rating IS NOT NULL
GROUP BY location
ORDER BY avg_rating DESC;*/
--Nebraska has the highest average rating--

--Q7--
/*SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs;*/
--881 unique job titles--

--Q8--
/*SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
WHERE location = 'CA';*/
--230 unique job titles for companies in CA--

--Q9/Q10--
/*SELECT company, ROUND(AVG(star_rating),2) AS avg_rating
FROM data_analyst_jobs
WHERE review_count > 5000 AND company IS NOT NULL
GROUP BY company
ORDER BY avg_rating DESC;*/
--40 companies with more than 5000 reviews across locations--
--Unilever, General Motors, Nike, American Express, Microsoft and Kaiser Permanente have a 4.2 (4.19999980900000)--

--Q11--
/*SELECT COUNT(DISTINCT title)
FROM data_analyst_jobs
WHERE title ILIKE '%Analyst%';*/
--774 distinct titles; 1669 in total--

--Q12--
/*SELECT DISTINCT title
FROM data_analyst_jobs
WHERE title NOT ILIKE '%Analyst%' AND title NOT ILIKE '%analytics%';*/
--4 different job titles don't have analyst or analytics in the name; Tableau in the word in common--

--BONUS--
SELECT domain AS industry, location, COUNT(title) AS hard_to_fill, company
FROM data_analyst_jobs
WHERE domain IS NOT NULL AND days_since_posting > 21 AND skill ILIKE '%sql%'
GROUP BY domain, location, company
ORDER BY domain, hard_to_fill DESC;
--Internet and Software (62), Banks and Financial Services(61), Consulting and Business Services(57), Health Care(52)--