/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */

SELECT
    category.name,
    COUNT(film_id) as sum
FROM
    category
JOIN
    film_category
USING
    (category_id)
JOIN
    film
USING
    (film_id)
JOIN
    language
USING
    (language_id)
WHERE
    language.name ILIKE 'English%'
GROUP BY
   category.name 
ORDER BY
    category.name;
