#No correr si no ha usado el script "Inicializador"
#Código que muestra todos los modelos, no usa funciones.
#Library####
library(mxnet)

#Modelo####
#solo se dejo el mejor modelo según la tasa de clasificación
data <- mx.symbol.Variable("data")
fc1 <- mx.symbol.FullyConnected(data, name="fc1", num_hidden=2^7)
act1 <- mx.symbol.Activation(fc1, name="relu1", act_type="relu")
fc2 <- mx.symbol.FullyConnected(act1, name="fc2", num_hidden=2^7)
act2 <- mx.symbol.Activation(fc2, name="relu2", act_type="relu")
softmax <- mx.symbol.SoftmaxOutput(fc2, name="sm")

#Replicabilidad 
mx.set.seed(0)
#Modelo
NN1 <- mx.model.FeedForward.create(softmax, X=train_x, y=train_y,
                                        ctx=NULL, num.round=20, array.batch.size=100, #ctx = null not device
                                        learning.rate=0.07, momentum=0.9,  eval.metric=mx.metric.accuracy,
                                        initializer=mx.init.uniform(0.07),
                                        epoch.end.callback=mx.callback.log.train.metric(100))
test_y_pred_matrix<-predict(NN1,X = test_x)
test_y_pred <- max.col(t(test_y_pred_matrix)) - 1
sum(diag(table(test_y,test_y_pred)))/length(test_y)
table(test_y,test_y_pred)
