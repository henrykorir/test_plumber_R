# Running the Iris Model API

## 1. 🧠 Train and Save the Model

Run the training script to generate and save the model:

```r
source("train_model.R")

## 2. ▶️ Start the API with Plumber

In your R console or script, run the following:

```r
library(plumber)

# Load and run the API
pr <- plumb("plumber.R")
pr$run(port = 8000)

This will start a local REST API on:
http://localhost:8000

## 3. 🌐 Test the API Endpoint

You can test the prediction endpoint using a browser, curl, or Postman:

```bash
http://localhost:8000/predict?sepal_length=5.1&sepal_width=3.5&petal_length=1.4&petal_width=0.2

### ✅ Example JSON Response

```json
{
  "prediction": "setosa"
}
