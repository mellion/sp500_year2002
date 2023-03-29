
--add daily percent column
ALTER TABLE stock_data ADD COLUMN daily_pct_change NUMERIC(12, 2);

WITH daily_pct_change AS (
  SELECT
    date,
    ((close - LAG(close) OVER (ORDER BY date)) / LAG(close) OVER (ORDER BY date)) * 100 AS pct_change
  FROM stock_data
),
updated_rows AS (
  UPDATE stock_data
  SET daily_pct_change = daily_pct_change.pct_change
  FROM daily_pct_change
  WHERE stock_data.date = daily_pct_change.date
  RETURNING *
)
SELECT * FROM updated_rows;