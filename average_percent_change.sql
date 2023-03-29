--average daily percentage change
WITH daily_changes AS (
  SELECT date, (close - LAG(close) OVER (ORDER BY date)) / LAG(close) OVER (ORDER BY date) * 100 AS daily_change_percentage
  FROM stock_data
)
SELECT AVG(daily_change_percentage) AS average_daily_change_percentage
FROM daily_changes;