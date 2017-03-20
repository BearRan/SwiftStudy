//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func SimpleValue() {
    print("My name is Bear!")
    
    var myVariable = 42
    myVariable = 50
    let myConstant = 42
    print(myVariable + myConstant)
    
    let implicitInteger = 70
    let implicitDouble = 70.0
    let explicitDouble: Double = 70
    print(Double(implicitInteger) + implicitDouble + explicitDouble)
    
    let label = "The width is "
    let width = 94
    let widthLabel = label + String(width)
    print(widthLabel)
    
    let apples = 3.0
    let oranges = 3
    let appleSummary = "I have \(apples) apples"
    let fruitSummary = "I have \(Int(apples) + oranges) fruits"
    print(appleSummary, fruitSummary)
    
    var shoppintList = ["catfish", "water", "tulips", "blue paint"]
    shoppintList[1] = "bottle of water"
    
    var occupations = [
        "Malocolm" : "Captain",
        "Kaylee" : "Mechanic"
    ]
    occupations["Jayne"] = "Public Relations"
    print(occupations)
    
    var emptyArray = [String]()
    emptyArray = ["Test String", "Test 2", "\(22)"]
    print(emptyArray)
    
    var emptyDictionary = [String: Float]()
    emptyDictionary = [
        "fruitCount" : 23
    ]
    print(emptyDictionary)
    
    
}

SimpleValue()
