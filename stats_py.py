from dash import Dash, dcc, html
import dask.dataframe as dd

# Read the TSV file using Dask
df = dd.read_csv('C:/Nida/DADS5001/DADS5001_AfterMidterm_Class5_2024-04-20/pcb_dataset_final.tsv', delimiter='\t')

# Count the total number of rows
total_rows = len(df)

# Count the number of rows where the "click" column has a value of "1"
clicks = (df['click'] == 1).sum().compute()

print("Total rows:", total_rows)
print("Number of '1' in 'click' column:", clicks)
