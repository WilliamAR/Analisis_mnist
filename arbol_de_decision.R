#No correr si no ha usado el script "Inicializador"
#Código que solo muestra la clasificación.
#Library####
library(rpart)
library(C50)
library(tree)

#Tasas de clasificación####
TdC <- function(libr="rpart"){
  if(libr=="rpart"){
    AD <- rpart(train_y~train_x, method = "class", model = T)
    test_y_pred_matrix<-predict(AD,newdata = as.data.frame(test_x), type = "class")
    test_y_pred_matrix<-as.integer(test_y_pred_matrix)-1
    return(sum(diag(table(test_y,test_y_pred_matrix)))/length(test_y_pred_matrix))
  }else if(libr=="C50"){
    train_y_2 <- as.factor(train_y)
    AD <- C5.0(train_x,train_y_2)
    test_y_pred_matrix<-predict(AD,newdata = test_x)
    return(sum(diag(table(test_y,test_y_pred_matrix)))/length(test_y_pred_matrix))
  }else if(libr=="tree"){
    AD <- tree(train_y~train_x)
    test_y_pred_matrix<-predict(AD,X = test_x)
    test_y_pred_matrix<-as.integer(test_y_pred_matrix)
    sum(diag(table(test_y,test_y_pred_matrix)))/length(test_y_pred_matrix)
  }
  
}

libreria <- c("rpart","C50","tree")
TC <- c()
contador <- 1
for (i in 1:length(libreria)) {
  TC[contador] <- TdC(libr[i])
  contador <- contador + 1
}

AD_ALL <- data.frame(Libreria = libreria, Clasificacion= TC)