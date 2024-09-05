# prompt: read csv and print fist 10 lines

import pandas as pd
from sklearn.model_selection import train_test_split


# Load the CSV file into a pandas DataFrame
df = pd.read_csv('matriculas.csv',   sep=";", encoding ="latin")

# Print the first 10 lines
print(df.head(3))

# Split the data into training and testing sets
train_df, test_df = train_test_split(df, test_size=0.1, random_state=42)

#print (test_df)
#print (train_df)

# Print the shapes of the resulting DataFrames
print(f"Train data shape: {train_df.shape}")
print(f"Test data shape: {test_df.shape}")

# Select specific columns
df_new = df[['Ano Ingresso', 'Curso', 'Semestre Ingresso']] 
print (df_new) 

# Write to a new CSV file
df_new.to_csv('output.csv', index=False)


