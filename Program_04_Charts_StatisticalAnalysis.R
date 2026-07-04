# Program 4: Pie chart, bar chart, and statistical analysis

# Part (a): Pie chart and bar chart
cat("=== Part (a): Charts ===\n\n")

# Pie chart data
categories <- c("Books", "Food", "Travel", "Other")
expenses <- c(3000, 4500, 2500, 2000)

# Plot pie chart
pie(expenses,
    labels = categories,
    main = "Monthly Expense Distribution",
    col = rainbow(length(expenses)))

# Bar chart data
subjects <- c("Math", "Science", "English", "History")
scores <- c(85, 92, 78, 88)

# Plot bar chart
barplot(scores,
        names.arg = subjects,
        main = "Student Scores",
        xlab = "Subjects",
        ylab = "Marks",
        col = c("steelblue", "tomato", "gold", "seagreen"))

# Part (b): Dataset and statistical analysis
cat("=== Part (b): Statistical Analysis ===\n\n")

# Create dataset
data_set <- data.frame(
  Name = c("A", "B", "C", "D", "E", "F", "G", "H"),
  Age = c(20, 21, 22, 20, 23, 21, 22, 24),
  Score = c(78, 85, 90, 88, 76, 92, 81, 87)
)

print(data_set)
cat("\n")

# Descriptive statistics
cat("Summary:\n")
print(summary(data_set))
cat("\n")

cat("Mean Score   :", mean(data_set$Score), "\n")
cat("Median Score :", median(data_set$Score), "\n")
cat("SD Score     :", sd(data_set$Score), "\n")
cat("Min Score    :", min(data_set$Score), "\n")
cat("Max Score    :", max(data_set$Score), "\n")

# Visualize score spread
hist(data_set$Score,
     main = "Score Distribution",
     xlab = "Score",
     col = "lightblue",
     border = "black")

boxplot(data_set$Score,
        main = "Score Boxplot",
        ylab = "Score",
        col = "lightgreen")