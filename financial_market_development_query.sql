-- 1.	Global Performance & Trends 
-- What is the total global value per year, and what is the year-over-year growth percentage?
SELECT 
    year_, 
    SUM(value_Usd_) AS Total_Global_Value,
    LAG(SUM(value_Usd_)) OVER (ORDER BY year_) AS Previous_Year_Value,
    ((SUM(value_Usd_) - LAG(SUM(value_Usd_)) OVER (ORDER BY year_)) / 
	LAG(SUM(value_Usd_)) OVER (ORDER BY year_)) * 100 AS YoY_Growth_Percentage
FROM stock_market_data_cleaned
GROUP BY year_
ORDER BY year_;

-- 2. Top Performers 
-- Which are the top 10 countries by average value over the last 5 years of the dataset?
SELECT 
    countryName_, 
    AVG(value_Usd_) AS Average_Valuation
FROM stock_market_data_cleaned
WHERE year_ >= (SELECT MAX(year_) - 5 FROM stock_market_data_cleaned)
GROUP BY countryName_
ORDER BY Average_Valuation DESC
LIMIT 10;

-- 3. Data Integrity & Anomalies 
-- Are there any years where a country has a status_ that is not 'Normal value', and what is the total value at risk in those rows?
SELECT 
    status_, 
    COUNT(*) AS Record_Count,
    SUM(value_Usd_) AS Total_Value_Affected
FROM stock_market_data_cleaned
WHERE status_ != 'Normal value'
GROUP BY status_;

-- 4. Volatility Analysis (To find which markets are "Emerging" or "Unstable.")
-- Which countries have the highest standard deviation in their value over the entire timeline?
SELECT 
    countryName_, 
    STDDEV(value_Usd_) AS Value_Volatility,
    AVG(value_Usd_) AS Mean_Value,
    (STDDEV(value_Usd_) / AVG(value_Usd_)) * 100 AS Variation_Coefficient -- Relative volatility
FROM stock_market_data_cleaned
GROUP BY countryName_
ORDER BY Variation_Coefficient DESC;