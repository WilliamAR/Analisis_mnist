#address_file####
setwd("~/UNAL/Octavo semestre/TAE/Proyecto_final") #dirección del archivo

#Train####
mnist_train <- read.csv2("mnist_train.csv",header = F,sep = ",")
mnist_train<-data.matrix(mnist_train)
train_x<-mnist_train[,-1]
train_y<-mnist_train[,1]

#Validation####
mnist_test <- read.csv2("mnist_train.csv",header = F,sep = ",")
mnist_test<-data.matrix(mnist_test)
test_x<-mnist_test[,-1]
test_y<-mnist_test[,1]
