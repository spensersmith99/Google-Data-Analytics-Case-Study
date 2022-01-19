-- 5 most popular places to start trip
SELECT start_station_name, COUNT(rental_id) num_trips
FROM cyclistic_yearly_data.2019
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5
--CONCLUSION: target these areas with advertisements


-- busiest months
SELECT EXTRACT(MONTH FROM start_time) month, COUNT(rental_id) num_trips
FROM cyclistic_yearly_data.2019
GROUP BY 1
ORDER BY 2 DESC
--CONCLUSION: summer is the busiest time of year


-- avg length of trip sorted by month 
SELECT EXTRACT(MONTH FROM start_time) month, AVG(trip_duration) / 60 trip_dur_minutes
FROM cyclistic_yearly_data.2019
GROUP BY 1
ORDER BY 2 DESC
-- CONCLUSION: average trip was much longer in the summer


-- avg length of trip customer vs subscriber
SELECT user_type, AVG(trip_duration) / 60 avg_trip_in_mins
FROM cyclistic_yearly_data.2019
GROUP BY 1
-- CONCLUSION: subscribers take much shorter rides (about 4x shorter)


-- number of trips for customer and subscriber
SELECT user_type, COUNT(rental_id) num_trips
FROM cyclistic_yearly_data.2019
GROUP BY 1
-- CONCLUSION: subscribers account for way more trips (3.5x more)


-- what day of week is most popular
SELECT EXTRACT(DAYOFWEEK FROM start_time) day_of_week, COUNT(rental_id) num_trips
FROM cyclistic_yearly_data.2019
GROUP BY 1
ORDER BY 2 DESC
-- CONCLUSION: the work week is much busier than the weekend


-- number of trips for both genders
SELECT COUNT(rental_id) num_trips
FROM cyclistic_yearly_data.2019
WHERE gender = 'Male'
UNION ALL 
SELECT COUNT(rental_id)
FROM cyclistic_yearly_data.2019
WHERE gender = 'Female'
-- CONCLUSION: much more males than females use the services (3x more)