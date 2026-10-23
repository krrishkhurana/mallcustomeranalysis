This R script builds a small flexdashboard called “Mall Customer Analysis” for exploratory analysis of a mall customer dataset.

What it does:
- Loads the required R libraries for dashboards and plotting.
- Reads a CSV file named Mall_Customers.csv using file.choose(), so the user can select the dataset manually.
- Prints the dataset structure, the first few rows, and a summary of the variables.

Dashboard layout:
- Left column:
  - Gender distribution bar chart
  - Annual income boxplot
- Right column:
  - Age distribution histogram
  - Scatter plot of Annual Income vs. Spending Score, with points colored by gender

Main purpose:
- Visualize how customers differ by gender, age, income, and spending behavior.
- It is a descriptive analytics dashboard rather than a predictive model or preprocessing script.

In short, this file is a quick customer segmentation/EDA dashboard focused on demographic and spending patterns.
