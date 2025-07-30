# train_model.R
library(randomForest)
data(iris)

set.seed(123)
model <- randomForest(Species ~ ., data = iris, ntree = 100)

# Save model to file
saveRDS(model, "iris_model.rds")
