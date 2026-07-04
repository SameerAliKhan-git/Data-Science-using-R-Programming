# Program 12: Iris mosaic plot and scatter plot

# Load iris dataset
data(iris)

# (a) Mosaic plot requires categorical variables, so bin sepal length
iris$SepalCat <- cut(iris$Sepal.Length,
                     breaks = c(0, 5, 6, 8),
                     labels = c("Short", "Medium", "Long"),
                     include.lowest = TRUE)

# Create and plot contingency table for species vs sepal category
tab <- table(iris$Species, iris$SepalCat)
mosaicplot(tab,
           main = "Iris: Species vs Sepal Length Category",
           xlab = "Species",
           ylab = "Sepal Length Category",
           color = TRUE)

# (b) Scatter plot for sepal length vs petal length
plot(iris$Sepal.Length,
     iris$Petal.Length,
     main = "Iris Scatter Plot: Sepal Length vs Petal Length",
     xlab = "Sepal Length",
     ylab = "Petal Length",
     col = iris$Species,
     pch = 19)

# Add linear trend line
abline(lm(Petal.Length ~ Sepal.Length, data = iris), col = "black", lwd = 2)

# Show correlation value
r <- cor(iris$Sepal.Length, iris$Petal.Length)
cat("Correlation (Sepal.Length vs Petal.Length):", round(r, 4), "\n")