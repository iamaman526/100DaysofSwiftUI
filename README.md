# Swift Code Example – Day 01

This is a sample Swift code that demonstrates:

- Variable and constant usage  
- String operations  
- Multiline strings and formatting

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




