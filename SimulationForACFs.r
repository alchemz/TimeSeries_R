##Q2 R code
#let e_t ~ id N(0,1), let n=100
#theta=0.25=1/4
Y.t=arima.sim(list(order=c(0,0,1),ma=0.25),n=100)
#compute the ACF
acf(Y.t)
#plot the time series
plot.ts(Y.t)
#theta=4
Y.t=arima.sim(list(order=c(0,0,1),ma=4),n=100)
#compute the ACF
acf(Y.t2)
#plot the time series
plot.ts(Y.t2)

##Q3 R code
N=50
xs1=rep(NA,N) #create a vector called xs1 of length N, filled with NAs
ys1=rep(NA,N) #create a vector called ys1 of length N, filled with NAs
xs1[1]=0 # set the first element of xs1 to zero.
#simulate xs1 using a loop
for (t in 2:N)
{ 
  xs1[t]=xs1[t-1] + rnorm(1,0,1) # random walk for xs1
}
# simulate ys1
for (t in 1:N)
{ 
  ys1[t]=4 + 3*t + xs1[t]
}

#compute the ACF
acf(ys1)
#compute the first 10 ACFs
acf(ys1, lag.max=10)
#plot the time series
ts.plot(ys1)
