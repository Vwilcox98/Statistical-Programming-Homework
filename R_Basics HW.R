dat <- read.csv ("./tgpp.csv")

#1 
> colnames (dat)
[1] "plot"      "year"      "record_id" "corner"    "scale"     "richness" 
[7] "easting"   "northing"  "slope"     "ph"        "yrsslb"   

#2 
> ncol (dat)
[1] 11
> nrow (dat)
[1] 4080

#3
> sapply(tgpp, class)
plot      year record_id    corner     scale  richness   easting  northing 
"integer" "integer" "integer" "integer" "numeric" "integer" "integer" "integer" 
slope        ph    yrsslb 
"integer" "numeric" "numeric"

#4
> dat[c(1,5,8), c(3, 7, 10)]
record_id easting  ph
1       187  727000 6.9
5       191  727000 6.9
8       194  727000 6.9

#5 plot saved as PDF
plot (dat$richness, dat$scale, xlab = "Richness", ylab = "Scale", main = "Richness Scale")
> View(iris_sp)

