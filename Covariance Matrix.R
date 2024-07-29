# Building a covariance matrix in R - Two ways

# Create column vectors
a <- c(1,2,3,4,5,6)
b <- c(11,12,13,14,15,16)
c <- c(21,22,27,24,25,26)
d <- c(31,32,33,34,85,36)
e <- c(41,42,63,44,45,46)

# Create a matrix from vectors
M <- cbind(a,b,c,d,e)
k <- ncol(M)
n <- nrow(M)
print(M)

# Find the mean for each column
K_mean <- matrix(data = 1, nrow = n) %*% cbind(mean(a),mean(b),mean(c),mean(d),mean(e))

# create a difference matrix
diffM <- M -K_mean
print(diffM)

# Creat Covariance Matrix
covarM <- (n-1)^-1 * t(diffM) %*% diffM # sample covariance
print(covarM)

# find variance from covariance matrix
variance <- diag(covarM)
print(variance)

# R built in function
print(cov(M))

