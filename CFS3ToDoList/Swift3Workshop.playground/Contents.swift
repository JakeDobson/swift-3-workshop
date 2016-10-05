//: Playground - noun: a place where people can play

import UIKit

// Constants and Variables \\

var myVar = 42
myVar = 50

let myConstant = 15
//myConstant = 10

// Type Inference \\

//let myName: String = "Jake"
let myName = "Jake"

// Numeric Type \\

let min = UInt8.min
let max = UInt8.max

let myFloat: Float = 1.234937
let myDouble: Double = 1.234937987231234

// String \\

let someString = "Some string literal value"
var emptyString = ""
var someOtherString = String()

let firstName = "Jake"
let lastName = "Dobson"
var fullName: String

fullName = "firstName" + " " + "lastName"

// Tuple \\

let tuple = (description: "Not Found", code: 401)
tuple.description

//Set

let mySet: Set = [1, 2, 3, 4]
let otherSet: Set = [1, 9, 8, 4, 2, 8]

let result = mySet.intersection(otherSet)

// Array \\

let stringsArray = [String]()
let planetArray = ["Mars", "Jupiter"]
var intArray = [Int](repeating: 0, count: 5)
intArray.append(100)
intArray.append(10)
intArray.insert(1000, at: 0)
let removedValue = intArray.remove(at: 7)

// Dictionary \\

let dictOne = [String : String]()
var dictTwo = ["name" : "Mars"]

dictTwo["location"] = "Home"
dictTwo["name"] = "Earth"

// For-In Loop \\

for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

for value in intArray {
    print(value)
}

for (key, value) in dictTwo {
    print("Key: \(key), Value: \(value)")
}

// While Loop \\

var counter = 1

while counter <= 100 {
    //do some stuff
    counter += 1
}

// Repeat While \\

var repeatCounter = 100

repeat {
    print("This will print at least once.")
} while repeatCounter < 10

// If Statement \\

var tempInF = 50

if tempInF <= 32 {
    print("It's very cold. Consider wearing a scarf.")
} else if tempInF <= 0 {
    print("It's way too cold. STAY INSIDE!")
} else {
    print("It's not that cold. Wear a T-Shirt.")
}

// Switch Statement \\

let someCharacter: Character = "z"

switch someCharacter {
case "a":
    print("The first letter of the alphabet")
case "z":
    print("The last letter of the alphabet")
default:
    print("Some other character")
}
//Ranges
let approxCount = 12
let countDescription: String

switch approxCount {
case 0:
    countDescription = "None"
case 1...5:
    countDescription = "A few"
case 5..<12:
    countDescription = "several"
case 12, 24, 36, 48:
    countDescription = "dozens of"
case 100..<1000:
    countDescription = "hundreds of"
default:
    countDescription = "unknown"
}

let somePoint = (1, 1)

switch somePoint {
case (0, 0):
    print("(0, 0) is at the origin")
case (_, 0):
    print("(\(somePoint.0), 0) is on the x-axis")
case (0, _):
    print("(0, \(somePoint.1)) is on the y-axis")
case (-2...2, -2...2):
    print("(\(somePoint.0), \(somePoint.1)) is inside the box")
default:
    print("(\(somePoint.0), \(somePoint.1)) is outside the box")
}

// Optionals \\

var surveyAnswer: String?
surveyAnswer = "This is so much fun!"

if surveyAnswer != nil {
    print("survey is not nil")
}

if let surveyAnswer = surveyAnswer {
    print(surveyAnswer)
}



//// Code Challenges \\\\

/*

 Declare an array of strings containing all the names of the planets within our solar system. Create a for loop to iterate over each planet name. Inside the for loop, write an if statement that checks if the array contains a value for "Earth". If it does, print("YAY Earth!").
 
*/

let planetsArray = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune", "Pluto"]

for planet in planetsArray {
    if planet == "Earth" {
        print("Yay, Earth!")
    }
}

/*
 
 Declare a tuple that can hold 4 values. These values should be called x, y, width, and height. Then write a corresponding switch statement to handle different cases of this tuple.
 
*/

let aTuple = (x: 0, y: 0, width: 4, height:4)

aTuple.height

switch aTuple {
case let (aTuple) where aTuple.x != 0:
    print("something is wrong with the x-value")
case let (aTuple) where aTuple.y != 0:
    print("something is wrong with the y-value")
case let (aTuple) where aTuple.width != 4:
    print("something is wrong with the width")
case let (aTuple) where aTuple.height != 4:
    print("something is wrong with the height")
default:
    print("Everything checks out!")
}

/*
 
 Declare a Dictionary of type [Int: String]. Give it some default values. Then, remove a value for a specific key. Lastly, once the value has been removed, print the count of objects in the Dictionary to the console. This will take some research.
 
*/

var dictionary: [Int : String] = [5 : "Five", 6 : "Six", 7 : "Seven"]

dictionary.removeValue(forKey: 5)
dictionary.count
dictionary










