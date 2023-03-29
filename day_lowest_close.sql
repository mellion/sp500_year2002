--day with lowest close price of 2002
SELECT date, close
FROM stock_data
WHERE close = (SELECT MIN(close) FROM stock_data);