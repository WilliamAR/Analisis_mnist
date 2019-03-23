#No correr si no ha usado el script "Inicializador"
#Código que muestra todos los modelos, no usa funciones.
#Library####
library(nnet)

#Modelos####
lm1 <- multinom(train_y ~ train_x, MaxNWts = 7860)
test_y_pred_matrix<-predict(lm1,newdata = test_x)
test_y_pred_matrix <- as.integer(test_y_pred_matrix)
sum(diag(table(test_y,test_y_pred_matrix)))/length(test_y_pred_matrix)
table(test_y,test_y_pred_matrix)

lm2 <- multinom(train_y ~ train_x, MaxNWts = 7860, maxit = 200)
test_y_pred_matrix<-predict(lm2,X=test_x)
sum(diag(table(test_y,test_y_pred_matrix)))/length(test_y_pred_matrix)
table(test_y,test_y_pred_matrix)

lm3 <- multinom(train_y ~ train_x, MaxNWts = 7860, maxit = 100, abstol = 1.e-8)
test_y_pred_matrix<-predict(lm3,X=test_x)
sum(diag(table(test_y,test_y_pred_matrix)))/length(test_y_pred_matrix)
table(test_y,test_y_pred_matrix)

lm4 <- multinom(train_y ~ train_x, MaxNWts = 7860, maxit = 200, abstol = 1.e-8)
test_y_pred_matrix<-predict(lm4,X=test_x)
sum(diag(table(test_y,test_y_pred_matrix)))/length(test_y_pred_matrix)
table(test_y,test_y_pred_matrix)

lm5 <- multinom(train_y ~ train_x, MaxNWts = 7860, maxit = 100, abstol = 1.e-8, 
                reltol = 1.0e-12)
test_y_pred_matrix<-predict(lm5,X=test_x)
sum(diag(table(test_y,test_y_pred_matrix)))/length(test_y_pred_matrix)
table(test_y,test_y_pred_matrix)

lm6 <- multinom(train_y ~ train_x, MaxNWts = 7860, maxit = 100, abstol = 1.e-1, 
                reltol = 1.0e-1)
test_y_pred_matrix<-predict(lm6,X=test_x)
sum(diag(table(test_y,test_y_pred_matrix)))/length(test_y_pred_matrix)
table(test_y,test_y_pred_matrix)

lm7 <- multinom(train_y ~ train_x, MaxNWts = 7860, maxit = 100, abstol = 1.e-2, 
                reltol = 1.0e-1)
test_y_pred_matrix<-predict(lm7,X=test_x)
sum(diag(table(test_y,test_y_pred_matrix)))/length(test_y_pred_matrix)
table(test_y,test_y_pred_matrix)

lm8 <- multinom(train_y ~ train_x, MaxNWts = 7860, maxit = 100, abstol = 1.e-3, 
                reltol = 1.0e-1)
test_y_pred_matrix<-predict(lm8,X=test_x)
sum(diag(table(test_y,test_y_pred_matrix)))/length(test_y_pred_matrix)
table(test_y,test_y_pred_matrix)

lm9 <- multinom(train_y ~ train_x, MaxNWts = 7860, maxit = 100, abstol = 1.e-4, 
                reltol = 1.0e-1)
test_y_pred_matrix<-predict(lm9,X=test_x)
sum(diag(table(test_y,test_y_pred_matrix)))/length(test_y_pred_matrix)
table(test_y,test_y_pred_matrix)

lm10 <- multinom(train_y ~ train_x, MaxNWts = 7860, maxit = 100, abstol = 1.e-1, 
                reltol = 1.0e-2)
test_y_pred_matrix<-predict(lm10,X=test_x)
sum(diag(table(test_y,test_y_pred_matrix)))/length(test_y_pred_matrix)
table(test_y,test_y_pred_matrix)

lm11 <- multinom(train_y ~ train_x, MaxNWts = 7860, maxit = 100, abstol = 1.e-1, 
                 reltol = 1.0e-3)
test_y_pred_matrix<-predict(lm11,X=test_x)
sum(diag(table(test_y,test_y_pred_matrix)))/length(test_y_pred_matrix)
table(test_y,test_y_pred_matrix)

lm12 <- multinom(train_y ~ train_x, MaxNWts = 7860, maxit = 100, abstol = 1.e-1, 
                 reltol = 1.0e-4)
test_y_pred_matrix<-predict(lm12,X=test_x)
sum(diag(table(test_y,test_y_pred_matrix)))/length(test_y_pred_matrix)
table(test_y,test_y_pred_matrix)

lm13 <- multinom(train_y ~ train_x, MaxNWts = 7860, maxit = 100, abstol = 1.e-1, 
                 reltol = 1.0e-5)
test_y_pred_matrix<-predict(lm13,X=test_x)
sum(diag(table(test_y,test_y_pred_matrix)))/length(test_y_pred_matrix)
table(test_y,test_y_pred_matrix)

lm14 <- multinom(train_y ~ train_x, MaxNWts = 7860, maxit = 100, abstol = 1.e-2, 
                 reltol = 1.0e-3)
test_y_pred_matrix<-predict(lm14,X=test_x)
sum(diag(table(test_y,test_y_pred_matrix)))/length(test_y_pred_matrix)
table(test_y,test_y_pred_matrix)

lm15 <- multinom(train_y ~ train_x, MaxNWts = 7860, maxit = 100, abstol = 1.e-3, 
                 reltol = 1.0e-3)
test_y_pred_matrix<-predict(lm15,X=test_x)
sum(diag(table(test_y,test_y_pred_matrix)))/length(test_y_pred_matrix)
table(test_y,test_y_pred_matrix)

lm16 <- multinom(train_y ~ train_x, MaxNWts = 7860, maxit = 200, abstol = 1.e-3)
test_y_pred_matrix<-predict(lm16,X=test_x)
sum(diag(table(test_y,test_y_pred_matrix)))/length(test_y_pred_matrix)
table(test_y,test_y_pred_matrix)
