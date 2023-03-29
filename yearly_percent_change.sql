--yearly percentage change
WITH first_last_day AS (
  SELECT date, close
  FROM stock_data
  WHERE date = (SELECT MIN(date) FROM stock_data)
  OR date = (SELECT MAX(date) FROM stock_data)
)
SELECT (SELECT close FROM first_last_day WHERE date = (SELECT MIN(date) FROM first_last_day)) AS first_day_close,
       (SELECT close FROM first_last_day WHERE date = (SELECT MAX(date) FROM first_last_day)) AS last_day_close,
       ((SELECT close FROM first_last_day WHERE date = (SELECT MAX(date) FROM first_last_day)) - 
       (SELECT close FROM first_last_day WHERE date = (SELECT MIN(date) FROM first_last_day))) AS net_change,
       (((SELECT close FROM first_last_day WHERE date = (SELECT MAX(date) FROM first_last_day)) - 
       (SELECT close FROM first_last_day WHERE date = (SELECT MIN(date) FROM first_last_day))) /
       (SELECT close FROM first_last_day WHERE date = (SELECT MIN(date) FROM first_last_day))) * 100 AS net_change_percentage;