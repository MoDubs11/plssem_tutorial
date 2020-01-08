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


# define list of indicators: what variables are associated with
# what latent variables
foot_blocks = list(1:4, 5:8, 9:12)

# all latent variables are measured in a reflective way
foot_modes = c("A", "A", "A")

foot_pls = plspm(spainfoot, foot_path, foot_blocks, modes = foot_modes)
# path coefficients
foot_pls$path_coefs
