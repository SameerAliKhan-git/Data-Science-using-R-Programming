# Program 1: Arithmetic, logical operations, and even numbers using loops

# Part (a): Arithmetic and logical operations
cat("=== Part (a): Arithmetic and Logical Operations ===\n\n")

a <- 25
b <- 7

# Basic arithmetic
cat("a + b  =", a + b, "\n")
cat("a - b  =", a - b, "\n")
cat("a * b  =", a * b, "\n")
cat("a / b  =", a / b, "\n")
cat("a %% b =", a %% b, "\n")
cat("a %/% b=", a %/% b, "\n")
cat("a ^ 2  =", a ^ 2, "\n\n")

# Relational checks
cat("a == b :", a == b, "\n")
cat("a != b :", a != b, "\n")
cat("a > b  :", a > b, "\n")
cat("a < b  :", a < b, "\n")
cat("a >= b :", a >= b, "\n")
cat("a <= b :", a <= b, "\n\n")

# Logical operations
x <- TRUE
y <- FALSE
cat("x & y  :", x & y, "\n")
cat("x | y  :", x | y, "\n")
cat("!x     :", !x, "\n")
cat("!y     :", !y, "\n\n")

# Part (b): Even numbers from 1 to n using a loop
cat("=== Part (b): Even Numbers from 1 to n ===\n\n")

n <- 20
even_numbers <- c()

# Collect even numbers with for-loop
for (i in 1:n) {
  if (i %% 2 == 0) {
    even_numbers <- c(even_numbers, i)
  }
}

cat("Even numbers from 1 to", n, ":", even_numbers, "\n")