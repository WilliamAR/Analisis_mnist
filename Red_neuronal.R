#No correr si no ha usado el script "Inicializador"
#Código que solo muestra la clasificación.
#Library####
library(mxnet)

#Tasas de clasificación####
train_x <- t(train_x)
TdC <- function(capas=1,nodos=1) {
  #Capas
  data <- mx.symbol.Variable("data")
  fc1 <- mx.symbol.FullyConnected(data, name="fc1", num_hidden=2^nodos)
  act1 <- mx.symbol.Activation(fc1, name="relu1", act_type="relu")
  fc2 <- mx.symbol.FullyConnected(act1, name="fc2", num_hidden=2^nodos)
  act2 <- mx.symbol.Activation(fc2, name="relu2", act_type="relu")
  fc3 <- mx.symbol.FullyConnected(act2, name="fc3", num_hidden=2^nodos)
  act3 <- mx.symbol.Activation(fc2, name="relu2", act_type="relu")
  fc4 <- mx.symbol.FullyConnected(act3, name="fc4", num_hidden=2^nodos)
  act4 <- mx.symbol.Activation(fc3, name="relu2", act_type="relu")
  fc5 <- mx.symbol.FullyConnected(act4, name="fc5", num_hidden=2^nodos)
  act5 <- mx.symbol.Activation(fc4, name="relu2", act_type="relu")
  #Capas seleccionadas
  if(capas==1) softmax <- mx.symbol.SoftmaxOutput(fc1, name="sm")
  if(capas==2) softmax <- mx.symbol.SoftmaxOutput(fc2, name="sm")
  if(capas==3) softmax <- mx.symbol.SoftmaxOutput(fc3, name="sm")
  if(capas==4) softmax <- mx.symbol.SoftmaxOutput(fc4, name="sm")
  if(capas==5) softmax <- mx.symbol.SoftmaxOutput(fc5, name="sm")
  #Replicabilidad 
  mx.set.seed(0)
  #Modelo
  NN <- mx.model.FeedForward.create(softmax, X=train_x, y=train_y,
                                        ctx=NULL, num.round=20, array.batch.size=100, #ctx = null not device
                                        learning.rate=0.07, momentum=0.9,  eval.metric=mx.metric.accuracy,
                                        initializer=mx.init.uniform(0.07),
                                        epoch.end.callback=mx.callback.log.train.metric(100))
  test_y_pred_matrix<-predict(NN,X = test_x)
  test_y_pred <- max.col(t(test_y_pred_matrix)) - 1
  return(sum(diag(table(test_y,test_y_pred)))/length(test_y))
}

layers <- c(1:5)
nodes <- c(4:7)
TC <- c()
C <- c()
N <- c()
corridas <- 1
for (i in 1:length(layers)) {
  for(j in 1:length(nodes)) {
    TC[corridas] <- TdC(capas = layers[i],nodos = nodes[j])
    C[corridas] <- layers[i]
    N[corridas] <- nodes[j]
    corridas <- corridas + 1
  }
}

NN_ALL <- data.frame(capas = C, nodos = N, Clasificacion = TC)
