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


# problem discription:the speed limit is 30.
#we must decrease it whenever it is above 48, we reduce it by 11 units, otherwise, we reduce it by 6.
#the output would be: 64 (-11),53 (-11), 42(-6), 36(-6), 30
