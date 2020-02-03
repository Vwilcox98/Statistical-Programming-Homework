dantrees <- read.csv("treedata.csv")
str(dantrees)
library(tidyverse)
names(dantrees)
library(car)
require(car)
View(dantrees)
names(dantrees$species)
#1 Model of Acer rubrum and Abes fraseri
ggplot(data = dantrees) +
  geom_boxplot(mapping = aes(x = species, y = cover))

# Plot both species and their relationship to cover
# put them on the same graph

ggplot(data = dantrees) +
  geom_boxplot(mapping = aes(x = "ABIEFRA" , y = cover))


ggplot(data = dantrees) +
  geom_boxplot(mapping = aes(x = "ACERRUB", y = cover))



#The model does not explain cover very well for either species. 
#The most important variables would be the cover relative to plot size.
aggregate(cover ~ species, dantrees, mean)
#2 

acer_poi = glm(cover ~ tci + elev + beers , data = dantrees, 
               family='poisson')


pseudo_r2 = function(glm_mod) {
  1 -  glm_mod$deviance / glm_mod$null.deviance
}
#3 The GLM is not a reliable source of information as the coverage varies over different plots.







        