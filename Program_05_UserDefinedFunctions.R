# Program 5: User-defined functions in R

# Basic function without arguments
greet <- function() {
  cat("Hello! Welcome to R Programming.\n")
}
greet()

# Function with arguments and return value
add_numbers <- function(a, b) {
  return(a + b)
}
cat("add_numbers(10, 20):", add_numbers(10, 20), "\n")

# Function with default argument
power_of <- function(base, power = 2) {
  return(base ^ power)
}
cat("power_of(5):", power_of(5), "\n")
cat("power_of(5, 3):", power_of(5, 3), "\n")

# Function returning multiple values through a list
calc_stats <- function(x) {
  return(list(mean = mean(x), median = median(x), sd = sd(x)))
}
stats <- calc_stats(c(10, 20, 30, 40, 50))
print(stats)

# Recursive function example (factorial)
factorial_func <- function(n) {
  if (n <= 1) return(1)
  return(n * factorial_func(n - 1))
}
cat("factorial_func(5):", factorial_func(5), "\n")

# Practical function example
get_grade <- function(score) {
  if (score >= 90) return("A+")
  if (score >= 80) return("A")
  if (score >= 70) return("B")
  if (score >= 60) return("C")
  return("F")
}
cat("Grade for 84:", get_grade(84), "\n")