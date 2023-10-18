-- Our product managers want a query to see a list of the most visited cities.Get a list of the most visited cities.
SELECT city,
  count(reservations) AS total_reservations
FROM properties
  JOIN reservations ON properties.id = reservations.property_id
GROUP BY city
ORDER BY total_reservations DESC;