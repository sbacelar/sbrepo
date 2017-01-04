# Atlas of Economic Complexity
#
X<-matrix(c(1,1,1,1,0,1,0,0,0,0,1,1,0,0,0,1), + 4,4,byrow=T)
X
kc_1 <- rowSums(X) # Diversity
kp_1 <- colSums(X) # Ubiquity

kc_2 <- 1/kc_1 * (X %*% kp_1)
kp_2 <- 1/kp_1 * (t(X) %*% kc_1)

kc_3 <- 1/kc_1 * (X %*% kp_2) # right
kc_3_a <- 1/kc_1 * (X %*% (1/kp_1 * (t(X) %*% kc_1))) # right
kc_3_b <- diag(1/kc_1) %*% X %*% diag(1/kp_1) %*% t(X) %*% kc_1 # right
# kc_3; kc_3_a; kc_3_b # Same result

Mc <- diag(1/kc_1) %*% X %*% diag(1/kp_1) %*% t(X)
e1 <- eigen (Mc)
# Problem: the first eigen vector is 0.5 and not 1
ECI <- e1$vectors[,2]

# PRODUCT
kp_3 <- 1/kp_1 * (t(X) %*% kc_2) # right
kp_3_a <- 1/kp_1 * t(X) %*% (1/kc_1 * (X %*% kp_1))
kp_3_b <- diag(1/kp_1) %*% t(X) %*% diag(1/kc_1) %*% X %*% kp_1 # right

Mp <- diag(1/kp_1) %*% t(X) %*% diag(1/kc_1) %*% X
e2 <- eigen(Mp)
PCI <- e2$vectors[,2]