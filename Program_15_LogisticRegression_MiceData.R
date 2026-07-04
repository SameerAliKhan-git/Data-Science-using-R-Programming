# Program 15: Logistic regression on mice data (binary target)

# Create mice dataset
height <- c(140, 142, 150, 147, 139, 152, 154, 135, 148, 147)
weight <- c(59, 61, 66, 62, 57, 68, 69, 58, 63, 62)
mice_data <- data.frame(Height = height, Weight = weight)

# Create binary target: Heavy = 1 if weight > median, else 0
threshold <- median(mice_data$Weight)
mice_data$Heavy <- ifelse(mice_data$Weight > threshold, 1, 0)

# Fit logistic regression model
log_model <- glm(Heavy ~ Height, data = mice_data, family = binomial)

# Print summary
cat("Logistic model summary:\n")
print(summary(log_model))

# Predict probability and class
mice_data$Prob <- predict(log_model, type = "response")
mice_data$PredClass <- ifelse(mice_data$Prob >= 0.5, 1, 0)

cat("\nPredictions:\n")
print(mice_data)
cat("\nConfusion matrix:\n")
print(table(Actual = mice_data$Heavy, Predicted = mice_data$PredClass))

# Plot points and logistic curve
plot(mice_data$Height, mice_data$Heavy,
     main = "Logistic Regression: Heavy Mouse Probability",
     xlab = "Height",
     ylab = "Heavy (0/1)",
     pch = 19,
     col = ifelse(mice_data$Heavy == 1, "red", "blue"),
     ylim = c(-0.1, 1.1))

x_seq <- seq(min(mice_data$Height), max(mice_data$Height), length.out = 200)
y_prob <- predict(log_model, newdata = data.frame(Height = x_seq), type = "response")
lines(x_seq, y_prob, col = "darkgreen", lwd = 2)
abline(h = 0.5, lty = 2)