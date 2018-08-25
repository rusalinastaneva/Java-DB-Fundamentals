USE restaurant;

SELECT COUNT(category_id) FROM products AS e
WHERE e.category_id=4 AND e.price > 10
GROUP BY e.category_id;