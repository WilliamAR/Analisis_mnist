#Graph_numbers####
plot_mnist=function(i,X,Y){
  b<-matrix(as.numeric(X[i,]),ncol=28,nrow=28,byrow = TRUE)
  image(1:28,1:28,t(b[28:1,]),main=paste0("Esto es un ",Y[i]),col = gray.colors(100))
}

numeros <- c(2,4,6,8,3,1,14,16,18,5)

for (i in 1:length(numeros)) {
  plot_mnist(numeros[i],train_x,train_y)
}
