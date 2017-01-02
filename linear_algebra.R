# Exs de Algebra Linear
# eigen values e eigen vectors
#
X<-matrix(c(7,3,3,-1), + 2,2,byrow=T)
X
eigen(X)
eigen(X)$values[1]* eigen(X)$vectors[,1]
X%*%eigen(X)$vectors[,1]