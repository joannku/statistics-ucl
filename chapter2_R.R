?distributions
set.seed(4638)
Y <- rbinom(n=100, size=8, prob=0.5)
hist(Y, breaks=8)

#seq is used to obtain a sequence of possible values
possible_theta <- seq(0,1,length=100) 
lik_theta <- dbinom(8,size=8,possible_theta)
plot(x=possible_theta,y=lik_theta,type="l")

# The maximum likelihood estimate  
# is very simple to compute. Moreover, computations with R are vectorized. 
# For instance, if Y is a vector, then Y/8 divides each element of Y by 8. 
# And if Y and X are vectors of the same length, then Y/X divides each 
# element of Y by the corresponding element of X.
# So, to compute the maximum likelihood estimate of  
# for each of the simulated replications of the experiment, we can simply run:

theta_est <- Y/8
theta_est

likelihood_R <- dbinom(Y, size=8, prob=.5)
likelihood_R

likelihood_G <- dbinom(Y, size=8, prob = theta_est)
likelihood_ratio <- likelihood_R/likelihood_G
hist(likelihood_ratio)

binom.test(x=8, n = 8, p = 0.5)
binom.test(x=8, n = 8, p = 0.5, alternative = "greater")
