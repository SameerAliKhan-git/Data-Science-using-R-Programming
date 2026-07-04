# Notes for R Lab Programs

This file summarizes the important functions, concepts, and key points from each program in the lab record.

## Function Reference

This section explains the functions, operators, and control structures used across the programs.

- `cat()`: prints text or values to the console without creating a structured object.
- `c()`: combines values into a vector.
- `function()`: defines a user-created function.
- `return()`: sends a value back from a function.
- `if`: runs a block only when a condition is true.
- `ifelse()`: vectorized conditional function that returns one value when a condition is true and another when false.
- `for`: repeats a block of code for each value in a sequence.
- `list()`: creates a list, which can store mixed types of objects.
- `data.frame()`: creates a tabular data structure with columns of equal length.
- `matrix()`: creates a two-dimensional array with the same data type.
- `factor()`: converts categorical data into factor form.
- `levels()`: shows or sets the categories of a factor.
- `class()`: shows the object type or class.
- `names()`: gets or sets the names of objects such as columns.
- `summary()`: gives a compact summary of an object, often statistics for data.
- `str()`: shows the internal structure of an object.
- `head()`: displays the first rows or values of an object.
- `nrow()`: returns the number of rows.
- `ncol()`: returns the number of columns.
- `length()`: returns the number of elements in a vector or object.
- `mean()`: computes the arithmetic average.
- `median()`: returns the middle value after sorting.
- `sd()`: calculates standard deviation, a measure of spread.
- `sum()`: adds numeric values.
- `min()`: returns the smallest value.
- `max()`: returns the largest value.
- `quantile()`: finds values at specified percentile positions.
- `IQR()`: returns the interquartile range, used to detect outliers.
- `is.na()`: checks for missing values.
- `colSums()`: computes sums for each column.
- `round()`: rounds a numeric value to a specified number of digits.
- `toupper()`: converts text to uppercase.
- `tolower()`: converts text to lowercase.
- `nchar()`: counts the number of characters in a string.
- `substring()`: extracts part of a string by position.
- `paste()`: concatenates values with a separator.
- `paste0()`: concatenates values without a separator.
- `strsplit()`: splits a string into pieces based on a delimiter.
- `gsub()`: replaces all matches of a pattern in a string.
- `sub()`: replaces only the first match of a pattern.
- `grep()`: returns the indices of matching elements.
- `grepl()`: returns TRUE/FALSE for whether each element matches.
- `trimws()`: removes leading and trailing whitespace.
- `write.csv()`: writes a data frame to a CSV file.
- `read.csv()`: reads a CSV file into a data frame.
- `write.table()`: writes a table-like object to a text file.
- `read.delim()`: reads a tab-separated file.
- `writeLines()`: writes character vectors to a text file, one line per element.
- `readLines()`: reads all lines from a text file.
- `saveRDS()`: saves one R object to an RDS file.
- `readRDS()`: reads one object from an RDS file.
- `save()`: stores one or more R objects in an RData file.
- `load()`: loads objects from an RData file into the current environment.
- `rm()`: removes objects from the environment.
- `aggregate()`: applies a summary function to groups of rows.
- `subset()`: filters rows and optionally selects columns from a data frame.
- `cut()`: converts numeric values into grouped categorical intervals.
- `table()`: builds a frequency table or contingency table.
- `mosaicplot()`: visualizes a contingency table using a mosaic chart.
- `pie()`: draws a pie chart.
- `barplot()`: draws a bar chart.
- `hist()`: draws a histogram.
- `boxplot()`: draws a box-and-whisker plot.
- `plot()`: draws a general-purpose graph.
- `points()`: adds points to an existing plot.
- `lines()`: adds lines to an existing plot.
- `legend()`: adds a legend to a plot.
- `abline()`: adds a straight line to a plot, often a regression or threshold line.
- `lm()`: fits a linear regression model.
- `glm()`: fits a generalized linear model, such as logistic regression.
- `predict()`: generates predictions from a fitted model.
- `coef()`: extracts model coefficients.
- `cor()`: computes correlation between numeric variables.
- `ts()`: creates a time-series object.
- `decompose()`: splits a time series into trend, seasonal, and random components.

## Operators and Control Structures

- `+`, `-`, `*`, `/`, `^`: arithmetic operators for addition, subtraction, multiplication, division, and exponentiation.
- `%%`: modulus operator, returns the remainder after division.
- `%/%`: integer division operator, returns the whole-number quotient.
- `==`, `!=`, `>`, `<`, `>=`, `<=`: comparison operators used in logical tests.
- `&`, `|`, `!`: logical AND, OR, and NOT.
- `[ ]`: indexing operator used to select rows, columns, or elements.
- `~`: formula operator used in modeling and grouped summaries, such as `y ~ x`.
- `=` and `<-`: assignment operators used to store values in variables.

