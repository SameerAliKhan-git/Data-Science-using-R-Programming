# Program 2: cbind/rbind with data frames and string manipulation

# Part (a): Join columns and rows
cat("=== Part (a): cbind() and rbind() ===\n\n")

# Create two data frames with related student data
df1 <- data.frame(ID = c(1, 2, 3), Name = c("Alice", "Bob", "Charlie"))
df2 <- data.frame(Marks = c(85, 90, 78), City = c("NYC", "LA", "Chicago"))

# Join by columns
df_col_join <- cbind(df1, df2)
cat("Column-wise join using cbind():\n")
print(df_col_join)
cat("\n")

# Create row-wise compatible data frames
batch1 <- data.frame(Name = c("Alice", "Bob"), Age = c(21, 22), Grade = c("A", "B"))
batch2 <- data.frame(Name = c("Charlie", "Diana"), Age = c(20, 23), Grade = c("A", "B+"))

# Join by rows
df_row_join <- rbind(batch1, batch2)
cat("Row-wise join using rbind():\n")
print(df_row_join)
cat("\n")

# Part (b): String manipulation functions
cat("=== Part (b): String Manipulation ===\n\n")

text <- "  R Programming is Fun  "
sentence <- "Data Science with R"
words <- c("apple", "banana", "apricot", "cherry")

# Length and case conversion
cat("nchar(sentence):", nchar(sentence), "\n")
cat("toupper(sentence):", toupper(sentence), "\n")
cat("tolower(sentence):", tolower(sentence), "\n\n")

# Substring and concatenation
cat("substring(sentence, 1, 4):", substring(sentence, 1, 4), "\n")
cat("paste('Hello', 'World'):", paste("Hello", "World"), "\n")
cat("paste0('Hello', 'World'):", paste0("Hello", "World"), "\n\n")

# Split and replace
print(strsplit(sentence, " "))
cat("gsub('R', 'Python', sentence):", gsub("R", "Python", sentence), "\n")
cat("sub('Data', 'Big Data', sentence):", sub("Data", "Big Data", sentence), "\n\n")

# Search and trimming
cat("grep('ap', words):", grep("ap", words), "\n")
cat("grepl('ap', words):", grepl("ap", words), "\n")
cat("trimws(text): '", trimws(text), "'\n", sep = "")