#No correr si no ha usado el script "Inicializador"
#Código que muestra todos los modelos, no usa funciones.
#Library####
library(rpart)
library(C50)
library(tree)

#Modelos####
AD1 <- rpart(train_y~train_x, method = "class", model = T)
test_y_pred_matrix<-predict(AD1,newdata = as.data.frame(test_x), type = "class")
test_y_pred_matrix<-as.integer(test_y_pred_matrix)-1
sum(diag(table(test_y,test_y_pred_matrix)))/length(test_y_pred_matrix)
table(test_y,test_y_pred_matrix)

train_y_2 <- as.factor(train_y)
AD2 <- C5.0(train_x,train_y_2)
test_y_pred_matrix<-predict(AD2,newdata = test_x)
sum(diag(table(test_y,test_y_pred_matrix)))/length(test_y_pred_matrix)
table(test_y,test_y_pred_matrix)

AD3 <- tree(train_y~train_x, tree.control(nobs = length(train_y),mincut = 10,mindev = 0.0001,
                                          minsize = 20))
test_y_pred_matrix<-predict(AD3,X = test_x)
test_y_pred_matrix<-as.integer(test_y_pred_matrix)
sum(diag(table(test_y,test_y_pred_matrix)))/length(test_y_pred_matrix)
table(test_y,test_y_pred_matrix)
