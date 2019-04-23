CVgeneric <- function(classifier_labels,training_labels,n_folds,loss){
  require(caret)
  classifier_labels = classifier_labels 
  training_labels = training_labels
  n_folds = n_folds
  loss = loss
  
  folds <- createFolds(training_labels, k = n_folds, list = TRUE, returnTrain = FALSE)
  accuracy_rate <- rep(0,n_folds)
  error_rate <- rep(0,n_folds)
  
  for (i in 1:n_folds) {
    pred.cv = classifier_labels[unlist(folds[i])]
    orig.cv = training_labels[unlist(folds[i])]
    
    confu_matrix = table(pred.cv,orig.cv)
    accuracy_rate[i] = sum(diag(confu_matrix))/sum(confu_matrix)
    error_rate[i] = 1- accuracy_rate[i]
  }
  mean_accuracy_cv = mean(accuracy_rate)
  mean_error_cv = mean(error_rate)
  
  
  if (loss == 'accuracy') {
    return(list("mean_cv" = mean_accuracy_cv,"accuracy" = accuracy_rate))
  }
  else if (loss == 'error') {
    return(list("mean_cv" = mean_error_cv,"error" = error_rate))
  }
}

testgeneric = function(classifier_labels,test_labels,loss){
  classifier_labels = classifier_labels 
  test_labels = test_labels
  loss = loss
  
  confu_matrix = table(classifier_labels,test_labels)
  accuracy_rate = sum(diag(confu_matrix))/sum(confu_matrix)
  error_rate = 1- accuracy_rate
  
  if (loss == 'accuracy') {
    return("accuracy" = accuracy_rate)
  }
  else if (loss == 'error') {
    return("error" = error_rate)
  }
}