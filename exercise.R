
# problem 1 description:the speed limit is 30.
#we must decrease it whenever it is above 48, we reduce it by 11 units, otherwise, we reduce it by 6.
#the output would be: 64 (-11),53 (-11), 42(-6), 36(-6), 30



initial_speed <- 64

while(initial_speed >30){
  print(initial_speed)
  if( initial_speed > 48){ 
    initial_speed <- initial_speed - 11
  }
  else{
    initial_speed <- initial_speed - 6
  }
}
print(initial_speed)

"
problem 2 description : 
city :New York
Population : 8,405,837
broughs: Manhattan, Bronx, Brooklyn, Queens
is not capital
"

city <- list(
  name = "New York",
  population = 8405837,
  broughts = c("Manhattan", "Bronx", "Brooklyn", "Queens"),
  isCapital = FALSE
)

cat(rep("=", 30), sep ="")
for (cityInformation in city){
  print(cityInformation)
}
print(strrep("=" , 20))



for (cityInformation in city){
  
  if(length(cityInformation) >1){
    print(strrep("-" , 20))
    for (index in 1:length(cityInformation)){ 
      print(cityInformation[index])}
    print(strrep("-" , 20))
  }else{
      print(cityInformation)
    }

}


