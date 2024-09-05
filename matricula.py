# prompt: read csv and print fist 10 lines

import pandas as pd

# Replace 'your_file.csv' with the actual file name
df = pd.read_csv('matriculas.csv')

# Print the first 10 lines
# print(df.head(10))


import pandas as pd
from sklearn.model_selection import train_test_split

# Load the CSV file into a pandas DataFrame
df = pd.read_csv('matriculas.csv',   sep=";", encoding ="latin")

# Split the data into training and testing sets
train_df, test_df = train_test_split(df, test_size=0.2, random_state=42)

# Sprint (train_df)

print (train_df)


# Print the shapes of the resulting DataFrames
print(f"Train data shape: {train_df.shape}")
print(f"Test data shape: {test_df.shape}")