## Program 1: Arithmetic, Logical Operations, and Even Numbers
- Important functions/operators: see the Function Reference and Operators sections above.
- Key points: demonstrates basic arithmetic, comparison, and logical checks in R.
- Loop logic: even numbers are collected by testing `i %% 2 == 0` inside a `for` loop.

## Program 2: cbind/rbind and String Manipulation
- Important functions: see the Function Reference above.
- Key points: `cbind()` joins data frame columns, `rbind()` joins compatible rows.
- String handling covers case conversion, substring extraction, concatenation, search, replacement, split, and trimming spaces.

## Program 3: Data Structures and CSV Analysis
- Important functions: see the Function Reference above.
- Key points: shows vector, list, and data frame creation.
- CSV workflow: create sample data, write to CSV, read it back, and inspect structure and summary statistics.

## Program 4: Charts and Statistical Analysis
- Important functions: see the Function Reference above.
- Key points: introduces basic visualization and descriptive statistics.
- Plot types: pie chart for categories, bar chart for subject scores, histogram for distribution, and boxplot for spread.

## Program 5: User-Defined Functions
- Important functions: see the Function Reference and Operators sections above.
- Key points: demonstrates function without arguments, function with arguments, default argument values, and returning multiple values using a list.
- Recursive example: factorial calculation using self-calling function.
- Practical example: grade assignment based on score thresholds.

## Program 6: Change Structure and Expand a Data Frame
- Important functions: see the Function Reference and Operators sections above.
- Key points: shows how to rename columns, reorder columns, convert data types, and add new columns and rows.
- Expansion logic: add derived columns like grade and city, then append a new row.

## Program 7: Vector to Factor and R Objects
- Important functions: see the Function Reference above.
- Key points: demonstrates converting a vector to a factor and creating an ordered factor with explicit level order.
- R objects covered: vector, list, matrix, data frame, and function.

## Program 8: Aggregate Functions
- Important functions: see the Function Reference above.
- Key points: computes basic aggregate measures on a numeric vector.
- Grouped analysis: uses `aggregate()` to calculate sum, mean, count, min, and max by department.

## Program 9: Read and Write Different File Types
- Important functions: see the Function Reference above.
- Key points: demonstrates common file formats in R, including CSV, text, TSV, RDS, and RData.
- Practical note: `RDS` is for one object, while `RData` can store multiple objects.

## Program 10: Subsetting and Data Exploration
- Important functions: see the Function Reference and Operators sections above.
- Key points: shows how to filter rows by conditions and select specific columns.
- Data exploration: prints head, summary, dimensions, and structure after reading data back from CSV.

## Program 11: Missing Values, Outliers, and Invalid Values
- Important functions: see the Function Reference above.
- Key points: replaces missing values with summary statistics, detects outliers using the IQR rule, and caps extreme values.
- Validation: enforces sensible ranges for age and score to clean invalid data.

## Program 12: Iris Mosaic Plot and Scatter Plot
- Important functions: see the Function Reference above.
- Key points: converts a numeric variable into categorical bins for mosaic plotting.
- Scatter plot: visualizes relationship between sepal length and petal length, adds regression line, and computes correlation.

## Program 13: Linear Regression
- Important functions: see the Function Reference above.
- Key points: fits a linear regression model to predict weight from height.
- Output interpretation: prints intercept, slope, regression equation, model summary, and correlation.

## Program 14: Linear Regression Prediction and Plot
- Important functions: see the Function Reference above.
- Key points: uses a fitted linear model to predict weight for a given height.
- Visualization: plots observed points, regression line, and the predicted point on the same graph.

## Program 15: Logistic Regression on Mice Data
- Important functions: see the Function Reference above.
- Key points: creates a binary target variable based on weight relative to the median.
- Model output: fits logistic regression, predicts probabilities and classes, and displays a confusion matrix.
- Visualization: plots the logistic curve and a 0.5 decision threshold.

## Program 16: Time Series Decomposition
- Important functions: see the Function Reference above.
- Key points: creates a monthly time series and decomposes it into trend, seasonal, and random components.
- Data export: saves observed and component values to a CSV file for reference.

## Overall Important Themes
- Basic data handling: vectors, lists, matrices, data frames, and factors.
- Data cleaning: missing values, outliers, invalid values, and type conversion.
- File handling: reading and writing CSV, text, TSV, RDS, and RData files.
- Visualization: pie charts, bar charts, histograms, boxplots, mosaic plots, scatter plots, and time series plots.
- Modeling: linear regression, prediction, logistic regression, and time series decomposition.