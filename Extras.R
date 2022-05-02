# Loops

# Simple loop
for(i in 1:10) {          
  x.sq <- i^2             
}

x.sq

# But you are writing over each loop, so...

# Print output
for(i in 1:10) {          
  x.sq <- i^2   
  print(x.sq)
}

# Save output
x.sq <- NULL
for(i in 1:10) {          
  x.sq[i] <- i^2   
}
x.sq

# Nested for-loop

M <- matrix(nrow=4, ncol=4) 
for(i in 1:nrow(M))  
{
  for(j in 1:ncol(M)) 
  {
    M[i,j] = i*j          
  }
}
M

# Matrix Population Model
N = matrix(0,6,10)

N[,1] = c(70,20,6,2,1,1)   

# Number of time steps
for (t in 1:9){
      
      a = c(0,0,0.5,2,1,1)
      b = c(1,0,0,0,0,0)
      d = c(0,1,0,0,0,0)
      e = c(0,0,1,0,0,0)
      f = c(0,0,0,1,0,0)
      g = c(0,0,0,0,1,1)
      
      A = rbind(a,b,d,e,f,g)
      
      N[,t+1] = pmax(0,(A%*%N[,t]))# - N[,t] * exp(-M)))
      
      #stable.stage(A)
      
    } # close loop for single simulation
    
    popsize <- apply(N,2,sum)
    
plot(popsize, type = "l")
matplot(t(N), type = "l")


# Model output
library(tidyverse)
library(betaBayes)
data(covid)
?covid

# We hypothesize that more cases results in more deaths

ggplot(covid,aes(x = cases, y = deaths)) +
  geom_point() +
  geom_smooth(method = "lm") +
  theme_classic(base_size = 20)

# Start with regular LM
lm.mod <- lm(deaths ~ cases, data = covid)
summary(lm.mod)
# Conclusions
# cases is a significant effect on deaths
# 1 case increase results in 0.028 increase in deaths
# But residuals suck (as expected)

plot(fitted(lm.mod),resid(lm.mod))
abline(h = 0, col="red")

# Manipulate / transform data
covid <- filter(covid, cases > 10 & deaths > 5) # Arbitrary
ggplot(covid,aes(x = log(cases), y = log(deaths))) +
  geom_point(alpha = 0.3) +
  theme_classic(base_size = 20) +
  geom_smooth(method = "lm")

# Regular LM with log x-form
lm.mod.log <- lm(log(deaths) ~ log(cases), data = covid)
summary(lm.mod.log)
# Conclusions
# cases is a significant effect on deaths
# 0.88% increase in deaths for 1% increase in cases
# Residuals odd, but better

plot(fitted(lm.mod.log),resid(lm.mod.log))
abline(h = 0, col="red")

# But deaths (response) are counts...
glm.mod <- glm(deaths ~ cases, data = covid, 
               family = "poisson")
summary(glm.mod)
# Conclusions
# cases is a significant effect on deaths
# If cases increases by one unit, log of expected 
# deaths (counts) increases by 1.948e-05 

# We see increases cases increases deaths, but what about states?
sts <- c("NY","KS","IA","WA","CA","TX","LA","ND","FL")
cs <- filter(covid, State %in% sts)
ggplot(cs, aes(x = log(cases), y = log(deaths))) +
  geom_point() +
  theme_classic(base_size = 20) +
  geom_smooth(method = "lm") +
  facet_wrap(~State)

# Evidence for state-specific death rates
library(lme4)

re.mod <- lmer(log(deaths) ~ log(cases) + (log(cases) | State), data = cs)
summary(re.mod)

# Print Fixed Effects
fixef(re.mod)

# CIs for Fixed Effects
confint(re.mod)

# Random Effects
coef(re.mod)$State
#ranef(re.mod)

# What about deaths by population density?
sort(covid$PopE,decreasing = T)

# New pop density variable
covid$dens <- ifelse(covid$PopE < 20000, "Rural", 
                     ifelse(covid$PopE > 500000, "Urban","Suburban"))

ggplot(covid, aes(y = log(deaths), x = dens)) +
  geom_boxplot() +
  theme_classic(base_size = 15)

aov.mod <- aov(log(deaths) ~ as.factor(dens), data = covid)
summary(aov.mod)
coef(aov.mod)
TukeyHSD(aov.mod)

