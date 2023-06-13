#Assignment 2

#Prompt the user to enter a three digit positive number
#get user input using readline function and assign it to variable 'number'.
number <- readline(prompt = "Please input a three-digit number: ")


#Check if the user input is numeric and an integer. If not, print an error message and quit.
#Check if number of characters is equal to 3, if the number is a whole number, if it is a positive number, and if there are any non-numerical values. If any parameters are true, the number is invalid and the session is ended.
if (nchar(number) != 3 |
    as.numeric(number) %% 1 != 0 |
    as.numeric(number) < 0 |
    is.na(as.numeric(number))){
  print("Number inputted is invalid. Session terminated. Please restart the program")
  q() #quit the program

} else {
#Split number into individual digits.
  digits <-strsplit(number,"")[[1]]
  digits <- as.integer(digits) #Convert the digits into integers, because they're character values

#Added the sum of the cubes of each digit in the original number, and then checked if it equaled to the original number.
  if (sum(digits^3) == number) {
    print(paste0(number, " is a narcissistic number"))
  } else {
    print(paste0(number, " is not a narcissistic number"))
  }
}
