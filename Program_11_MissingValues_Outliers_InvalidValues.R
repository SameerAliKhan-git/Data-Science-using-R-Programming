# Program 11: Handle missing values, outliers, and invalid values

# Create sample dataset with issues
df <- data.frame(
  Name = c("A", "B", "C", "D", "E", "F"),
  Age = c(21, NA, 19, 200, -2, 24),
  Score = c(85, 92, NA, 300, -5, 78),
  stringsAsFactors = FALSE
)

cat("Original data:\n")
print(df)
cat("\n")

# (a) Handle missing values
cat("Missing values per column:\n")
print(colSums(is.na(df)))

# Replace missing Age with median and missing Score with mean
df$Age[is.na(df$Age)] <- median(df$Age, na.rm = TRUE)
df$Score[is.na(df$Score)] <- mean(df$Score, na.rm = TRUE)

# (b) Handle outliers using IQR on Score
Q1 <- quantile(df$Score, 0.25)
Q3 <- quantile(df$Score, 0.75)
IQRv <- IQR(df$Score)
lower <- Q1 - 1.5 * IQRv
upper <- Q3 + 1.5 * IQRv

# Cap outliers to IQR bounds
df$Score[df$Score < lower] <- lower
df$Score[df$Score > upper] <- upper

# (c) Handle invalid values with valid ranges
# Age must be between 1 and 120
df$Age[df$Age < 1 | df$Age > 120] <- median(df$Age[df$Age >= 1 & df$Age <= 120])

# Score must be between 0 and 100
df$Score[df$Score < 0] <- 0
df$Score[df$Score > 100] <- 100

cat("\nCleaned data:\n")
print(df)