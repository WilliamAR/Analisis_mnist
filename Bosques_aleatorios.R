#No correr si no ha usado el script "Inicializador"
#Código que solo muestra la clasificación.
#Library####
library(randomForest)

#Tasas de clasificación####
TdC <- function(n_a =1){
  set.seed(805)
  BA <- randomForest(y=train_y,x=train_x,ntree=n_a)
  test_y_pred_matrix<-predict(BA,X=test_x)
  return(sum(diag(table(test_y,test_y_pred_matrix)))/length(test_y_pred_matrix))
}

ntrees <- c(1,5,25,50,100,200,250,500)
TC <- c()
contador <- 1
for (i in 1:length(ntrees)) {
  TC[contador] <- TdC(ntrees[i])
  contador <- contador + 1
}

BA_ALL <- data.frame(num_arboles = ntrees, Clasificacion= TC)