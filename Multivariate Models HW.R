#Multivariate Models HW


library("vegan")
data("dune")
data("dune.env")
?dune


install.packages("permute")
install.packages("lattice")
library("dummies")


dim(dune)
head(dune)
head(dune.env)
summary(dune)
summary(dune.env)
str(dune.env)

dune_mds = metaMDS(dune)


plot(dune_mds, type='n')
text(dune_mds, 'sp', cex=.5)
# generate vector of colors 
color_vect = rev(terrain.colors(6))[-1]
points(dune_mds, 'sites', pch=19, 
       col=color_vect[dune.env$Moisture])
legend('topright', paste("Moisture =", 1:5, sep=''), 
       col=color_vect, pch=19)

#1 The names on the plot are the different species
##the dots represent different sites
##the colors represent different moistures
##This analysis shows that certain species prefer different/specific moisture levels

#2
cca_dune = cca(dune ~ ., dune.env)
RsquareAdj(cca_dune, 100)


plot(cca_dune, type='n')
text(cca_dune, 'sp', cex=.5)
# generate vector of colors 
color_vect = rev(terrain.colors(6))[-1]
points(cca_dune, 'sites', pch=19, 
       col=color_vect[dune.env$Moisture])
legend('topright', paste("Moisture =", 1:5, sep=''), 
       col=color_vect, pch=19)


#3 The two analyses seem to compliment one another and show the same trends
##The NMDS model appears to be more useful because it is less constrained and emphasizes the role of "moisture."













