--average price at close during 2002
SELECT date_part('year', date) AS year, AVG(close) AS average_close
FROM stock_data
GROUP BY year
ORDER BY year;