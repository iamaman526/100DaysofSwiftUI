//checkpoint 3

// looping through the condition , using for loop and if , else if and else also logical oerators.

for number in  1...100 {
    
    if number.isMultiple(of: 3) && number.isMultiple(of: 5) {
        print("FizzBuzz")
    }
    else if number.isMultiple(of: 5) {
        print("Buzz")
    }
    else if number.isMultiple(of: 3) {
        print ("Fizz")
    }
    else {
        print(number)
    }
    
}