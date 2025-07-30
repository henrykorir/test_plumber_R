# plumber.R
library(plumber)
library(randomForest)

# Load the model once when the API starts
model <- readRDS("iris_model.rds")

#* @apiTitle Iris Species Prediction API

#* Predict iris species
#* @param sepal_length Sepal length
#* @param sepal_width Sepal width
#* @param petal_length Petal length
#* @param petal_width Petal width
#* @get /predict
function(sepal_length, sepal_width, petal_length, petal_width) {
  # Create a data frame from input parameters
  input_data <- data.frame(
    Sepal.Length = as.numeric(sepal_length),
    Sepal.Width = as.numeric(sepal_width),
    Petal.Length = as.numeric(petal_length),
    Petal.Width = as.numeric(petal_width)
  )
  
  # Make prediction
  prediction <- predict(model, input_data)
  list(prediction = as.character(prediction))
}
