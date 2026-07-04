# Program 14: Predict weight from height and plot results

# Create mice dataset
height <- c(140, 142, 150, 147, 139, 152, 154, 135, 148, 147)
weight <- c(59, 61, 66, 62, 57, 68, 69, 58, 63, 62)
mice_data <- data.frame(Height = height, Weight = weight)

# Fit linear model
model <- lm(Weight ~ Height, data = mice_data)

# Predict for a given height
given_height <- 145
pred <- predict(model, newdata = data.frame(Height = given_height))
cat("Given height:", given_height, "\n")
cat("Predicted weight:", round(pred, 4), "\n\n")

# Plot observed points
plot(mice_data$Height, mice_data$Weight,
     main = "Height vs Weight (with Prediction)",
     xlab = "Height",
     ylab = "Weight",
     pch = 19,
     col = "blue")

# Add regression line
abline(model, col = "red", lwd = 2)

# Add predicted point
points(given_height, pred, pch = 17, col = "darkgreen", cex = 1.5)
legend("topleft",
       legend = c("Observed", "Regression line", "Predicted point"),
       col = c("blue", "red", "darkgreen"),
       pch = c(19, NA, 17),
       lty = c(NA, 1, NA),
       bty = "n")