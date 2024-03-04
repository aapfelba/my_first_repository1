
#-----
# MY very first intro to R
#April Apfelbaum
# March 03.04.24 CP bootcamp
#----


# Introduction -----

3+4
3^42

3+5
d
3+5; 12-8

#This is my first vector
1:6

#my first r object 
a <- 3+4

a+1

die <-1:6

#Naming objects:
namesArecaseSensitive <- 3
namesArecaseSENSITIVE <- 5

#Cannot start with numbers or special characters or NULL/NA/TRUE
#Underscores or dots are good, no spaces

#elementwise operations
die
die -1 
doubled_die <- die *2
die*die
die * doubled_die

#protect multiplication with percentage signs, it will do 
die %*% die

#protect o with percentage signs, it will do a full scale multiplication
die %o% die

#concatanate
die * c(1,2,1,2,1,2)

die * 1:4


#Functions -----

round(3.5)

rnorm(1)
factorial(5)
exp(2)
log2(16)
log10(120)
rnorm(n=10, mean=0, sd= 3)
mean(1:10)

sample(x = die, size = 2, replace = TRUE)
sample(size = 2, x = die, replace = TRUE)

#functions always start with a constructor- the set of argument the function takes. 
#last line of the function tells you what it returns 


roll2<- function() {
  dice <- sample(x= 1:2, size= 2, replace= TRUE)
  return(sum(dice))
}

roll2()
outcome<- roll2()

die

roll3<- function() {
  dice <- sample(x= die, size= 2, replace= TRUE)
  return(sum(dice))
}

roll3()

die

roll4 <- function(die) {
  dice<- sample(x=die, size = 2, replace = TRUE)
  sum(dice)
}

#can click code, extract function and it will make it for you

#Packages -----

#CRAN to download packages
#bioconductor for other packages

install.packages("useful")
#if (!require("BiocManager", quietly=TRUE))
#install.packages("BiocManager")
#BiocManager::install("ComplexHeatmap")

library(tidyverse)

x <- c(-1, 0.8, 0.5, 3, -2, 10, 1.1, 5)
x <- sort #sort ascending order
y<- x^3

plot(x,y)
plot(x,y, type = "p")
plot(x,y, type = "b")
plot(x,y, type = "l")
plot(x,y, type = "h")

qplot(x,y)
qplot(y)















