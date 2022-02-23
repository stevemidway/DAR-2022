# Observations
inside <- c(12,15,21,22,15,17)
outside <- c(9,7,9,14,8,13)

# Mean of observations
mean(inside)
mean(outside)

# Difference of observations
Diff <- mean(inside) - mean(outside)
Diff

# Storage vector for simulation
sim.diff <- rep(NA, 1000)

for(i in 1:1000){
sim1 <- c(sample(inside, 3), sample(outside,3))
sim2 <- c(sample(inside, 3), sample(outside,3))
sim.diff[i] <- mean(sim1) - mean(sim2)
}

sim.diff

hist(sim.diff, 
     las = 1,
     breaks = 20,
     col = "black",
     border = "white",
     xlab = "Differences",
     ylab = "Frequency",
     xlim = c(-8,8))
abline(v = 8, col = "red", lwd = 3)
