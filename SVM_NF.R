#No correr si no ha usado el script "Inicializador"
#Código que muestra todos los modelos, no usa funciones.
#Library####
library(e1071)

#Modelos####
Modelo_SVM1 <- svm(train_y~train_x,kernel = "linear",type = "C")
test_y_pred_matrix<-predict(Modelo_SVM1,X =  test_x)
sum(diag(table(test_y,test_y_pred_matrix)))/length(test_y_pred_matrix)
table(test_y,test_y_pred_matrix)

Modelo_SVM2 <- svm(train_y~train_x,kernel = "polynomial",type = "C")
test_y_pred_matrix<-predict(Modelo_SVM2,X = test_x)
sum(diag(table(test_y,test_y_pred_matrix)))/length(test_y_pred_matrix)
table(test_y,test_y_pred_matrix)

Modelo_SVM3 <- svm(train_y~train_x,kernel = "radial",type = "C")
test_y_pred_matrix<-predict(Modelo_SVM3,X = test_x)
sum(diag(table(test_y,test_y_pred_matrix)))/length(test_y_pred_matrix)
table(test_y,test_y_pred_matrix)

Modelo_SVM4 <- svm(train_y~train_x,kernel = "sigmoid",type = "C")
test_y_pred_matrix<-predict(Modelo_SVM4,X = test_x)
sum(diag(table(test_y,test_y_pred_matrix)))/length(test_y_pred_matrix)
table(test_y,test_y_pred_matrix)
