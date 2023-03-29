--largest single day gain
WITH daily_changes AS (
  SELECT date, (close - LAG(close) OVER (ORDER BY date)) / LAG(close) OVER (ORDER BY date) * 100 AS daily_change_percentage
  FROM stock_data
)
SELECT date, daily_change_percentage AS largest_gain_percentage
FROM daily_changes
WHERE daily_change_percentage IS NOT NULL
ORDER BY daily_change_percentage DESC
LIMIT 1;