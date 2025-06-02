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

  [Click here 📌 Checkpoint - 01 ](DeepDive/CheckPoint1.swift)

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



```
---

# Swift Code Example - Day 03 

## ARRAYS:

- Complex data types - Part 1
- Arrays: Creation, Access, Modification
- Array functions and behaviors
- Common methods: append(), remove(), count, contains(), sorted(), reversed().

[Click here](DeepDive/ArrayMethods.md) to view detailed Array methods in Swift. 

```swift

// MARK: - ARRAYS

// Basic array with string elements
var beers = ["Pilsner", "Stout", "Lager", "Porter"]
beers.append("BroCode")

// Integer and Double arrays
let numbers = [1, 2, 3, 4, 5]
let temperatures = [10.1, 12.3, 14.5, 16.7]

// Accessing array elements
let firstBeer = beers[0]
let firstNumber = numbers[0]

// Type safety: Uncommenting below line causes error (String + Int)
// let invalidOperation = firstBeer + firstNumber

// MARK: - Creating Empty Arrays

// Using explicit type syntax
var scores = Array<Int>()
scores.append(100)
scores.append(200)
scores.append(300)
print("Second score: \(scores[1])")  // 200

// Using shorthand type syntax
var albums = [String]()
albums.append("Thriller")
albums.append("Back in Black")
albums.append("Sgt. Pepper's Lonely Hearts Club Band")

// Type inference from initial value
var channels = ["Ama"]
// channels.append(3)  // ❌ Error: Cannot append Int to [String]
print(channels)

// MARK: - Array Properties and Methods

print("Number of albums: \(albums.count)")

// Modifying array contents
var characters = ["Arya", "Jon", "Daenerys"]
characters.append("Tyrion")
characters.remove(at: 1)                // Removes "Jon"
print("Characters: \(characters)")
print("Contains 'Aman'? \(characters.contains("Aman"))")  // false

characters.removeAll()                 // Empties the array

// MARK: - Sorting and Reversing

let cities = ["New York", "San Francisco", "Los Angeles"]

// Alphabetical sort
let sortedCities = cities.sorted()
print("Sorted cities: \(sortedCities)")

// Lazy reversed view (efficient, not a full copy)
let reversedCities = cities.reversed()
print("Reversed cities: \(Array(reversedCities))")

/*
 🔸 Tip:
 Swift’s `.reversed()` returns a lazy collection, meaning the original array isn’t changed or copied.
 It's efficient because it just presents a reversed view of the data.
 To get a regular array, use Array(reversedCollection).
*/

```
## MARK: - DICTIONARIES
- Complex data types – Part 2
- Dictionaries: Creation, Access, Modification
- Dictionary methods: accessing with default, updating, removing, force unwrapping
- Dictionaries are ideal for labeled data: Unlike arrays that use numeric indexes, dictionaries let you use meaningful keys like "name" or "location", which makes    your code easier to read and maintain.
- Use default: values to prevent crashes: When accessing a key that might not exist, Swift lets you safely return a fallback value using dictionary[key, default: value]. This avoids runtime errors due to missing keys.

```swift

// ❌ Using array for structured data (not recommended)
var employee = ["Aman", "SE", "Bengaluru"]
print("Job Title: \(employee[1])")
print("Location: \(employee[2])")
print("Name: \(employee[0])")

// ⚠️ Problem: Index-based access can become invalid after removals
employee.remove(at: 1)
// Now prints incorrect or crashes if index doesn't exist

// ✅ Using a dictionary with key-value pairs
let employee02 = [
    "name": "Aman",
    "job": "SE",
    "location": "Bengaluru"
]

print("Employee Dictionary: \(employee02)")
print("Location: \(employee02["location", default: "unknown"])")
print("Job Title: \(employee02["job", default: "unknown"])")

// MARK: - Accessing Unknown Keys Safely

print("Email: \(employee02["email", default: "unknown"])")  // Key doesn't exist

// MARK: - Boolean Dictionary Example

let hasGraduates = [
    "Eric": false,
    "Maeve": true,
    "Otis": false
]

print("Maeve Graduated? \(hasGraduates["Maeve", default: false])")
print("Ruby Graduated? \(hasGraduates["Ruby", default: false])")  // fallback default

// MARK: - Dictionary with Integer Keys

let olympics = [
    2012: "London",
    2016: "Rio",
    2021: "Tokyo"
]

print("2016 Olympics: \(olympics[2016, default: "Unknown"])")
print("2024 Olympics: \(olympics[2024, default: "Unknown"])")  // Key not present

// MARK: - Creating an Empty Dictionary

var heights = [String: Int]()
heights["Alice"] = 189
heights["Bob"] = 199
heights["Charlie"] = 170

print("Alice's height: \(heights["Alice", default: 0])")
print("Bob's height: \(heights["Bob", default: 0])")
print("Charlie's height: \(heights["Charlie", default: 0])")
print("David's height: \(heights["David", default: 0])")  // Key not found

// MARK: - Overwriting Values

var archEnemies = [String: String]()
archEnemies["Batman"] = "Penguin"
archEnemies["Ares"] = "Wonder Woman"
archEnemies["Loki"] = "Thor"

// Overwriting Batman's enemy
archEnemies["Batman"] = "Joker"

print("Batman's Enemy: \(archEnemies["Batman", default: "Unknown"])")

// MARK: - Force Unwrapping (Use with Caution)

print("Force Unwrap: \(heights["Alice"]!)")     // ✅ Works if key exists
// print("Force Unwrap: \(heights["Zed"]!)")    // ❌ Crashes if key doesn't exist

/*
 🔸 Tip:
 Accessing values using just dict["key"] returns an optional (might be nil).
 Use `default:` to safely fall back if key is missing.
 Use `!` only if you are sure the key exists, or it may crash your app.
*/

// MARK: - Optional Safe Access Example

let fruits = ["apple": 2, "banana": 3]

if let value = fruits["banana"] {
    print("Banana count: \(value)")
} else {
    print("Key not found.")
}

print("Orange count: \(fruits["orange", default: 0])")  // 0 fallback

