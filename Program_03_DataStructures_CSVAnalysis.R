# Program 3: Data structures and CSV analysis

# Part (a): Vectors, lists, and data frames
cat("=== Part (a): Data Structures ===\n\n")

# Vector example
num_vec <- c(10, 20, 30, 40, 50)
cat("Vector:", num_vec, "\n")
cat("Class:", class(num_vec), "Length:", length(num_vec), "\n\n")

# List example
student_list <- list(name = "Alice", age = 21, marks = c(85, 90, 88))
print(student_list)
cat("\n")

# Data frame example
students_df <- data.frame(
  ID = c(1, 2, 3),
  Name = c("Alice", "Bob", "Charlie"),
  Score = c(85, 92, 78)
)
print(students_df)
cat("\n")

# Part (b): Read CSV and analyze
cat("=== Part (b): CSV Read and Analysis ===\n\n")

# Create sample data and save as CSV
sample_data <- data.frame(
  Name = c("A", "B", "C", "D", "E"),
  Age = c(20, 21, 22, 21, 20),
  Marks = c(78, 85, 92, 88, 75)
)
write.csv(sample_data, "sample_students.csv", row.names = FALSE)

# Read CSV file
csv_data <- read.csv("sample_students.csv", stringsAsFactors = FALSE)
cat("CSV Data:\n")
print(csv_data)
cat("\n")

# Basic analysis
cat("Structure:\n")
str(csv_data)
cat("\nSummary:\n")
print(summary(csv_data))
cat("\nRows:", nrow(csv_data), " Columns:", ncol(csv_data), "\n")

# Subject-wise quick stats
cat("Mean Marks:", mean(csv_data$Marks), "\n")
cat("Min Marks :", min(csv_data$Marks), "\n")
cat("Max Marks :", max(csv_data$Marks), "\n")