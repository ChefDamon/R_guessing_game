#generate a random number between 1 and 100
secret_number <- sample(1:100, 1)

#function to check if the guess is correct
check_guess <- function(guess) {
  if(guess == secret_number) {
    return("Congratulations! You guessed the correct number.")
  } else if (guess < secret_number) {
    return("Too low. Try again.")
  } else {
    return("Too high. Try again.")
  }
}

#Main game loop
while (TRUE) {
  #Prompt the user for a guess
  guess <- as.integer(readline("Guess a number between 1 and 100:"))
  
  #Check the guess
  result <- check_guess(guess)
  print(result)
  
  #Break the loop if guess is correct
  if(result == "Congratulations! You guessed the correct number."){
    break
  }
}