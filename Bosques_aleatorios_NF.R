#No correr si no ha usado el script "Inicializador"
#Código que muestra todos los modelos, no usa funciones.
#Library####
library(randomForest)

#Modelos####
set.seed(805)
BA1 <- randomForest(y=train_y,x=train_x,ntree=1)
test_y_pred_matrix<-predict(BA1,X=test_x)
sum(diag(table(test_y,test_y_pred_matrix)))/length(test_y_pred_matrix)
table(test_y,test_y_pred_matrix)

set.seed(805)
BA2 <- randomForest(y=train_y,x=train_x,ntree=5)
test_y_pred_matrix<-predict(BA2,X=test_x)
sum(diag(table(test_y,test_y_pred_matrix)))/length(test_y_pred_matrix)
table(test_y,test_y_pred_matrix)

set.seed(805)
BA3 <- randomForest(y=train_y,x=train_x,ntree=25)
test_y_pred_matrix<-predict(BA3,X=test_x)
sum(diag(table(test_y,test_y_pred_matrix)))/length(test_y_pred_matrix)
table(test_y,test_y_pred_matrix)

set.seed(805)
BA4 <- randomForest(y=train_y,x=train_x,ntree=50)
test_y_pred_matrix<-predict(BA4,X=test_x)
sum(diag(table(test_y,test_y_pred_matrix)))/length(test_y_pred_matrix)
table(test_y,test_y_pred_matrix)

set.seed(805)
BA5 <- randomForest(y=train_y,x=train_x,ntree=100)
test_y_pred_matrix<-predict(BA5,X=test_x)
sum(diag(table(test_y,test_y_pred_matrix)))/length(test_y_pred_matrix)
table(test_y,test_y_pred_matrix)

set.seed(805)
BA6 <- randomForest(y=train_y,x=train_x,ntree=200)
test_y_pred_matrix<-predict(BA6,X=test_x)
sum(diag(table(test_y,test_y_pred_matrix)))/length(test_y_pred_matrix)
table(test_y,test_y_pred_matrix)

set.seed(805)
BA7 <- randomForest(y=train_y,x=train_x,ntree=250)
test_y_pred_matrix<-predict(BA7,X=test_x)
sum(diag(table(test_y,test_y_pred_matrix)))/length(test_y_pred_matrix)
table(test_y,test_y_pred_matrix)

set.seed(805)
BA8 <- randomForest(y=train_y,x=train_x,ntree=500)
test_y_pred_matrix<-predict(BA8,X=test_x)
sum(diag(table(test_y,test_y_pred_matrix)))/length(test_y_pred_matrix)
table(test_y,test_y_pred_matrix)