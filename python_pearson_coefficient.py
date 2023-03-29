import pandas as pd
import numpy as np

# Read the data into a pandas DataFrame
# Replace 'data.csv' with the path to your exported CSV file
data = pd.read_csv('data-1680060356743.csv')

# Drop the first row with the NaN value
data = data.dropna()

# Calculate the Pearson correlation coefficient between daily_change and volume
correlation, _ = np.corrcoef(data['daily_change'], data['volume'])

print('Pearson correlation coefficient:', correlation)
