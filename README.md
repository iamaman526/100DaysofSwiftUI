# SWIFT LEARNING
---


# Swift Code Example – Day 01

- Variable and constant usage  
- String operations  
- Multiline strings and formatting
- Storing whole numbers  
- Arithmetic operations  
- Type safety and conversion  
- Storing decimal numbers

 [Click here](DeepDive/StringMethods.md) to view detailed string methods in Swift.

```swift

import Cocoa

// Greeting
var greeting = "Hello, playground"

// Variables
var firstName = "Leon"
firstName = "Carlos"
firstName = "Mateo"

// Constants
let lastName = "Ishikawa"

// Changing variable values
var playerName = "Nikolai"
print(playerName)

playerName = "Rajiv"
print(playerName)

playerName = "Akira"
print(playerName)

// Count name length
let nameLength = playerName.count
print("Name length: \(nameLength)")

// String comparison
print(playerName == playerName)  // Always true

// Strings with formatting
let actor = "RDJ"
let emoji = "😁"
let quotedText = "I am with you \"believe\" me"  // Escaping quotes

// Multiline string
let multiLineText = """
Here
is the
break
"""
let quote = "Then he tapped a sign saying \"Believe\" and walked away."

// Check string prefix/suffix
print(greeting.hasPrefix("Hello"))
print(multiLineText.hasSuffix("break"))



// Storing Whole Numbers

let score = 10
let reallyBigScore = 100_000_000_000  // Underscores improve readability

let lowercase = score - 2
let highscore = score + 10
let doublescore = score * 2
let squaredScore = score * score
let halved = score / 2

let number = 120
print(number.isMultiple(of: 3))       // true
print(120.isMultiple(of: 3))          // true


// Storing Decimal Numbers

let numb = 0.1 + 0.2
print(numb)                           // Might not be exactly 0.3 due to floating-point precision

let a = 1
let b = 2.0
let c = Double(a) + b
print(c)                              // 3.0

let double = 3.0
let double2 = 3131.3131
let double3 = 3.1

var rating = 5.0
rating *= 2                           // 10.0


// Type Safety Example
// Swift is a strongly typed language — variable types can't change dynamically.

// var number: Int = 10
// number = "Hello" // ❌ Error: Cannot assign a string to an Int


// Converting String to Integer

let numString = "42"
if let num = Int(numString) {
    print(num)                        // ✅ 42
}



```
---

# Swift Code Example - Day 02 

 - Boolean values and operations
 - String concatenation and interpolation
 - Logical operators and toggling

```swift
 
## 🔷 BOOLEANS

let filename = "paris.jpg"
print(filename.hasSuffix(".jpg"))  
// Checks if the filename ends with ".jpg" → true

let no = 120
print(no.isMultiple(of: 3))         
print(120.isMultiple(of: 3))        
// Checks if numbers are divisible by 3

let goodDogs = true
var gameOver = false
print(gameOver)                     // false
gameOver.toggle()                   // Flips the Boolean value
print(gameOver)                     // true

let isMultiple = 120.isMultiple(of: 3)
// Stores the result of the check into a constant

var isAuthenticated = false
isAuthenticated = !isAuthenticated  // Negates the current value
print(isAuthenticated)              // true


## 🔷 STRING JOINING

// Concatenation

let fName = "Nicol"
let lName = "as"

let fullName = fName + " " + lName
print(fullName)                     // "Nicol as"

let luggagecode = "12" + "4" + "7" + "6" + "9"
// Inefficient: Creates multiple temporary strings


// String Interpolation

let names = "tay"
let age = 25
let message = "Hello my name is \(names) and I am \(age) years old"
print(message)
// "Hello my name is tay and I am 25 years old"

print("6 * 3 is \(6 * 3)")
// Expressions can be evaluated inside interpolation

// - Why Use Interpolation?
// - Cleaner and more readable
// - Allows mixing of different data types
// - More efficient than string concatenation
// - Can be used with variables, constants, and expressions
// - Can be used with string literals and variables

[Click here](DeepDive/CheckPoint1.swift) CheckPoint - 01 in Swift.