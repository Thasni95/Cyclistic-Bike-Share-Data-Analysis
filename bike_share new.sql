--creating table

	CREATE TABLE bikedata(
    ride_id NVARCHAR(100),
    rideable_type NVARCHAR(MAX),
    started_at DATETIME,
    ended_at DATETIME,
    start_station_name NVARCHAR(MAX),
    end_station_name NVARCHAR(MAX),
    Rider_type NVARCHAR(MAX),
    ride_length TIME,
    date DATE,
    time TIME,
    month NVARCHAR(50),
    day_of_week NVARCHAR(50)
);

--inserting and combing all the table into one table

	INSERT INTO [bike_share] .[dbo].bikedata
	select
	
    ride_id, 
    rideable_type,
    started_at, 
    ended_at, 
    start_station_name, 
    end_station_name, 
    Rider_Type,
    Ride_length,
    Date,
    Time,
    MONTH,
    Day_of_week
FROM[bike_share].[dbo].[202201-divvy-tripdata]
UNION ALL
SELECT 
     ride_id, 
    rideable_type, 
    started_at, 
    ended_at, 
    start_station_name, 
    end_station_name, 
    Rider_Type,
    Ride_length,
    Date,
    Time,
    MONTH,
    Day_of_week
FROM[bike_share].[dbo].[202202-divvy-tripdata]
UNION ALL
SELECT 
     ride_id, 
    rideable_type, 
    started_at, 
    ended_at, 
    start_station_name, 
    end_station_name, 
    Rider_Type,
    Ride_length,
    Date,
    Time,
    MONTH,
    Day_of_week
FROM[bike_share].[dbo].[202203-divvy-tripdata]
UNION ALL
SELECT 
     ride_id, 
    rideable_type, 
    started_at, 
    ended_at, 
    start_station_name, 
    end_station_name, 
    Rider_Type,
    Ride_length,
    Date,
    Time,
    MONTH,
    Day_of_week
FROM[bike_share].[dbo].[202204-divvy-tripdata]
UNION ALL
SELECT 
    ride_id, 
    rideable_type, 
    started_at, 
    ended_at, 
    start_station_name, 
    end_station_name, 
    Rider_Type,
    Ride_length,
    Date,
    Time,
    MONTH,
    Day_of_week
FROM[bike_share].[dbo].[202205-divvy-tripdata]
UNION ALL
SELECT 
    ride_id, 
    rideable_type, 
    started_at, 
    ended_at, 
    start_station_name, 
    end_station_name, 
    Rider_Type,
    Ride_length,
    Date,
    Time,
    MONTH,
    Day_of_week
FROM[bike_share].[dbo].[202206-divvy-tripdata]
UNION ALL
SELECT 
    ride_id, 
    rideable_type, 
    started_at, 
    ended_at, 
    start_station_name, 
    end_station_name, 
    Rider_Type,
    Ride_length,
    Date,
    Time,
    MONTH,
    Day_of_week
FROM[bike_share].[dbo].[202207-divvy-tripdata]
UNION ALL
SELECT 
    ride_id, 
    rideable_type, 
    started_at, 
    ended_at, 
    start_station_name, 
    end_station_name, 
    Rider_Type,
    Ride_length,
    Date,
    Time,
    MONTH,
    Day_of_week
FROM[bike_share].[dbo].[202208-divvy-tripdata]
UNION ALL
SELECT 
    ride_id, 
    rideable_type, 
    started_at, 
    ended_at, 
    start_station_name, 
    end_station_name, 
    Rider_Type,
    Ride_length,
    Date,
    Time,
    MONTH,
    Day_of_week
FROM[bike_share].[dbo].[202209-divvy-tripdata]
UNION ALL
SELECT 
    ride_id, 
    rideable_type, 
    started_at, 
    ended_at, 
    start_station_name, 
    end_station_name, 
    Rider_Type,
    Ride_length,
    Date,
    Time,
    MONTH,
    Day_of_week
FROM[bike_share].[dbo].[202210-divvy-tripdata]
UNION ALL
SELECT 
    ride_id, 
    rideable_type, 
    started_at, 
    ended_at, 
    start_station_name, 
    end_station_name, 
    Rider_Type,
    Ride_length,
    Date,
    Time,
    MONTH,
    Day_of_week
FROM[bike_share].[dbo].[202211-divvy-tripdata]
UNION ALL
SELECT 
    ride_id, 
    rideable_type, 
    started_at, 
    ended_at, 
    start_station_name, 
    end_station_name, 
    Rider_Type,
    Ride_length,
    Date,
    Time,
    MONTH,
    Day_of_week
FROM[bike_share].[dbo].[202212-divvy-tripdata];


select * from [master].[dbo].bikedata
--To find the null values of all column

 
 SELECT COUNT(*) AS null_count_end_station_name
FROM [bike_share] .[dbo].bikedata
WHERE end_station_name IS NULL;
 SELECT COUNT(*) AS null_count_start_station_name
FROM [bike_share] .[dbo].bikedata
WHERE start_station_name IS NULL;
--cleaning data

DELETE FROM [bike_share] .[dbo].bikedata
WHERE end_station_name IS NULL;


DELETE FROM [bike_share] .[dbo].bikedata
WHERE start_station_name is null;



select * from [dbo].bikedata


SELECT 
    COUNT(*) AS count_casual_users
FROM [bike_share] .[dbo].bikedata where
   
    Rider_type='Member';

	
	SELECT 
    MAX(ride_length) AS max_ride_length
FROM [dbo].[CombinedTripData];
    
	select * from  [bike_share] .[dbo].bikedata;
	---trips per rider 

	SELECT 
    COUNT(*) AS count_rider_type 
FROM [bike_share] .[dbo].bikedata
   
WHERE 
    Rider_type= 'member' ;
	SELECT 
    Rider_type,
    COUNT(*) AS count_rider_type 
FROM 
    [bike_share].[dbo].bikedata
WHERE 
    Rider_type IN ('member', 'casual')
GROUP BY 
    Rider_type;

	--distinct rider type
SELECT Rider_type, rideable_type, COUNT(*) AS trip_count
FROM [bike_share].[dbo].bikedata
GROUP BY Rider_type, rideable_type,ride_id

---rider_type by month

SELECT 
    Rider_type, 
    Month,
    COUNT(*) AS trip_count
FROM 
    [bike_share].[dbo].bikedata
GROUP BY 
    Rider_type, 
    Month;
	--rider type by week
	SELECT 
    Rider_type, 
    day_of_week,
    COUNT(*) AS trip_count
FROM 
    [bike_share].[dbo].bikedata
GROUP BY 
    Rider_type, 
    day_of_week;

	--top station name

	SELECT TOP  5 WITH TIES
    start_station_name,
    COUNT(*) AS trip_count
FROM 
    [bike_share].[dbo].bikedata
GROUP BY 
    start_station_name
ORDER BY 
    trip_count DESC;

	--average ride_length
	SELECT
    Rider_type,
    AVG(DATEDIFF(MINUTE, started_at, ended_at)) AS average_ride_duration_minutes
FROM
    [bike_share].[dbo].bikedata
GROUP BY
    Rider_type;






