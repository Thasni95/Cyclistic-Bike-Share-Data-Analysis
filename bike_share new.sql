--To kickstart the Cyclistic Bike Share Data Analysis project, I began by creating a structured database table named "bikedata" using SQL.
--This table serves as the foundation for storing and organizing the bike-sharing data retrieved from Cyclistic. 
--The table includes essential fields such as ride ID, rideable type, start and end timestamps, station names, 
--rider type, ride length, date, time, month, and day of the week. 
This organized table structure lays the groundwork for efficient data storage and analysis throughout the project.
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

--Introduction to Inserting and Combining Data:
--With the database table created, the next step involved importing and combining twelve months of bike-sharing 
--data from CSV files into the "bikedata" table. This process was executed using SQL's UNION ALL operator, which
--merged the data from each month into a unified dataset. By consolidating the data in this manner, 
--we ensure that all relevant information is available for comprehensive analysis and insights extraction.

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


--Introduction to Data Cleaning:
--Following data importation, it was imperative to conduct data cleaning to ensure the integrity and quality of the dataset.
--This involved identifying and addressing null values in critical fields such as "start_station_name" and "end_station_name" 
--using SQL DELETE statements. By removing incomplete records, we guarantee that the dataset is free from inconsistencies 
--and ready for meaningful analysis without any missing values affecting the results.

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
--. By querying the "bikedata" table using SQL, I extracted valuable insights regarding the number of rides 
--undertaken by member riders specifically. The initial SQL query calculates the total count of rides where 
--the rider type is categorized as 'member'. This provides a baseline understanding of the volume of rides 
--attributed to members of the bike-sharing service.

SELECT 
COUNT(*) AS count_rider_type 
FROM [bike_share] .[dbo].bikedata
WHERE 
Rider_type= 'member' ;


--By conducting this rider type analysis, we gain valuable insights into the 
distribution of rides among member and casual riders
SELECT 
Rider_type,
COUNT(*) AS count_rider_type 
FROM 
[bike_share].[dbo].bikedata
WHERE 
Rider_type IN ('member', 'casual')
GROUP BY 
Rider_type;


--In this segment of the Cyclistic Bike Share Data Analysis project, I focused on examining the 
--distribution of rideable types among different rider categories within the bike-sharing dataset. 
--By querying the "bikedata" table using SQL, I extracted valuable insights regarding the number of trips 
--undertaken based on both rider type and rideable type.
SELECT Rider_type, rideable_type, COUNT(*) AS trip_count
FROM [bike_share].[dbo].bikedata
GROUP BY Rider_type, rideable_type,ride_id

--In this section of the Cyclistic Bike Share Data Analysis project, I focused on examining the distribution
--of bike-sharing trips among different rider types across months and days of the week. 
--By querying the "bikedata" table using SQL, I extracted valuable insights regarding
--the number of trips undertaken by each rider type, aggregated by month and day of the week.

SELECT 
Rider_type, 
Month,
COUNT(*) AS trip_count
FROM 
[bike_share].[dbo].bikedata
GROUP BY 
Rider_type, Month;

--rider type by week
SELECT 
Rider_type, day_of_week,
COUNT(*) AS trip_count
FROM 
[bike_share].[dbo].bikedata
GROUP BY 
Rider_type, day_of_week;

--In this part of the Cyclistic Bike Share Data Analysis project, I focused on identifying the top start stations
--based on the number of bike-sharing trips originating from each station. By querying the "bikedata" table using SQL, 
--I extracted valuable insights regarding the most popular start stations within the Cyclistic bike-sharing system.

SELECT TOP  5 WITH TIES
start_station_name,
COUNT(*) AS trip_count
FROM 
[bike_share].[dbo].bikedata
GROUP BY 
start_station_name
ORDER BY 
trip_count DESC;

--In this segment of the Cyclistic Bike Share Data Analysis project, I focused on computing the average ride length 
--for different rider types within the bike-sharing dataset. By querying the "bikedata" table using SQL,
--I extracted valuable insights regarding the typical duration of bike-sharing trips undertaken by Cyclistic users.

SELECT
Rider_type,
AVG(DATEDIFF(MINUTE, started_at, ended_at)) AS average_ride_duration_minutes
FROM
[bike_share].[dbo].bikedata
GROUP BY
Rider_type;






