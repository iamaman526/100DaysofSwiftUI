# 📚 Swift Arrays – Detailed Method Guide

Arrays are powerful and flexible collections in Swift. Below is a complete reference to the most relevant and commonly used array properties and methods.

---

## 📌 Initialization

```swift
let emptyArray1 = [String]()
let emptyArray2 = Array<Int>()
let arrayWithValues = ["Swift", "Kotlin", "Java"]
```

---

## 📋 Properties

| Property        | Description                          |
|----------------|--------------------------------------|
| `array.count`   | Number of elements in the array       |
| `array.isEmpty` | Checks if the array is empty          |
| `array.first`   | Returns the first element (optional)  |
| `array.last`    | Returns the last element (optional)   |

```swift
print(array.count)
print(array.isEmpty)
print(array.first ?? "Empty")
```

---

## ➕ Adding Elements

| Method                   | Description                          |
|--------------------------|--------------------------------------|
| `array.append(element)`  | Adds an element at the end           |
| `array.insert(at:)`      | Inserts at specified index           |
| `array += [elements]`    | Adds multiple elements               |

```swift
var numbers = [1, 2, 3]
numbers.append(4)
numbers.insert(0, at: 0)
numbers += [5, 6]
```

---

## ➖ Removing Elements

| Method                       | Description                            |
|------------------------------|----------------------------------------|
| `remove(at:)`                | Removes element at index               |
| `removeAll()`                | Removes all elements                   |
| `removeFirst()`              | Removes the first element              |
| `removeLast()`               | Removes the last element               |
| `popLast()`                  | Removes and returns last (optional)    |

```swift
var names = ["Amy", "Bob", "Cara"]
names.remove(at: 1)
names.removeFirst()
names.removeAll()
```

---

## 🔄 Reordering & Filtering

| Method              | Description                                  |
|---------------------|----------------------------------------------|
| `sorted()`          | Returns sorted array                         |
| `reversed()`        | Returns lazy reversed view                   |
| `shuffle()`         | Randomizes the array (in place)              |
| `shuffled()`        | Returns a new shuffled array                 |
| `filter {}`         | Returns elements that match condition        |
| `map {}`            | Transforms each element                      |
| `compactMap {}`     | Removes nil and transforms (if any)          |

```swift
let sortedNames = names.sorted()
let reversedNames = names.reversed()
let filtered = numbers.filter { $0 > 2 }
let doubled = numbers.map { $0 * 2 }
```

---

## 🔍 Checking and Finding

| Method                        | Description                                 |
|-------------------------------|---------------------------------------------|
| `contains(element)`           | Returns true if array contains element      |
| `first(where:)`               | Returns first match (optional)              |
| `last(where:)`                | Returns last match (optional)               |
| `firstIndex(of:)`             | Gets index of element (optional)            |
| `firstIndex(where:)`          | Gets index matching condition               |

```swift
print(numbers.contains(2))
print(numbers.first(where: { $0 > 2 }))
print(numbers.firstIndex(of: 3))
```

---

## 🧪 Miscellaneous

| Method                        | Description                                  |
|-------------------------------|----------------------------------------------|
| `isMultiple(of:)`             | Check if number is divisible by another      |
| `joined(separator:)`          | Joins string array into a single string      |
| `reduce(initial, +)`          | Combines values into one result              |
| `dropFirst(n)`                | Skips first n elements                       |
| `dropLast(n)`                 | Skips last n elements                        |
| `prefix(n)` / `suffix(n)`     | Takes first/last n elements                  |

```swift
let sum = numbers.reduce(0, +)
let top2 = numbers.prefix(2)
let stringList = ["a", "b", "c"].joined(separator: "-")
```

---

## 🧼 Updating & Replacing

| Method                       | Description                                     |
|------------------------------|-------------------------------------------------|
| `replaceSubrange(_:with:)`  | Replaces a range of values                      |
| `swapAt(i, j)`              | Swaps elements at positions                     |
| `fill(_:count:)`            | Repeats a value into an array (manual loop)     |

```swift
var arr = [1, 2, 3, 4]
arr.swapAt(0, 3)
arr.replaceSubrange(1...2, with: [9, 9])
```

---

## 🧯 Type Safety Reminder

Swift arrays are **type-safe** and **homogeneous**:
```swift
var names = ["John"]
// names.append(5) // ❌ Not allowed: Int in [String]
```

---

## 🗂 Useful Patterns

```swift
for item in array {
    print(item)
}

for (index, item) in array.enumerated() {
    print("Index \(index): \(item)")
}
```

---

## 📁 Advanced Types

```swift
let matrix: [[Int]] = [[1, 2], [3, 4]]
let optionalArray: [Int?] = [1, nil, 3]
```

---

## ✅ Summary

- Arrays in Swift are powerful, type-safe collections.  
- They offer tons of functionality: sorting, filtering, transforming, and aggregating.  
- Always use optional-aware methods like `first(where:)`, `popLast()` safely.
