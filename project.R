---
title: "Mall Customer Analysis"
output: 
  flexdashboard::flex_dashboard:
    orientation: rows
    vertical_layout: fill
---

```{r setup, include=FALSE}
library(flexdashboard)
library(readr)
library(dplyr)
library(tidyr)
library(ggplot2)
library(rmarkdown)
library(plotly)
# Read the CSV file
data <- read.csv(file.choose("Mall_Customers.csv"))
# Display structure of the data
str(data)
# Show the first few rows of the data
head(data)
# Summarize the data
summary(data)
```

#Column {data-width=550}
-----------------------------------------------------------------------

```{r}
gender_table <- data %>% count(Gender)

ggplot(gender_table, aes(x = Gender, y = n, fill = Gender)) +
    geom_bar(stat = "identity") +
    labs(title = "Gender Distribution",
         x = "Gender",
         y = "Count") +
    theme_classic()
```
```{r}

ggplot(data, aes(x = "", y = Annual.Income..k..)) +
  geom_boxplot(fill = "#660033") +
  labs(
    title = "Annual Income Distribution",
    x = "Annual Income Class",
    y = "Annual Income"
  )




```





#Column {data-width=350}
-----------------------------------------------------------------------

```{r}
ggplot(data, aes(x = Age)) +
    geom_histogram(fill = "blue", color = "black", bins = 15) +
    labs(title = "Age Distribution",
         x = "Age",
         y = "Count") +
    theme_classic()

```

```{r}
ggplot(data, aes(x = Annual.Income..k.., y = Spending.Score..1.100.)) +
    geom_point(aes(color = Gender), alpha = 0.6) +
    labs(title = "Spending Score vs. Annual Income",
         x = "Annual Income (k$)",
         y = "Spending Score (1-100)") +
    theme_classic()
```






