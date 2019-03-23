#No correr si no ha usado el script "Inicializador"
#Código que solo muestra la clasificación.
#Library####
library(e1071)

#Tasas de clasificación####
TdC <- function(k = "linear"){
  SVM <- svm(train_y~train_x,kernel = k,type = "C")
  test_y_pred_matrix<-predict(SVM,X = test_x)
  return(sum(diag(table(test_y,test_y_pred_matrix)))/length(test_y_pred_matrix))
}

ker <- c("linear","polynomial","radial","sigmoid")
TC <- c()
contador <- 1
for (i in 1:length(ker)) {
  TC[contador] <- TdC(ker[i])
  contador <- contador + 1
}

SVM_ALL <- data.frame(Tipo_kernel = ker, Clasificacion= TC)