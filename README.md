# SWIFT LEARNING

Welcome to my Swift learning notes!  
Use the links below to jump to each day's code and topics 👇

---

### 🔗 Quick Navigation

- [📘 Day 01 – Basics: Variables, Strings, Numbers](#swift-code-example--day-01)
- [📗 Day 02 – Booleans & Strings](#swift-code-example---day-02)
- [📙 Day 03 – Arrays, Dictionaries, Sets ,Enum](#swift-code-example---day-03)
- [📙 Day 04 – Type Annotations , String Inference , Constants Without Initial Values](#Swift-Code-Example---Day-04)
- [📙 Day 05 – Conditionals if-else , Switch Statement ,, Ternery Operator](#Swift-Code-Example---Day-05)




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
## DICTIONARIES
- Complex data types – Part 1
- Dictionaries: Creation, Access, Modification
- Dictionary methods: accessing with default, updating, removing, force unwrapping
- Dictionaries are ideal for labeled data: Unlike arrays that use numeric indexes, dictionaries let you use meaningful keys like "name" or "location", which makes    your code easier to read and maintain.
- Use default: values to prevent crashes: When accessing a key that might not exist, Swift lets you safely return a fallback value using dictionary[key, default: value]. This avoids runtime errors due to missing keys.
- Dictionaries in Swift are unordered collections. This means there is no guaranteed order for elements.

[Click here](DeepDive/Dictionaries.md) to view detailed Dictionaries  in Swift. 

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

```
## SETS

Sets: Unique, Unordered Collections

- Sets store unique values: No duplicates allowed.
- Unordered: Sets don’t preserve insertion order.
- Fast lookups: .contains() is faster than in arrays.
- Insert with .insert(): Returns false if item exists.
- Sorted view: Use .sorted() to get a sorted array; the original set stays unordered.
- Use cases: Ideal when uniqueness and performance matter more than order.

```swift
// SETS in Swift

// ✅ How to use Sets for fast data lookup
let actors = Set([
    "Tom Cruise",
    "Angelina Jolie",
    "Brad Pitt",
    "Dwayne Johnson"
])
print(actors)


// ✅ Declaring an empty Set and inserting values
var hogwarts = Set<String>()
hogwarts.insert("Harry Potter")
hogwarts.insert("Hermione Granger")
hogwarts.insert("Ron Weasley")
hogwarts.insert("Draco Malfoy")

print(hogwarts) 
// ❗️Note: Set is unordered. Elements may appear in any order when printed.
// Sets are optimized for fast lookups and storage.

// ✅ Attempting to insert a duplicate value
hogwarts.insert("Harry Potter") 
// 🔁 Duplicate value is ignored. Set still contains unique values only.


// ✅ Sorting a Set
let sortedSet = hogwarts.sorted() 
print(sortedSet) 
// 🔍 .sorted() returns a new Array with sorted values
// The original Set remains unordered.

print(hogwarts.sorted())  
// 🧾 This shows a sorted "view", but hogwarts itself is still a Set (unordered)


// ℹ️ Notes on Sets:
// - A Set stores **distinct** values of the same type.
// - Use Sets when:
//    - Order is not important.
//    - You need to ensure **uniqueness** of elements.
// - Use `.insert(_:)` to add items to a Set.
// - `.insert(_:)` returns a **Bool**: `true` if item was added, `false` if it was a duplicate.
// - Use `.append(_:)` only with Arrays (which are ordered).

```

## ENUM

Enums (short for *enumerations*) are custom data types that restrict a variable to a **fixed set of possible values**. They prevent accidental assignment of invalid values and make your code more reliable and readable.

### Why use enums?

- Prevent typos like assigning `"January"` instead of a weekday.
- Cleaner than using string or integer constants.

```swift


 //Problem Without Enums
// Example with plain strings — prone to errors

var selected = "Monday"
selected = "Tuesday"
selected = "January"   // 🚫 Error: Invalid value for a weekday
selected = "Friday "    // 🚫 Trailing space causes bugs


//Solution using Enum
// Define a fixed set of allowed values
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

// Using the enum
var day = Weekday.monday
day = Weekday.tuesday
day = Weekday.friday


//Cleaner Syntax Using Commas and Dot Shorthand in SWIFT

// Comma-separated definition
enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

// Dot syntax for assignment
var day = Weekday.monday
day = .tuesday
day = .friday


 /*Benefits of Using Enums in Swift
-Prevents invalid assignments
-Enables compiler checking
-Improves code completion and readability*/

```
---

# Swift Code Example - Day 04 

###  Type Annotations & Constants Without Initial Values
---
- Type annotations in Swift
- Why and when to use type annotations
- Explicit data types: `String`, `Int`, `Double`, `Bool`, `Array`, `Dictionary`, `Set`
- Enum values and type inference
- Constants declared without immediate assignment

  [Click here 📌 Checkpoint - 02 ](DeepDive/CheckPoint2.swift)

```swift


## Type Annotations Basics


// Sometimes we don’t want to assign a value immediately, or sometimes we want to override Swift’s choice of type, and that’s where type annotations come in.

let sname = "Success"  // using type inference
var digit = 5

var digit1: Int = 5   // integer annotation
let sname1: String = "Success" // string annotation

var digit2 = 5
print(digit2) // it will be an integer

// For example, maybe score is a decimal because the user can get half points, so you’d write this:

var digit3: Double = 5
print(digit3) // overriding to be a double

## Type Annotations in Various Data Types

let playerName: String = "Roy"
var luckyNumber: Int = 13
let pi: Double = 3.141
var is1Authenticated: Bool = true

var albums: [String] = ["Red", "Fearless"]
var user: [String: String] = ["id": "@twostraws"]
var colorcode : [String: Int] = ["red":1,"blue":2]
var books: Set<String> = Set(["The Bluest Eye", "Foundation", "Girl, Woman, Other"])
var numbers: [Int] = [1, 2, 3, 4,]


## Creating Empty Collections with Type Annotations

// To create an empty array of strings:
var teams: [String] = [String]()  // type annotation 1
var cities1: [String] = []        // type annotation 2
var clues = [String]()            // type inference


##  Enums and Their Types

// Values of an enum have the same type as the enum itself

enum Shape {
    case circle, square, triangle
}

var Shape1 = Shape.circle
Shape1 = .square
var shsape1: Shape = .circle   // multiple ways to write it




## Constants Without Initial Values

// Swift allows us to create constants without assigning a value immediately.
// This is useful when we don’t know the value at first but will set it later.
// Swift ensures you can’t use it before it’s set and prevents changing it once assigned—keeping it truly constant.

let username: String
// ... lot of codes between
username = "twostraws"
// ... more code
print(username)

// This kind of code requires a type annotation,
// because without an initial value being assigned Swift doesn’t know what kind of data username will contain.

 let score3: Int = "Zero" // ❌ This is not possible even by using type annotation

```
---
# Swift Code Example - Day 05 

##  Conditionals - If, switch, and the ternary operator


### ->   If statement and Multiple if-else swift :

- Making decisions in code using `if` statements
- Comparison operators (`>`, `<`, `>=`, `<=`, `==`, `!=`)
- Comparing strings alphabetically
- Using methods in conditions (`.count`, `.isEmpty`)
- Using if blocks with arrays and strings
- Use `else` when you want to handle the “otherwise” case of a condition.
- Nested `if`, `else if`, logical operators (`&&`, `||`), and `enum`-based conditions

```swift

In programming, we often need to make decisions — like choosing different actions based on user input, data values, or app state. This is where conditionals come in. They allow your code to ask questions and execute different blocks of code depending on the answers.

For example, imagine an app that checks the weather:
If it’s raining, show an umbrella icon. Otherwise, show sunglasses.

An if statement checks a condition — something that results in true or false. If the condition is true, the code inside the block runs.

if someCondition {
    print("Do something")
    print("Do something else")
}

//example
let temperature = 30

if temperature > 25 {
    print("It's a hot day!")
}


//Example using muliple ifs

let speed = 88
let percentage = 85
let age = 18

if speed >= 88 {
    print("Where we're going we don't need roads.")  
}

if percentage < 85 {
    print("Sorry, you failed the test.")
}

if age >= 18 {
    print("You're eligible to vote")
}

//Example using camparison operator (<,>.<=,=>) with strings too

let ourName = "Dave Lister"
let friendName = "Arnold Rimmer"

if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
}

if ourName > friendName {
    print("It's \(friendName) vs \(ourName)")
}

So, if the string inside ourName comes before the string inside friendName when sorted alphabetically, it prints ourName first then friendName, exactly as we wanted.


//Example using Methods in Conditions

// Make an array of 3 numbers
var numbers = [1, 2, 3]

// Add a 4th
numbers.append(4)

// If we have over 3 items
if numbers.count > 3 {
    // Remove the oldest number
    numbers.remove(at: 0)
}

// Display the result
print(numbers)


//Example using ==(equal to) and !=(not equal to operator in the if condition

let country = "Canada"
let name = "Taylor Swift"

if country == "Australia" {
    print("G'day!")
}

if name != "Anonymous" {
    print("Welcome, \(name)")
}


//Example of checking if the string is empty or not .

// Create the username variable
var username = "taylorswift13"

// If `username` contains an empty string
if username == "" {
    // Make it equal to "Anonymous"
    username = "Anonymous"
}

// Now print a welcome message
print("Welcome, \(username)!")

Note - We can check if a string is empty using .count, but this is not the most optimized approach because Swift counts each character individually, which can be inefficient for long strings. A better way is to use the .isEmpty property, which directly checks if the string has zero characters.

Example using .count:
if username.count == 0 {
    username = "Anonymous"
}

optimized example using .isEmpty:

if username.isEmpty == true {
    username = "Anonymous"
}

** rewriting this , because In our case, username.isEmpty is already a Boolean — it directly returns true if the string is empty, and false otherwise. This means we don’t need to compare it to true or false. We can write the condition more simply and clearly:

if username.isEmpty {
    username = "Anonymous"
}

-----------------------------------------------------------------------------------------------------------------------

##  Using Multiple `if` Statements


let age1 = 16

if age1 >= 18 {
    print("You can vote in the next election.")
}

if age1 < 18 {
    print("Sorry, you're too young to vote.")
}


##  Using `else`

We can simplify the above logic using `else`:


let age2 = 16

if age2 >= 18 {
    print("You can vote in the next election.")
} else {
    print("Sorry, you're too young to vote.")
}



##  Using `else if` and a Final `else`

we can chain multiple `else if` blocks, but there can only be **one** `else`.



let a1 = false
let b1 = true

if a1 {
    print("Code to run if a is true")
} else if b1 {
    print("Code to run if a is false but b is true")
} else {
    print("Code to run if both a and b are false")
}


##  Nested `if` Statements (Combining Conditions)


let temp = 25

if temp > 20 {
    if temp < 30 {
        print("It's a nice day.")
    }
}


## Better Alternative: Use `&&` (Logical AND)


if temp > 20 && temp < 30 {
    print("It's a nice day.")
}


##  Using `||` (Logical OR)


let userAge = 14
let hasParentalConsent = true

if userAge >= 18 || hasParentalConsent {
    print("You can buy the game")
}


##  Conditional Logic with `enum` and `||` Operator


enum TransportOption {
    case airplane, helicopter, bicycle, car, scooter
}

let transport = TransportOption.airplane

if transport == .airplane || transport == .helicopter {
    print("Let's fly!")
} else if transport == .bicycle {
    print("I hope there's a bike path…")
} else if transport == .car {
    print("Time to get stuck in traffic.")
} else {
    print("I'm going to hire a scooter now!")
}


 📝 Note:
/* - When setting the value, we use `TransportOption.airplane` to indicate the enum type explicitly.
- After initialization, Swift knows the type — so we can use `.airplane`, `.car`, etc.
- `||` checks if `transport` is `.airplane` **or** `.helicopter`.
- The rest is handled by `else if` and a final `else`. */

```

## SWITCH STATEMENT

The switch statement in Swift is a powerful alternative to multiple if-else blocks, especially useful for checking a single value against many possibilities like enums or strings.

### Why use Switch?

- Cleaner than repeating if for the same variable
- Ideal for enum types — enforces handling all cases
- Use default for unmatched values
- Add fallthrough to continue to next case
- Prefer switch for simple checks, if for complex conditions

```swift
// ------------------------------------------------------
// MARK: - Using if-else statements
// ------------------------------------------------------

print("if-else ----------------")

enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.sun

if forecast == .rain {
    print("Don't forget your umbrella!")
} else if forecast == .sun {
    print("It should be a nice day.")
} else if forecast == .wind {
    print("Stay safe out there!")
} else if forecast == .snow {
    print("School is cancelled.")
} else {
    print("Our forecast generator is broken!")
}

// ------------------------------------------------------
// MARK: - Using switch statements
// ------------------------------------------------------

print("switch ----------------")

// We solve the above problem using switch for clarity and avoiding repetition

switch forecast {
case .sun:
    print("It should be a nice day.")
case .rain:
    print("Pack an umbrella.")
case .wind:
    print("Wear something warm.")
case .snow:
    print("School is cancelled.")
case .unknown:
    print("Our forecast generator is broken!")
}

// Explanation:
// - switch forecast: tells Swift which value to evaluate.
// - .sun, .rain etc.: cases matched against forecast.
// - Every enum case must be handled (exhaustive).
// - Cleaner than multiple if-else for fixed values.


// ------------------------------------------------------
// MARK: - Using switch with String and default
// ------------------------------------------------------

let place = "Metropolis"

switch place {
case "Gotham":
    print("You're Batman!")
case "Mega-City One":
    print("You're Judge Dredd!")
case "Wakanda":
    print("You're Black Panther!")
default:
    print("Who are you?")
}

// Note:
// - switch checks cases in order.
// - default handles unmatched cases.
// - Placing default before other cases causes compile error.


// ------------------------------------------------------
// MARK: - Using switch without fallthrough
// ------------------------------------------------------

let day1 = 5
print("My true love gave to me…")

switch day1 {
case 5:
    print("5 golden rings")
case 4:
    print("4 calling birds")
case 3:
    print("3 French hens")
case 2:
    print("2 turtle doves")
default:
    print("A partridge in a pear tree")
}

// ------------------------------------------------------
// MARK: - Using switch with fallthrough
// ------------------------------------------------------

let day2 = 5
print("My true love gave to me…")

switch day2 {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}

// Explanation:
// - fallthrough makes switch continue to the next case.
// - Not commonly used, but useful for cumulative actions.


// ------------------------------------------------------
// MARK: - When to use switch over if?
// ------------------------------------------------------

// ✅ Use `switch` when:
// - You are checking the same value against multiple possibilities (especially enums).
// - You want exhaustive and safer checks.
// - Readability and cleaner branching are needed.

// ✅ Use `if` when:
// - You have complex conditions (ranges, combinations).
// - You're comparing different values or need logical operators (&&, ||).
```

## Ternary Operator (`? :`)

The ternary operator is a concise way to evaluate a condition and choose between two values. It replaces simple `if-else` statements for assignment or expressions.

- Works with 3 parts: `condition ? trueResult : falseResult`  
- Ideal for short, inline condition-based choices  
- Improves readability for simple logic  
- Not suitable for complex conditions or multiple outcomes



### Basic Syntax

```swift
let result = condition ? valueIfTrue : valueIfFalse

// Example 1: Voting Eligibility

let age = 18
let canVote = age >= 18 ? "Yes" : "No"
print(canVote)

 // Example 2: Check if Array is Empty

 let arr = [1, 2, 3, 4, 5]

let newArr = arr.isEmpty ? "no one" : "\(arr.count) people"
print(newArr)

// Example 3: Enum Comparison

enum Theme {
    case light, dark
}

let theme = Theme.dark

let background = theme == .light ? "black" : "white"
print(background)

//  Example 4: With Boolean

let isAuthenticated = true
print(isAuthenticated ? "Welcome!" : "Who are you?")

```
---
# Swift Code Example - Day 06

- Looping over arrays and ranges and  Nested loops 
- Using `_` when loop variable is unused
- Range operators: `..<` vs `...`
- While loops with conditions and random values
- `continue` and `break` in loops
- Labeled statements for nested loop control

[Click here 📌 Checkpoint - 03](DeepDive/CheckPoint3.swift)

## 🔷 Looping Over Arrays

```swift
let platform = ["ios", "macos", "tvOS", "watchOS"]

for item in platform {
    print("Swift works great on \(item).")
}

//  Simple Range Loops

for i in 1...5 {
    print("5 x \(i) = \(5*i)")  // 1...5 is range
}


// Nested loops – Times table

for j in 1...12 {
    print("The \(j) times table")
    for k in 1...12 {
        print("  \(k) x \(j) is \(k * j)")
    }
    print()
}

// Closed vs Half-open ranges

for i in 1...5 {
    print("Counting from 1 through 5: \(i)")
}

for i in 1..<5 {
    print("Counting from 1 up to 5: \(i)")
}

// note - ..< excludes the upper value — useful in arrays where count starts at 0.

// Using _ when variable is unused

var lyrics = "The Swift language is"

for _ in 1...5 {
    lyrics += " is great!"
}
print(lyrics)

// Another underscore loop (names hidden)

let names = ["Sterling", "Cyril", "Lana", "Ray", "Pam"]

for _ in names {
    print("[CENSORED] is a secret agent!")
}
// note - _ tells Swift not to create a temp constant. Also makes intent clear.



// Array range slicing

let names = ["Piper", "Alex", "Suzanne", "Gloria"]

print(names[0])         // First item
print(names[0..<4])     // Items 0 to 3  
print(names[1...3])     // Items 1 to 3
print(names[1...])      // From index 1 to end
<!-- Swift allows partial ranges like 1... and ..<4. -->


// Invalid vs Valid List Loop

// ❌ Invalid:
/// for beatle in "John", "Paul", "Ringo" { ... }

for beatle in ["John", "Paul", "Ringo"] {
    print("\(beatle) was in the Beatles")
}
//note - Always loop over arrays — not over comma-separated lists.

```
---

## 🔷 While Loop

```swift

var count = 1

while count <= 5 {
    print("Counting: \(count)")
    count += 1
}

// note - while loops are less common in Swift than for loops.

//Example 

var count2 = 10

while count2 > 0 {
    print("Counting: \(count2)")
    count2 -= 1
}
print("Blast off")

// note - //while loops are really useful when you just don’t know how many times the loop will go around.


// Random Numbers with While --------------------->

let id = Int.random(in: 1...1000)
print(id)

let amount = Double.random(in: 1...1000)
print(amount)
```
---

## 🔷 Continue and Break

```swift

// Skipping Loop Items Using continue

let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }

    print("Found picture: \(filename)")
}
//note - continue skips the rest of the loop if condition is met.


// Using break to Exit Loop Early

let num1 = 4
let num2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: num1) && i.isMultiple(of: num2) {
        multiples.append(i)
        if multiples.count == 10 {
            break
        }
    }
}
print(multiples)
//note - break exits the loop early when condition is met.


// Labeled statement – breaking nested loops --------------------------------------

let options = ["up", "down", "left", "right"]
let secretCombination = ["up", "up", "right"]

outerLoop: for option1 in options {
    for option2 in options {
        for option3 in options {
            let attempt = [option1, option2, option3]
            print("In loop")

            if attempt == secretCombination {
                print("The combination is \(attempt)!")
                break outerLoop
            }
        }
    }
}

//note :
// Swift has labeled statements to help break out of nested loops or switch cases clearly.
// Without labels, 'break' or 'continue' only affects the innermost loop.
// Labels let you control exactly which loop you want to exit or skip — useful in complex logic.
```









