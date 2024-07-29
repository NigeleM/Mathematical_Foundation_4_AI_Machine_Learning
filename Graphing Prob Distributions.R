
# Graphing Prob Density Functions in R

# Example : PLOTTING THE NORMAL DISTRIBUTION for childrens IQ 

# Define parameters of our distribution
mean = 100
stanDev = 15
# define lower and upper bounds of region of interest
lower = 115
upper = Inf

# Generate sequnece of numbers and make normal distribution
x <- seq(-4,4,length=100) * stanDev + mean
prob <- dnorm(x,mean,stanDev)

# Make plot and add probability distribution and axis labels
plot(x,prob,type = 'n',xlab = 'IQ Values',ylab = 'P(x)',main = "Normal Distribution of IQ Scores",axes = FALSE)
lines(x,prob)
axis(1,at=seq(40,160,20), pos = 0)

# Generate a polygon for region of interest
i <- x >= lower & x <= upper
polygon(c(lower,x[i],upper), c(0,prob[i],0) ,col="red")

# calculate area under curve for the region of interest and prints reuslts
area <- 1 - pnorm(lower,mean,stanDev)
results <- paste("P(",lower,"< IQ <",upper,") =", signif(area,digits = 3))
mtext(results,3)

