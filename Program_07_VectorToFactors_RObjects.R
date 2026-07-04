# Program 7: Vector to factor and R objects demonstration

# (a) Convert vector to factor
gender_vec <- c("Male", "Female", "Male", "Female", "Male")
gender_factor <- factor(gender_vec)

cat("Original vector:\n")
print(gender_vec)
cat("\nFactor:\n")
print(gender_factor)
cat("Levels:", levels(gender_factor), "\n\n")

# Ordered factor example
size_vec <- c("Medium", "Small", "Large", "Medium")
size_factor <- factor(size_vec, levels = c("Small", "Medium", "Large"), ordered = TRUE)
cat("Ordered factor:\n")
print(size_factor)
cat("\n")

# (b) Demonstrate common R objects
num_vector <- c(10, 20, 30)
my_list <- list(name = "Alice", age = 21, passed = TRUE)
my_matrix <- matrix(1:9, nrow = 3)
my_df <- data.frame(Name = c("A", "B"), Score = c(85, 90))
my_func <- function(x) x * 2

cat("Vector:\n")
print(num_vector)
cat("Class:", class(num_vector), "\n\n")

cat("List:\n")
print(my_list)
cat("Class:", class(my_list), "\n\n")

cat("Matrix:\n")
print(my_matrix)
cat("Class:", class(my_matrix), "\n\n")

cat("Data frame:\n")
print(my_df)
cat("Class:", class(my_df), "\n\n")

cat("Function output my_func(5):", my_func(5), "\n")