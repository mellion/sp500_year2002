# SPY Stock Market Analysis for the year 2002

This project analyzes the S&P 500 ETF Trust (SPY) stock market data for the year 2002 using PostgreSQL, Python, and Power BI. The data was downloaded from Yahoo! Finance in CSV format, and consists of 252 rows, with the following columns: date, open, high, low, close, adj_close, and volume. The goal of this project is to make sense of the 2002 SPY data, visualize insights gained from the analysis, and gain practice in PostgreSQL, Python, and Power BI.

## Data Processing and Cleaning

The data was cleaned and processed in PostgreSQL. Column types were adjusted, and duplicates and null values were checked. No duplicates or null values were found.

## Data Analysis

Several analyses were performed on the data, such as finding the average close price, the highest and lowest close prices, and the largest single-day gains and losses. The yearly percentage change was also calculated, which showed a decrease of 23.63% in 2002.

## Correlation Analysis

A Python script was used to calculate the Pearson correlation coefficient between daily price changes and trading volume. The resulting value of 0.072 suggests a weak positive linear relationship between the two variables.

## Data Visualization

Using Power BI, several visuals were created to better understand the data:

- Yearly Price Change line chart: X-axis = date, Y-axis = average of close
- Monthly Average Volume line and clustered column chart: X-axis = month, Y-axis = average of volume
- Daily Price Change Distribution in 2002 pie chart: Legend = change_category, Values = count of date
- Daily Price Change vs Daily Volume scatter plot: X-axis = daily_pct_change, Y-axis = sum of volume

<br>


![SPY500 ETF Dashboard](https://github.com/mellion/sp500_year2002/blob/main/spy500etf_dashboard.png?raw=true)

<br>

![SPY500 ETF Dashboard](https://github.com/mellion/sp500_year2002/blob/main/spy500etf_dashboard_two.png?raw=true)

<br>

## Conclusions

With a Pearson correlation coefficient of around 0.072, the daily volume vs daily price change has a low correlation. The main conclusion is that 2002 was not a good year for the stock market, with the S&P 500 ETF losing -23.63% during the year. The highest closing price was $117.62, and the lowest was $78.10. The biggest daily gain was 5.97%, and the biggest daily loss was -3.81%. The highest volume occurred in July and October, which coincided with some of the lowest price points of the year, indicating a significant amount of selling at low prices during these months.

<br>

D. Mellion(2023)

<br>
