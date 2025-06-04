# 📘 Swift Dictionaries – Deep Dive

Dictionaries are **key-value collections** in Swift — ideal for storing related data where each value can be accessed using a unique key.

---

## 🧠 What is a Dictionary?

A **dictionary** stores **values (like strings, numbers)** with a **unique key** for each value.

```swift
let employee = [
    "name": "Aman",
    "job": "SE",
    "location": "Bengaluru"
]
```

Here, `"name"`, `"job"`, and `"location"` are **keys**, and each has an associated **value**.

---

## 🎯 Why Use Dictionaries?

| Purpose                              | Example                               |
|--------------------------------------|----------------------------------------|
| Store structured data                | User info (name, age, job, etc.)       |
| Fast lookup using a known key        | Get someone's phone number by name     |
| Store flexible data                  | JSON-like data responses               |
| Optional-safe access with default    | Handle missing keys gracefully         |

---

## 🛠 Creating a Dictionary

### Literal Syntax:

```swift
let person = [
    "name": "John",
    "age": "30"
]
```

### Explicit Types:

```swift
let scores: [String: Int] = [
    "Math": 90,
    "Science": 95
]
```

### Empty Dictionary:

```swift
var book: [String: String] = [:]
book["title"] = "Swift Guide"
```

---

## 🔍 Accessing Dictionary Values

```swift
let name = employee["name"]              // Optional String
print(name ?? "Unknown")                 // Use optional binding or default
```

---

## ✅ Using `default:` Keyword

Avoid getting `nil` by using a **default value**:

```swift
print(employee["location", default: "unknown"])
```

If `"location"` key exists → value is printed.  
If not → `"unknown"` is printed.

---

## ➕ Adding & Updating

```swift
var employee = ["name": "Aman"]
employee["job"] = "Developer"            // Add
employee["name"] = "Rahul"               // Update
```

---

## ➖ Removing Values

```swift
employee["job"] = nil                    // Removes key "job"
```

---

## 📋 Dictionary Properties & Methods

| Method / Property           | Description                                 |
|-----------------------------|---------------------------------------------|
| `dict.count`                | Number of key-value pairs                   |
| `dict.isEmpty`              | Checks if dictionary is empty               |
| `dict.keys`                 | Returns all keys                           |
| `dict.values`               | Returns all values                         |
| `dict.removeValue(forKey:)` | Removes a key-value pair                    |
| `dict.updateValue(_:forKey:)` | Updates or adds a value                  |

---

## 🔁 Looping Through a Dictionary

```swift
for (key, value) in employee {
    print("\(key): \(value)")
}
```

---

## 🔐 Dictionary Type Safety

Dictionaries in Swift are **type-safe**:

```swift
var countryCodes = [String: Int]()
countryCodes["India"] = 91
// countryCodes["UK"] = "forty-four" ❌ Error
```

---

## 🧪 Optional Comparison

### Without default:
```swift
let loc = employee["location"] // Optional
```

### With default:
```swift
let loc = employee["location", default: "Not provided"]
```

---

## 🧯 Dictionary Examples

```swift
let capitals = [
    "India": "New Delhi",
    "France": "Paris",
    "Japan": "Tokyo"
]

print(capitals["India", default: "Not Found"])
print(capitals["USA", default: "Not Found"])
```

Output:
```
New Delhi
Not Found
```

---

## ✨ Summary

- Dictionaries store **key-value pairs**.
- Fast lookup using keys.
- Safe to access using `default:` to avoid nil.
- Type-safe and flexible.
- Dictionaries in Swift are unordered collections. This means there is no guaranteed order for elements.

> 🔗 Useful in almost all Swift projects, especially when working with data, APIs, and user settings.

