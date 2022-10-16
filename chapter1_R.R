library(sdamr)
data("fifa2010teams")
head(fifa2010teams)
summary(fifa2010teams)
mean(fifa2010teams$goals_for)
IQR(fifa2010teams$goals_for,type=1) #interquartile range
sample_var(fifa2010teams$goals_for) #sample variance
sample_mode(fifa2010teams$goals_for) #sample mode

install.packages("dplyr")
library(dplyr)