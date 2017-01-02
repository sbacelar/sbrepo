# Atlas da complexidade
#
X<-matrix(c(1,1,1,1,0,1,0,0,0,0,1,1,0,0,0,1), + 4,4,byrow=T)
X
kc <- rowSums(X)
kp <- colSums(X)
kc
kp
1/kc
1/kc * (X %*% kp)
1/kp * (t(X) %*% kc)
