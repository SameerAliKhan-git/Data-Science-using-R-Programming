# Program 6: Change structure and expand a data frame

# Create a sample data frame
df <- data.frame(
  ID = c(1, 2, 3),
  Name = c("Alice", "Bob", "Charlie"),
  Score = c(85, 90, 78),
  stringsAsFactors = FALSE
)
cat("Original data frame:\n")
print(df)
cat("\n")

# (a) Change structure: rename, reorder, and type conversion
names(df)[3] <- "Marks"
df <- df[, c("Name", "ID", "Marks")]
df$ID <- as.character(df$ID)

cat("After structure changes:\n")
print(df)
cat("\nStructure:\n")
str(df)
cat("\n")

# (b) Expand data frame by adding columns
df$Grade <- c("A", "A+", "B+")
df$City <- c("NYC", "LA", "Chicago")

cat("After adding columns:\n")
print(df)
cat("\n")

# Expand data frame by adding rows
new_row <- data.frame(Name = "Diana", ID = "4", Marks = 92, Grade = "A+", City = "Boston")
df_expanded <- rbind(df, new_row)

cat("After adding rows:\n")
print(df_expanded)