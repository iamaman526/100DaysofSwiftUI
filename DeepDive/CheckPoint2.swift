//Day 04

//checkpoint 2

//Using differnet ways to intialize the array -  by type annotation and string inference

let Checkpoint2Array = ["Hello World", "Swift", "Coders", "Coders"] //using array of strings
let CheckPoint2Array = Set(["Hello World", "Swift", "Coders", "Coders"])  // using set of strings
let cHeckPoint2Array: [String] = ["Hello World", "Swift", "Coders"]  // another way of using array of strings
let checkPoint2Array: Array<String> = ["Hello World", "Swift", "Coders"] //second way using array of strings

print("the count of values in the array \(Checkpoint2Array.count)")
print("the count of values after using set is \(Set(Checkpoint2Array).count)")