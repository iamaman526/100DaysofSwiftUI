# 📘 Swift Code – Common Operations

This guide includes:

- 🧵 **Common String Methods**  
- 🔢 **Basic Arithmetic Operations**  
- 🔄 **Integer and Double Manipulations**  

---

## 🧵 **Common String Methods**

| Method | Example | Result |
|--------|---------|--------|
| `isEmpty` | `"".isEmpty` | `true` |
| `count` | `"Swift".count` | `5` |
| `hasPrefix(_:)` | `"hello".hasPrefix("he")` | `true` |
| `hasSuffix(_:)` | `"hello".hasSuffix("lo")` | `true` |
| `contains(_:)` | `"hello".contains("ll")` | `true` |
| `uppercased()` | `"swift".uppercased()` | `"SWIFT"` |
| `lowercased()` | `"SWIFT".lowercased()` | `"swift"` |
| `replacingOccurrences(of:with:)` | `"hello".replacingOccurrences(of: "l", with: "w")` | `"hewwo"` |
| `trimmingCharacters(in:)` | `" hello ".trimmingCharacters(in: .whitespaces)` | `"hello"` |
| `prefix(_:)` | `"Swift".prefix(3)` | `"Swi"` |
| `suffix(_:)` | `"Swift".suffix(3)` | `"ift"` |
| `dropFirst(_:)` | `"Swift".dropFirst(2)` | `"ift"` |
| `dropLast(_:)` | `"Swift".dropLast(2)` | `"Swi"` |
| `split(separator:)` | `"a,b,c".split(separator: ",")` | `["a", "b", "c"]` |
| `joined(separator:)` | `["a", "b", "c"].joined(separator: ",")` | `"a,b,c"` |
| `reversed()` | `"swift".reversed()` | `"tfiws"` |
| `first` | `"swift".first` | `"s"` |
| `last` | `"swift".last` | `"t"` |
| `unicodeScalars.first?.value` | `"A".unicodeScalars.first?.value` | `65` |
| `capitalized` | `"hello world".capitalized` | `"Hello World"` |

---

## 📜 **Multiline Strings**

```swift
let paragraph = """
This is a 
multiline string
in Swift.
"""
```
## 🔢 **Basic Arithmetic Operations**

```swift
let sum = 5 + 3               // 8
let difference = 10 - 4       // 6
let product = 6 * 7           // 42
let quotient = 12.0 / 4.0     // 3.0
let remainder = 10 % 3        // 1

import Foundation
let power = pow(2, 3)         // 8.0
let root = sqrt(25)           // 5.0

let random = Int.random(in: 1...100) // Random number between 1 and 100

```

## 🔑 **Integer and Double Manipulations**

```swift

let intFromString = Int("42")             // 42
let doubleFromString = Double("3.14")     // 3.14
let stringFromInt = String(123)           // "123"
let formatted = String(format: "%.2f", 3.14159) // "3.14"

round(3.6)   // 4.0
ceil(3.2)    // 4.0
floor(3.9)   // 3.0
abs(-7)      // 7


https://drive.google.com/drive/folders/17MROMmoSdRaW6wVilEKaNji8CGzFRIFG?usp=sharing
