# Program 10: Subsetting and data exploration

# Create dataset
df <- data.frame(
  ID = 1:8,
  Name = c("A", "B", "C", "D", "E", "F", "G", "H"),
  Dept = c("IT", "HR", "IT", "Finance", "HR", "IT", "Finance", "HR"),
  Salary = c(55000, 45000, 62000, 48000, 42000, 70000, 52000, 47000),
  stringsAsFactors = FALSE
)

# (a) Subset examples
cat("Subset: Salary > 50000\n")
print(df[df$Salary > 50000, ])
cat("\n")

cat("Subset: IT department (selected columns)\n")
print(subset(df, Dept == "IT", select = c(Name, Salary)))
cat("\n")

cat("Subset: rows 1 to 3, columns Name and Dept\n")
print(df[1:3, c("Name", "Dept")])
cat("\n")

# (b) Data exploration with read.csv(), summary(), nrow(), ncol(), str()
write.csv(df, "employees.csv", row.names = FALSE)
data_read <- read.csv("employees.csv", stringsAsFactors = FALSE)

cat("First rows:\n")
print(head(data_read))
cat("\nSummary:\n")
print(summary(data_read))
cat("\nRows:", nrow(data_read), "\n")
cat("Columns:", ncol(data_read), "\n")
cat("\nStructure:\n")
str(data_read)