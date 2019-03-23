#No correr si no ha usado el script "Inicializador"
#Código que solo muestra la clasificación.
#Library####
library(nnet)

#Tasas de clasificación####
TdC <- function(m=100,a=1.e-4,r=1.e-4){
  lm <- multinom(train_y ~ train_x, MaxNWts = 7860, maxit = m, abstol = a, reltol = r)
  test_y_pred_matrix<-predict(lm,X=test_x)
  return(sum(diag(table(test_y,test_y_pred_matrix)))/length(test_y_pred_matrix))
}

mit <- c(100,200)
abt <- c(1.0e-1,1.0e-3,1.0e-8)
rt <- c(1.0e-2,1.0e-3,1.0e-4)
TC <- c()
MAXIT <- c()
ABST <- c()
RELT <- c()
contador <- 1
for (i in 1:length(mit)) {
  for (j in 1:length(abt)) {
    for (k in 1:length(rt)) {
      TC[contador] <- TdC(m = mit[i], a = abt[j], r = rt[k])
      MAXIT[contador] <- mit[i]
      ABST[contador] <- abt[j]
      RELT[contador] <- rt[k]
      contador <- contador + 1
    }
  }
}

LM_ALL <- data.frame(Maximo_iteraciones = MAXIT, Tolerancia_absoluta = ABST, 
                     Tolerancia_relativa = RELT, Clasificacion= TC)