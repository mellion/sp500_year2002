--average volume by month of 2002
SELECT date_trunc('month', date) AS month, AVG(volume) AS average_volume
FROM stock_data
GROUP BY month
ORDER BY month;