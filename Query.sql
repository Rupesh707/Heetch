---------------------------------------------
---------------------------------------------
-- Data Analytics Test 2023 - Rupesh Kumar --
---------------------------------------------
---------------------------------------------


-- Part1 -- 
-- Question 1 --
-- What is the percentage of sessions which end up in a ride order everyday ?
-- Assumption using Device id
-- Count the number of unique sessions (device_id) for each day
WITH DailyTotalSessions AS (
	SELECT
		DATE(timestamp)AS session_date,
		COUNT(DISTINCT device_id) AS total_sessions
	FROM mobile_events 
	GROUP BY session_date
),
-- Count the number of unique sessions where a ride_order was tapped for each day
DailyRideOrderSessions AS (
    SELECT DATE(timestamp) AS session_date,
           COUNT(DISTINCT device_id) AS ride_order_sessions
    FROM mobile_events
    WHERE event_name LIKE 'ride_order_tapped'
    GROUP BY session_date
)

-- Calculate the % of sessions that ended in a ride order by dividing the count of the ride_order_sessions by total_sessions *100
SELECT DailyTotalSessions.session_date,
	   ride_order_sessions,
       total_sessions,
       ROUND((CAST(ride_order_sessions AS FLOAT) / total_sessions) * 100,2) AS percentage_ride_orders
FROM DailyTotalSessions
JOIN DailyRideOrderSessions ON DailyTotalSessions.session_date = DailyRideOrderSessions.session_date;


-- Question 2 --
-- We suspect the payments_selected event to not be triggered properly by the app. How many of them didn't fire ?

-- Create a temporary view for (PaymentsShownSessions) to identify all devices where the payment is shown
WITH PaymentsShownSessions AS ( 
    SELECT DISTINCT date(timestamp) AS session_date, device_id
    FROM mobile_events
    WHERE event_name = 'payments_shown'
),

-- Create another temporary view (PaymentsSelectedSessions) to identify devices where the payment was selected
PaymentsSelectedSessions AS (
    SELECT DISTINCT date(timestamp) AS session_date,device_id
    FROM mobile_events
    WHERE event_name = 'payments_selected'
),

-- Create a third temporary view (RideOrderTappedSessions) for devices where a ride order was tapped
RideOrderTappedSessions AS (
    SELECT DISTINCT date(timestamp) AS session_date,device_id
    FROM mobile_events
    WHERE event_name = 'ride_order_tapped'
),

-- Finally, we joing all three views to find devices that received a payment_shown event 
-- but did not receive a payments_selected event, event thought they received a ride_order_tapped event
Event_not_triggered AS (
SELECT p.session_date,p.device_id as shown_device_id, ps.device_id as selected_device_id, rs.device_id as ordered_device_id
FROM PaymentsShownSessions p
LEFT JOIN PaymentsSelectedSessions ps
ON p.session_date = ps.session_date
AND p.device_id = ps.device_id
LEFT JOIN RideOrderTappedSessions rs
ON p.session_date = rs.session_date
AND p.device_id = rs.device_id
)

select count(*) from Event_not_triggered
where ordered_device_id is not null
and selected_device_id is null


