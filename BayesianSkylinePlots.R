# R script for Bayesian Skyline Plots

# import txt (first open in Excel to delete first row and correct configuration. Header should read: 
# “Time”, “Mean”, “Median”, “Upper”, “Lower”

data <-read.table("data.txt", sep="\t", header=TRUE)

# install ggplot2 if you don't have it yet

install.packages("ggplot2")

# load ggplot2 package

library(ggplot2)

# define individual plots 

BSP <- ggplot(data, aes(x=Time,y=log(Median))) + geom_ribbon(aes(ymin=log(Lower),ymax=log(Upper)),alpha=0.2) 
+ geom_line() + xlab("Time") + ylab("log(Ne)") + theme_bw() 
+ theme(panel.border = element_blank() , axis.line = element_line(colour="black")) 
+ theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank())

# to plot multiple graphs install gridExtra

install.packages("gridExtra")

# load gridExtra

library(gridExtra)

# arrange plots in grid

grid.arrange(BSP1, BSP2, … , ncol=2)

#to save as pdf (the order in which the graphs will appear is Row1Column1, Row1Colum2, etc.)

pdf("Figure.pdf")
grid.arrange (BSP1, BSP2, … , ncol=2)
dev.off()

