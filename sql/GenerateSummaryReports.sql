USE sakila;

-- Generate Customer Summary Report
SELECT 
    c.customer_id,
    c.first_name,
    c.last_name,
    c.email,
    c.store_id,
    COUNT(r.rental_id) AS total_rentals,
    SUM(p.amount) AS total_spent,
    MAX(r.rental_date) AS last_rental_date
FROM customer c
LEFT JOIN rental r ON c.customer_id = r.customer_id
LEFT JOIN payment p ON c.customer_id = p.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name, c.email, c.store_id;

-- Generate Film Performance Report
SELECT 
    f.film_id,
    f.title,
    f.release_year,
    f.rating,
    cat.name AS category,
    COUNT(r.rental_id) AS total_rentals,
    SUM(p.amount) AS total_revenue
FROM film f
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category cat ON fc.category_id = cat.category_id
LEFT JOIN inventory i ON f.film_id = i.film_id
LEFT JOIN rental r ON i.inventory_id = r.inventory_id
LEFT JOIN payment p ON r.rental_id = p.rental_id
GROUP BY f.film_id, f.title, f.release_year, f.rating, cat.name;

-- Generate Rental Activity Report
SELECT 
    r.rental_id,
    r.rental_date,
    r.return_date,
    r.customer_id,
    i.store_id,
    i.film_id,
    p.amount AS payment_amount
FROM rental r
JOIN inventory i ON r.inventory_id = i.inventory_id
LEFT JOIN payment p ON r.rental_id = p.rental_id;

-- Generate Store Summary Report
SELECT 
    s.store_id,
    COUNT(DISTINCT c.customer_id) AS total_customers,
    COUNT(r.rental_id) AS total_rentals,
    SUM(p.amount) AS total_revenue
FROM store s
LEFT JOIN customer c ON s.store_id = c.store_id
LEFT JOIN rental r ON c.customer_id = r.customer_id
LEFT JOIN payment p ON r.rental_id = p.rental_id
GROUP BY s.store_id;