install.packages("plspm")
# load package plspm
library(plspm)
# load data spainfoot
data(spainfoot)

#Inner model generation
Attack = c(0, 0, 0)
Defense = c(0, 0, 0)
Success = c(1, 1, 0)
foot_path = rbind(Attack, Defense, Success)
colnames(foot_path) = rownames(foot_path)
#A one is used when latent feeds in \
innerplot(foot_path)
