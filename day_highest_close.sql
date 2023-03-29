--day with highest close price of 2002
SELECT date, close
FROM stock_data
WHERE close = (SELECT MAX(close) FROM stock_data);