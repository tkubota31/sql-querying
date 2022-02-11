-- Comments in SQL Start with dash-dash --
SELECT app_name
FROM analytics
WHERE ID = 1880;

SELECT id, app_name
FROM analytics
WHERE last_updated = '2018-08-01'

SELECT category, COUNT(app_name)
FROM analytics
GROUP BY category;

SELECT app_name, reviews
FROM analytics
ORDER BY reviews desc
LIMIT 5;

SELECT app_name
FROM analytics
WHERE rating >= 4.8
ORDER BY reviews desc
LIMIT 1;

SELECT category, AVG(rating)
FROM analytics
GROUP BY category
ORDER BY AVG(rating) desc;

SELECT app_name,price,rating
FROM analytics
WHERE rating < 3
ORDER BY price desc
LIMIT 1;

SELECT app_name
FROM analytics
WHERE min_installs <= 50 AND rating IS NOT NULL
ORDER BY rating desc;

SELECT app_name
FROM analytics
WHERE rating < 3 AND reviews >=10000

SELECT app_name
FROM analytics
WHERE price BETWEEN .1 AND 1;
ORDER BY reviews desc
LIMIT 10;

SELECT app_name, MAX(last_updated)
FROM analytics
GROUP BY app_name
ORDER BY MAX(last_updated)
LIMIT 1;

select app_name
FROM analytics
WHERE last_updated IN (SELECT MIN(last_updated)
from analytics);

SELECT app_name
FROM analytics
WHERE price IN (SELECT MAX(price) FROM analytics);

SELECT COUNT(reviews)
FROM analytics;

SELECT category, COUNT(app_name)
FROM analytics
GROUP BY category
HAVING COUNT(app_name) > 300;

select category, count(category)
from analytics
group by category
HAVING COUNT(app_name) > 300;

SELECT app_name,reviews,min_installs, min_installs/reviews AS proportion
FROM analytics
WHERE min_installs >= 100000
ORDER BY proportion desc
LIMIT 1;

SELECT app_name,reviews,min_installs, MAX(min_installs/reviews) AS proportion
FROM analytics
WHERE min_installs >= 100000
GROUP BY app_name,reviews,min_installs
ORDER BY proportion desc
LIMIT 1;
