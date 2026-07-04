# Program 13: Linear regression on mice height and weight

# Create mice dataset
height <- c(140, 142, 150, 147, 139, 152, 154, 135, 148, 147)
weight <- c(59, 61, 66, 62, 57, 68, 69, 58, 63, 62)
mice_data <- data.frame(Height = height, Weight = weight)

# Fit linear regression model (Weight as response, Height as predictor)
model <- lm(Weight ~ Height, data = mice_data)

# Print coefficients and regression equation
coef_vals <- coef(model)
cat("Intercept:", coef_vals[1], "\n")
cat("Slope:", coef_vals[2], "\n")
cat(sprintf("Equation: Weight = %.4f + %.4f * Height\n\n", coef_vals[1], coef_vals[2]))

# Print model summary
cat("Model Summary:\n")
print(summary(model))

# Show correlation
cat("\nCorrelation:", cor(mice_data$Height, mice_data$Weight), "\n")