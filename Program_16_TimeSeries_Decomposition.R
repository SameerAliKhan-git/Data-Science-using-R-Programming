# Program 16: Time series decomposition into trend, seasonal, and random parts

# Create monthly time series data
sales <- c(
  120, 135, 150, 160, 170, 180, 200, 210, 190, 175, 165, 155,
  130, 145, 160, 170, 185, 195, 215, 225, 205, 190, 180, 170,
  140, 155, 170, 185, 200, 210, 230, 245, 220, 205, 195, 185
)
ts_sales <- ts(sales, start = c(2023, 1), frequency = 12)

# Plot original time series
plot(ts_sales,
     main = "Monthly Sales Time Series",
     xlab = "Year",
     ylab = "Sales",
     col = "blue")

# Decompose using additive model
decomp <- decompose(ts_sales, type = "additive")

# Plot decomposed components
plot(decomp)

# Extract and display components
trend_comp <- decomp$trend
seasonal_comp <- decomp$seasonal
random_comp <- decomp$random

cat("Trend (first 12 values):\n")
print(head(trend_comp, 12))
cat("\nSeasonal (first 12 values):\n")
print(head(seasonal_comp, 12))
cat("\nRandom (first 12 values):\n")
print(head(random_comp, 12))

# Save components for reference
components_df <- data.frame(
  Time = as.numeric(time(ts_sales)),
  Observed = as.numeric(ts_sales),
  Trend = as.numeric(trend_comp),
  Seasonal = as.numeric(seasonal_comp),
  Random = as.numeric(random_comp)
)
write.csv(components_df, "timeseries_decomposition_components.csv", row.names = FALSE)