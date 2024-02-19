<h1><b> Google Data Analytic Capstone Project Cyclistic Case Study Using SQL And Tableau</b></h1>

# Introduction
As part of the Google Data Analytics Professional Certificate course available on Coursera, I chose to utilize SQL and Tableau to enhance my skills in data analysis. I applied these tools throughout the entire data analysis process, including asking relevant questions, preparing the data, processing it, analyzing insights, sharing findings, and taking actionable steps based on the results.

# Scenario
As a junior data analyst part of the marketing analyst team at Cyclistic, a bike-share company based in Chicago, I'm tasked with a crucial objective: maximizing annual memberships to drive the company's future success. To achieve this goal, our team aims to analyze the distinct usage patterns of Cyclistic bikes between casual riders and annual members. By gaining valuable insights from this analysis, we plan to craft a new marketing strategy focused on converting casual riders into annual members. However, our recommendations must undergo approval from Cyclistic executives, necessitating strong support from compelling data insights and professional data visualizations.
# Characters and Team
- Cyclistic operates a bike-share program with over 5,800 bicycles and 600 docking stations, offering a wide range of options including reclining bikes, hand tricycles, and cargo bikes to cater to diverse user needs.
- Approximately 8% of riders utilise assistive options, while the majority opt for traditional bikes.
- Cyclistic users predominantly ride for leisure, although around 30% use bikes for their daily commute.
- Lily Moreno holds the position of director of marketing and serves as your manager at Cyclistic, responsible for developing campaigns and initiatives to promote the bike-share program across various channels.
- The Cyclistic marketing analytics team, which you joined six months ago, consists of data analysts tasked with collecting, analyzing, and presenting data to inform Cyclistic's marketing strategy.
- As a junior data analyst on the team, you've been learning about Cyclistic's mission, business goals, and your role in contributing to their achievement.
- The Cyclistic executive team is responsible for approving recommended marketing programs, ensuring they are backed by compelling data insights and professional data visualizations.
# Steps involved
The Six Steps Approach
![image](https://github.com/Thasni95/Cyclistic-Bike-Share-Data-Analysis/assets/160131033/f60296aa-f004-4170-b71f-c67e6fe2a828)
# Ask
How can Cyclistic speed up success by converting casual riders to annual members?" The finance department notes that annual subscribers are more profitable than casual riders. Moreno, the director of marketing and my manager sees members as crucial for growth and sets a goal to convert casual riders. To achieve this, the marketing team must analyze Cyclistic's data to understand usage differences between annual members and casual riders.
# Prepare
The data used in this project originates from CSV files obtained from Coursera under license. These files span 12 months, from January 2022 to December 2022, and are stored locally for analysis. To assess the data's credibility, we employ the ROCCC framework:
- Reliable (R): The data is fictitious and created solely for this case study.
- Original (O): The data is sourced from the original data provider, Coursera, with a license agreement.
- Comprehensive (C): The data includes all relevant information for the analysis.
- Current (C): The data is up-to-date and regularly updated on a monthly basis.
- Cited (C): The data is cited from Coursera, but lacks information on customer demographics and price points.
  # Process
  I imported the CSV files into an SQL database. Then, I combined these files into a single table named "bikedata" within the database. Subsequently, I performed the required data cleaning and transformation directly in SQL. This included tasks such as removing duplicates, handling missing values, standardizing data formats, and conducting any necessary calculations or aggregations. Finally, the cleaned and transformed data was ready for analysis.
  ![image](https://github.com/Thasni95/Cyclistic-Bike-Share-Data-Analysis/assets/160131033/55831a49-8fd3-420f-8656-7ebfac8c7bc8)
  # Analyse/share
Now, that the data is cleaned and aggregated, it is time to find insights through visuals. Tableau function is used for data visualization
# Distribution of rider and bike type
- In Tableau, I created a bar chart visualization using the data obtained from the SQL query. 
SELECT Rider_type, rideable_type, COUNT(*) AS trip_count
FROM [bike_share].[dbo].bikedata
GROUP BY Rider_type, rideable_type,ride_id
![image](https://github.com/Thasni95/Cyclistic-Bike-Share-Data-Analysis/assets/160131033/f08cf0a9-97ce-4f91-bf7d-afa62de98204) ![image](https://github.com/Thasni95/Cyclistic-Bike-Share-Data-Analysis/assets/160131033/c6efc180-c442-4829-b757-17bd7b2a694e)

- The "Rider_type" and "rideable_type" columns are used as the dimensions (categorical variables) on the X-axis and colour encoding, respectively.
- The "trip_count" column is used as the measure (quantitative variable) on the Y-axis, representing the count of trips.
- Each bar in the bar chart represents the trip count for a specific combination of rider type and rideable type.
- The bars are color-coded based on the rideable type, providing visual differentiation between different types of rideables.The bar chart visually represents the distribution of bike-sharing trips among different rider types and rideable types, allowing for easy comparison and analysis of trip counts across various categories.
Classic bike type is most preferred, followed by electric and docked bike is less used. For both classic and electric bikes, members ride more often than casual riders. Surprisingly, members do not use the docked bike at all.
# Trips Per Rider Types
The "Trips Per Rider Types" visualization using a pie chart in Tableau provides a concise and intuitive representation of the distribution of trip counts per ride among different rider types within the Cyclistic bike-sharing system, facilitating targeted decision-making and service enhancements.
SELECT 
    Rider_type,
    COUNT(*) AS count_rider_type 
FROM 
    [bike_share].[dbo].bikedata
WHERE 
    Rider_type IN ('member', 'casual')
GROUP BY 
    Rider_type;
    ![image](https://github.com/Thasni95/Cyclistic-Bike-Share-Data-Analysis/assets/160131033/2e3aadf0-7c59-4821-b0ed-63603eb39201)
    As we can see, members are nearly 20% more than casual riders.
# Rider type by Weekday And Month
The "Rider Type by Weekday" visualization using a horizontal bar chart in Tableau provides a visual representation of the distribution of bike-sharing trips across weekdays for each rider type, facilitating data-driven strategies and operational optimizations within the Cyclistic bike-sharing service.
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
    
![image](https://github.com/Thasni95/Cyclistic-Bike-Share-Data-Analysis/assets/160131033/1744b4fb-dbaf-4b28-8927-d9a14ad51629)
the "Rider Type by Month" visualization using a vertical bar chart in Tableau provides a visual representation of the distribution of bike-sharing trips across months for each rider type.


![image](https://github.com/Thasni95/Cyclistic-Bike-Share-Data-Analysis/assets/160131033/93483c5c-8519-4f96-946a-0c1846297c3b)

The visualizations indicate that casual members tend to favour bike riding from late spring through the end of summer, while they tend to decrease their biking activity during the winter months (January/February), possibly due to inclement weather conditions. On the other hand, annual members also prefer riding during the spring/summer months, but their ridership levels remain more consistent and steadier throughout the year compared to casual riders, who experience a sharp peak in activity during certain periods. Additionally, there is a noticeable increase in bike usage during weekends (Friday, Saturday, and Sunday), suggesting that most riders, whether members or casual, engage in leisurely biking activities during these days.

# Average Ride Length by Rider Type
This visualization using a horizontal bar chart in Tableau provides a clear representation of the average duration of bike-sharing trips for each rider type, facilitating data-driven decision-making and service optimizations within the Cyclistic bike-sharing service.
SELECT
    Rider_type,
    AVG(DATEDIFF(MINUTE, started_at, ended_at)) AS average_ride_duration_minutes
FROM
    [bike_share].[dbo].bikedata
GROUP BY
    Rider_type;
![image](https://github.com/Thasni95/Cyclistic-Bike-Share-Data-Analysis/assets/160131033/8efca772-6df1-410f-9962-f7bff2fac42e)

We can see that the average ride length of casual users are 23.25 and that of member users are 11.95.


# Final Dashboard

![image](https://github.com/Thasni95/Cyclistic-Bike-Share-Data-Analysis/assets/160131033/1d9ee7ac-5e4e-497f-8af0-c6f90847b244)

# Key Findings
- The Classic bike is the preferred choice for both member and casual riders, being the most frequently used bike.
- Casual riders exhibit higher riding activity between late spring and the end of the summer season.
- Weekend trips see a significant increase compared to weekdays, particularly for casual riders.
# Recommendations
1. Diversify bike usage: Implement strategies to promote the use of docked and electric bikes in addition to the Classic bike.
2. Seasonal targeting: Intensify marketing campaigns during late spring and summer when casual riders are more active, maximizing conversion opportunities.
3. Weekend focus: Target casual riders on weekends, leveraging their leisurely bike usage for potential conversions.
4. Membership benefits: Educate casual riders about the benefits of membership subscriptions to increase awareness and encourage sign-ups.
