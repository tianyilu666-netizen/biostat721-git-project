# BIOSTAT 721: a small reproducible analysis

# Summarize sepal length by iris species using base R.
sepal_summary <- aggregate(
  Sepal.Length ~ Species,
  data = iris,
  FUN = function(x) c(mean = mean(x), sd = sd(x))
)

print(sepal_summary)

# Create a simple figure in a reproducible output folder.
dir.create("output", showWarnings = FALSE)
png("output/iris_sepal_length.png", width = 900, height = 600)
boxplot(
  Sepal.Length ~ Species,
  data = iris,
  col = c("#6BAED6", "#74C476", "#FD8D3C"),
  xlab = "Species",
  ylab = "Sepal length (cm)",
  main = "Iris sepal length by species"
)
dev.off()
