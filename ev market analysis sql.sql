Select *
from vehicles ;

-- Q1. Which brand sells the most units per model offered ?

select brand , model , sum(annual_sales_units) as Cars_Sold
from vehicles
group by brand , model 
order by Cars_Sold desc ;

-- Q2. What price band + body type + drive type combination produces the highest sales volume?

select 	market_segment as price_band , 
		body_type , 
        drive_type,
        sum(annual_sales_units ) as total_sales
from vehicles
group by body_type,
		 drive_type,
         price_band
order by price_band desc ;

-- Q3. Does the higher price of Performance variants lead to increased sales, or do higher prices reduce customer demand?

SELECT
	variant,
    round(avg(price_usd),2) as avg_price,
    sum(annual_sales_units) as total_sales,
    ROUND(SUM(annual_sales_units) / AVG(price_usd),2) AS demand_per_dollar
from vehicles
group by variant
order  by demand_per_dollar desc ;

-- Q4. Which brands are overspending on horsepower and top speed specs that don't move sales numbers? 

SELECT
    brand,
    round(avg(horsepower), 2) as avg_horsepower,
    round(avg(top_speed_mph), 2) as avg_top_speed,
    sum(annual_sales_units) as total_sales,
    round(avg(horsepower) / sum(annual_sales_units),4) as horsepower_sales_ratio,
    round(avg(top_speed_mph) / sum(annual_sales_units),4) as speed_sales_ratio
from vehicles
group by brand
order by horsepower_sales_ratio desc,
         speed_sales_ratio desc;
         
-- Q5. At what battery capacity (kWh) does customer satisfaction stop improving meaningfully?

select
    case
        when battery_capacity_kwh < 50 then 'Low Capacity'
        when battery_capacity_kwh between 50 and 80 then 'Medium Capacity'
        when battery_capacity_kwh between 81 and 110 then 'High Capacity'
        else 'Ultra Capacity'
    end as battery_band,
    round(avg(customer_rating), 2) as avg_customer_satisfaction,
    count(*) as total_models,
    sum(annual_sales_units) as total_sales
from vehicles
group by battery_band
order by total_sales desc;


-- Q6. Which country of manufacture delivers the best price-to-range value for buyers? 

select
    country_of_origin,
    round(avg(price_usd), 2) as avg_price,
    round(avg(range_miles), 2) as avg_range,
    round(avg(price_usd) / avg(range_miles),2) as price_per_mile_range,
    sum(annual_sales_units) as total_sales
from vehicles
group by country_of_origin
order by price_per_mile_range asc;

-- Q7. Which market segment gives the highest sales volume per dollar of average price?

select
    market_segment,
    round(avg(price_usd), 2) as avg_price,
    sum(annual_sales_units) as total_sales,
    round(sum(annual_sales_units) / avg(price_usd),4) as sales_per_dollar
from vehicles
group by market_segment
order by sales_per_dollar desc;


-- Q8.  Which 5 models — ranked on rating, sales, and range-per-dollar — are the biggest competitive threats right now? 


select
    model,
    brand,
    customer_rating,
    annual_sales_units,
    round(range_miles / price_usd,4) as range_per_dollar
from vehicles
order by
    customer_rating desc,
    annual_sales_units desc,
    range_per_dollar desc
limit 5;


-- Q9.Which brands have the widest variant price spread — smart ladder strategy or brand dilution? 

select
    brand,
    min(price_usd) as lowest_price,
    max(price_usd) as highest_price,
    round(max(price_usd) - min(price_usd),2) as price_spread,
    count(distinct model) as total_models
from vehicles
group by brand
order by price_spread desc;


-- Q10. Which country records the highest EV sales volume, and which brand contributes the most to those sales?

select
    country_of_origin as country,
    sum(annual_sales_units) as total_sales
from vehicles
group by country_of_origin 
order by total_sales desc;


select
    brand,
    sum(annual_sales_units) as total_sales
from vehicles
group by brand
order by total_sales desc;