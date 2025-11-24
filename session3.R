Day <- c("Mon", "Tue", "Wed", "Thu", "Fri")
Dollar <- c(140, -50, 20, -120, 240)
Euro <-c(-24, -50, 100, -350, 10)
nums <- 132:250
rm('val')
nums[1]
nums[3]

x <- 5
if (x %% 2 == 0){
  print("devisable by 2!")
}else if (x %% 3 == 0){
  print("devisable by 3!")
}else {
  print("neither devisable by 2 nor 3!")
}


x<- 10
while(x > 0){
  print(x)
  x <- x-1
}


names <- c("hossein", "amin", "fatemeh", "nima", "mahsa", "arezoo", "paria")

for(name in names){
  print(name)
}

#break
#continue/next

for(name in names){
  print(name)
  if(name == "nima"){
  print("found!")
    break
    }
} 


for(name in names){
 
  if(name == "nima"){
    next()
  }
  print(name)
} 


index <- 1
for(name in names){
  index <- index + 1
  print(paste(index, name, sep=":"))
}
#bad way: assignment in each itterate is not optimise

for (index in 1:length(names)){
  print(paste(index, names[index], sep = " : "))
}

seq(from=1, to=10, by=3)
seq(from=10, to=1, by=-3)

abs(c(-7, 9, -3, 5))

round(x = 314.4156)
round(x = 314.4156, digit = 3)
round(x = 314.4156, digit = -2)

triple <- function(num){
  print(num * 3)
}

triple(12)

triple <- function(num){
  num * 3
}

test <- print("ali")
# ejaze mide zakhire konam!!
#defensive programming

multiply <- function(num, pow=1){
  return(num ^ pow)
}

multiply(2,3)

multiply( 2)
multiply(pow =3, num = 2)

install.pachages(A3)
.libPaths()

#load package
library(A3)
#unload
detach("package:A3", unload =TRUE)
#which are loading now?
search()
vignette("dplyr")
a <- library()
View(a$results)
packages <- a$results[,1]
packages

