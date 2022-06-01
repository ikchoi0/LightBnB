SELECT reservations.id, title, start_date, cost_per_night, AVG(rating) as average_rating
FROM reservations JOIN properties on reservations.property_id = properties.id
JOIN property_reviews ON properties.id = property_reviews.property_id
WHERE reservations.guest_id = 1
GROUP BY reservations.id, properties.id
ORDER BY start_date
LIMIT 10;