# Program 9: Read and write different file types in R

# Create sample data
df <- data.frame(ID = 1:3, Name = c("Alice", "Bob", "Charlie"), Score = c(85, 90, 78))

# Write and read CSV
write.csv(df, "students.csv", row.names = FALSE)
csv_data <- read.csv("students.csv", stringsAsFactors = FALSE)
cat("CSV data:\n")
print(csv_data)
cat("\n")

# Write and read text file
lines <- c("R file handling", "Second line", "Third line")
writeLines(lines, "notes.txt")
txt_data <- readLines("notes.txt")
cat("Text file data:\n")
print(txt_data)
cat("\n")

# Write and read tab-separated file
write.table(df, "students.tsv", sep = "\t", row.names = FALSE, quote = FALSE)
tsv_data <- read.delim("students.tsv", stringsAsFactors = FALSE)
cat("TSV data:\n")
print(tsv_data)
cat("\n")

# Save and read RDS (single object)
saveRDS(df, "students.rds")
rds_data <- readRDS("students.rds")
cat("RDS data:\n")
print(rds_data)
cat("\n")

# Save and load RData (multiple objects)
v <- c(10, 20, 30)
msg <- "Sample object"
save(df, v, msg, file = "workspace_data.RData")
rm(v, msg)
load("workspace_data.RData")

cat("Loaded from RData:\n")
print(v)
print(msg)