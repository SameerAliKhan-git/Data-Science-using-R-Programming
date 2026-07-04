# Program 8: Aggregate functions - sum, mean, count, min, max

# Sample numeric vector
values <- c(12, 18, 25, 30, 15, 22, 28)
cat("Values:", values, "\n\n")

# Basic aggregate functions
cat("sum   :", sum(values), "\n")
cat("mean  :", mean(values), "\n")
cat("count :", length(values), "\n")
cat("min   :", min(values), "\n")
cat("max   :", max(values), "\n\n")

# Aggregate functions on grouped data
sales <- data.frame(
  Department = c("IT", "HR", "IT", "HR", "Finance", "Finance"),
  Amount = c(500, 300, 700, 400, 450, 550)
)

cat("Dataset:\n")
print(sales)
cat("\n")

# Group-wise sum
cat("Sum by department:\n")
print(aggregate(Amount ~ Department, data = sales, FUN = sum))
cat("\n")

# Group-wise mean
cat("Mean by department:\n")
print(aggregate(Amount ~ Department, data = sales, FUN = mean))
cat("\n")

# Group-wise count
cat("Count by department:\n")
print(aggregate(Amount ~ Department, data = sales, FUN = length))
cat("\n")

# Group-wise min and max
cat("Min by department:\n")
print(aggregate(Amount ~ Department, data = sales, FUN = min))
cat("\nMax by department:\n")
print(aggregate(Amount ~ Department, data = sales, FUN = max))