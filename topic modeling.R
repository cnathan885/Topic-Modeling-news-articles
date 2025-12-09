{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 1,
   "metadata": {},
   "outputs": [],
   "source": [
    "import pandas as pd\n",
    "import numpy as np\n",
    "import matplotlib.pyplot as plt\n",
    "from sklearn.model_selection import train_test_split\n",
    "from sklearn.linear_model import LinearRegression\n",
    "from sklearn.svm import SVR\n",
    "from sklearn.feature_selection import RFECV"
   ]
  },


{
  "cells": [
  {
   "cell_type": "code",
   "execution_count": 1,
   "metadata": {},
   "outputs": [],
   "source": [
install.packages("caret")
library(caret)

#load data
uscrime <- read.table('uscrime.txt', header=TRUE)
head(uscrime)

set.seed(123)
#split data into training and test (70% and 30% respectively)
trainIndex <- createDataPartition(y= uscrime$Crime, p=0.7, list=FALSE)
train_data_raw <- uscrime[trainIndex,]
test_data_raw <- uscrime[-trainIndex,]
  ]
  },
#prepare training set
pred.train.raw <- as.matrix(train_data_raw[, -which(names(train_data_raw) == "Crime")])
dv.train <- train_data_raw$Crime

#prepare test set
pred.test.raw <- as.matrix(test_data_raw[, -which(names(test_data_raw) == "Crime")])
dv.test <- test_data_raw$Crime

#scale predictors
preProc_obj <- preProcess(pred.train.raw, method = c("center", "scale"))
pred.train.scaled <- predict(preProc_obj, pred.train.raw)
pred.test.scaled <- predict(preProc_obj, pred.test.raw)
