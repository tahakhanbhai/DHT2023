#Write a script that will (at minimum) accomplish the following tasks:

#Prompt the user to enter a three digit positive number
#get user inpiut using readline function and assign it to variable 'number'.
number <- readline(prompt = "Please input a three-digit number: ")


#Check if the user input is numeric and an integer. If not, print an error message and quit.
#Check if number of characters is equal to 3, if the number is a whole number, if it is a positive number, and if there are any non-numerical values. If any parameters are true, the number is invalid and the session is ended.
if (nchar(number) != 3 |
    as.numeric(number) %% 1 != 0 |
    as.numeric(number) < 0 |
    is.na(as.numeric(number))){
  print("Number inputted is invalid. Session terminated. Please restart the program")
 # q() #quit the program

} else {
#Split number into individual digits.
  digits <-strsplit(number,"")[[1]]
  digits <- as.integer(digits) #Convert the digits into integers, because they're character values

# Added the sum of the cubes of each digit in the original number, and then checked if it equaled to the original number.
  if (sum(digits^3) == number) {
    print("This is a narcissistic number")
  } else {
    print("This is not a narcissistic number")
  }
}


#Check if the number is narcissistic. A narcissistic number, or an Armstrong number, is a number that is equal to the sum of the cubes of its own digits. 153, 370, 371, 407 are three digit Armstrong numbers.
#isplay the result with an appropriate message, e.g. “127 is not an Armstrong number” or “370 is a narcissistic number” or any additional fun text you may want to add.
#Note: Do not use loops even if you are familiar with them. If you feel you absolutely have to, you are welcome to submit two versions of the script, one with the loop and the other without.

#Submission notes: I strongly encourage you to create a public repo on your GitHub account first, and then start coding. Make frequent commits and push at least daily. Any repo having less than 2 commits will be penalized. Submit your repo URL (and not necessarily your R script as a file).
#Code review notes: Clone the repo of your friend to your local machine. Create a branch called "review". Review, suggest edits and write in appropriate comments. Commit and push the branch.

