//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func simpleDemo() {
    let t = 3.14
    var testStr :String = "TestStr"
    testStr = "124"
    print(testStr)
    
    let cat = "?"; print(cat)
    
    let minValue = UInt8.min
    let maxValue = UInt8.max
    let anotherPi = 3 + 0.14
    
    //  进制
    let decimalInteger = 17
    let binaryInteger = 0b10001
    let octalInteger = 0o21
    let hexadecimalInteger = 0x11
    
    let cannotBeNegative : UInt8 = 1
    let tooBig : Int8 = Int8.max
    
    let twoThousand : UInt16 = 2_000
    let one : UInt8 = 1
    let twoThousandAndOne = twoThousand + UInt16(one)
    
    //  整数和浮点的转换
    let three = 3
    let pointOneFour = 0.14
    let pi = Double(three) + pointOneFour
    let integrPi = Int(pi)
    
    //  类型别名
    typealias AudioSampple = UInt16
    var maxAmplitudeFound = AudioSampple.min
    
    //  Bool
    let orangesArdOrange = true
    let turnipsAreDelicious = false
    
    if turnipsAreDelicious {
        print("Mmm, tasty turnips!")
    }else{
        print("Eww, turniops are horrible.")
    }
    
    let i = 1
    if i == 1 {
        print("test")
    }
}

//  元组(tuples)n
func tuplesDemo () {
    let http404Error = (404, "Not Found")
    
    //  你可以将一个元组的内容分解(decompose)成单独的常量和变量，然后你就可以正常使用它们了:
    let (statusCode, statusMessage) = http404Error
    print("The status code is \(statusCode)")
    print("The status message is \(statusMessage)")
    
    //  如果你只需要一部分元组值，分解的时候可以把要忽略的部分用下划线( _ )标记:
    let (justTheStatusCode, _) = http404Error
    print("The status code is \(justTheStatusCode)")
    
    //  此外，你还可以通过下标来访问元组中的单个元素，下标从零开始:
    print("The status code is \(http404Error.0)")
    print("The status message is \(http404Error.1)")
    
    //  你可以在定义元组的时候给单个元素命名:
    let http200Status = (statusCode: 200, description: "OK")
    print("code is \(http200Status.statusCode)")
    print("message is \(http200Status.description)")
}

//  可选类型（Optional）
func optionalDemo () {
    let possibleNumber = "123"
    let convertedNumber = Int(possibleNumber)
    
    //  nil
    //  你可以给可选变量赋值为 nil 来表示它没有值:
    var serverResponseCode: Int? = 404
    serverResponseCode = nil
    
    //  如果你声明一个可选常量或者变量但是没有赋值，它们会自动被设置为 nil :
    var  surveyAnswer : String?
    
    //  if 语句以及强制解析
    var convertedNumber1 :String?
    convertedNumber1 = "123"
    //convertedNumber1 = nil
    if convertedNumber1 != nil {
        print("convertedNumber : \(convertedNumber1!)")
        //  当你确定可选类型确实包含值之后，你可以在可选的名字后面加一个感叹号( ! )来获取值。这个惊叹号表 示“我知道这个可选有值，请使用它。”这被称为可选值的强制解析(forced unwrapping):
    }
}

//  可选绑定
func optionalBindingDemo () {

/*
    let possibleNumber :String? = ""
    //ossibleNumber = nil;
    if let actualNumber = Int(possibleNumber!) {
        print("possibleNumber:\(possibleNumber!)")
    }
 */
 
    
    //  隐式解析可选类型
    let possibleString: String? = "A optional string."
    let forcedString: String? = possibleString!// 需要感叹号来获取值
    
    
    //let assumedString: String! = "An implicity unwarapped optional string."
    let assumedString: String! = "An implicity unwarapped optional string."
    let implicitString: String = assumedString// 不需要感叹号
    
    //  你仍然可以把隐式解析可选类型当做普通可选类型来判断它是否包含值:
    if assumedString != nil {
        print(assumedString)
    }
    
    //  你也可以在可选绑定中使用隐式解析可选类型来检查并解析它的值:
    if let definiteString = assumedString {
        print(definiteString)
    }
    
    do {
        try canThrowAnError()
        //  没有错误消息抛出
    } catch {
        //  有一个错误消息抛出
    }
    
}

func canThrowAnError() throws {
    
}

//  断言
func assertDemo() {
    let age = 3
    assert(age > 0, "A person's age cannot be less than zero.")
    
}

//  基本运算符
func basicOperations() {
    "hello," + "world"
    9%4
    
    //  空合运算符(Nil Coalescing Operator) ??
    let defaultColorName = "red"
    var userDefinedColorName :String?
    var colorNameToUse = userDefinedColorName ?? defaultColorName
    
    //  闭区间运算符
    for index in 1...5 {
        print("\(index) * 5 = \(index * 5)")
    }
    
    //  半开区间运算符
    let names = ["Anna", "Alex", "Brian", "Jack"]
    let count = names.count
    for i in 0..<count {
        print("Name:\(names[i])")
    }
}

// 数组
func arrayDemo() {
    
    //  创建一个空数组
    var someInts = [Int]()
    print("someInts is of type [Int] with \(someInts.count) items.")
    
    someInts.append(3)
    someInts = []
    
    //  创建一个带有默认值的数组
    var threeDoubles = Array(repeating: 0.0, count: 3)
    
    //  通过两个数组相加创建一个数组
    var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
    
    var sixDoubles = threeDoubles + anotherThreeDoubles
    
    //  用数组字面量构造数组
    var shoppingList: [String] = ["Eggs", "Milk"]
    if shoppingList.isEmpty {
        print("The shoppingList is empty.")
    }else{
        print("The shoppingList is not empty.")
    }
    
    shoppingList.append("Flour")
    shoppingList += ["Baking Power"]
    shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
    var firstItem = shoppingList[0]
    //  我们也可以用下标来改变某个已有索引值对应的数据值:
    shoppingList[0] = "Six eggs"
    shoppingList
    //  还可以利用下标来一次改变一系列数据值，即使新数据和原有数据的数量是不一样的。
    shoppingList[4...6] = ["Bananas", "Apples"]
    shoppingList
    //  调用数组的 insert(_:at:) 方法来在某个具体索引值之前添加数据项:
    shoppingList.insert("Maple Syrup", at: 0)
    //  类似的我们可以使用 remove(at:) 方法来移除数组中的某一项。这个方法把数组在特定索引值中存储的数据项移 除并且返回这个被移除的数据项(我们不需要的时候就可以无视它):
    var  mapleSynrup = shoppingList.remove(at: 0)
    shoppingList
    //  如果我们只想把数组中的最后一项移除，可以使用 removeLast() 方法而不是 remove(at:) 方法来避免我们需要获 取数组的 count 属性。就像后者一样，前者也会返回被移除的数据项:
    let apples = shoppingList.removeLast()
    shoppingList
    
    //  数组的遍历
    for item in shoppingList {
        print(item)
    }
    
    //  如果我们同时需要每个数据项的值和索引值，可以使用 enumerated() 方法来进行数组遍历。 enumerated() 返回 一个由每一个数据项索引值和数据值组成的元组。我们可以把这个元组分解成临时常量或者变量来进行遍历:
    for (index, value) in shoppingList.enumerated() {
        print("\(index) : \(value)")
    }
    
}

//  字典
func dictionaryDemo () {
    
    //  创建一个空字典
    var nameOfIntegers :[Int: String]
    var nameOfIntegers1 = [Int: String]()
    
    //  用字典字面量创建字典
    var airports : [String: String] = ["YYZ": "Toronto",
                                       "DUB": "Dublin",]
    
    //  访问和修改字典
    print("\(airports.count)")
    
    if airports.isEmpty {
        print("The airports dictionary is empty")
    }else{
        print("The airports dictionary is not empty")
    }
    
    airports["LHR"] = "London Heathrow"
    airports
    
    //  updateValue(_:forKey:) 方法会返回对应值的类型的可选值。
    //  如果有值存在于更新前，则这个可选值包含了旧值，否则它将会是 nil 。
    if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
        print("The old value for DUB was \(oldValue)")
    }
    
    //  字典遍历
    for (airportCode, airportName) in airports {
        print("\(airportCode) : \(airportName)")
    }
    
    //  通过访问   或者   属性，我们也可以遍历字典的键或者值:
    for airportCode in airports.keys {
        print("\(airportCode)")
    }
    
    for airportName in airports.values {
        print("\(airportName)")
    }
    
}

//  控制流
func controlFlowDemo () {
    let base = 3
    let power = 10
    var answer = 1
    for _ in 1...power {
        answer *= base
    }
    answer
    
    let numberOfLegs = ["spider" : 3, "ant" : 6, "cat" : 4]
    for (animalName, legCount) in numberOfLegs
    {
        print("\(animalName) : \(legCount)")
    }
    //字典元素的遍历顺序和插入顺序可能不同，字典的内容在内部是无序的，所以遍历元素时不能保证顺序。

    //  Switch
    let someCharacter : Character = "z"
    switch someCharacter {
    case "a":
        print("a")
    case "z":
        print("z")
    default:
        print("other")
    }
    
    let  anotherCharacter = "A"
    
    switch anotherCharacter {
    case "a", "A":
        print("A")
    default:
        print("Other")
    }
    
    //  区间匹配
    let approiximateCount = 62
    let countedThings = "moons orbiting Saturn"
    var naturalCount : String
    switch approiximateCount {
    case 0:
        naturalCount = "no"
    case 1..<5:
        naturalCount = "a few"
    case 5..<12:
        naturalCount = "several"
    case 12..<100:
        naturalCount = "dozens of"
    case 100..<1000:
        naturalCount = "hundreds of"
    default:
        naturalCount = "many"
    }
    print("There are \(naturalCount) \(countedThings)")
    
    //  下面的例子展示了如何使用一个 (Int, Int) 类型的元组来分类下图中的点(x, y):
    let somePoint = (-11, -1)
    switch somePoint {
    case (0, 0):
        print("\(somePoint)")
    case (_, 0):
        print("(\(somePoint.0), 0) is on the x-axis")
    case (0, _):
        print("(0, \(somePoint.1)) is on the y-axis")
    case (-2...2, -2...2):
        print("(\(somePoint.0), \(somePoint.1)) is inside the box")
    default:
        print("(\(somePoint.0), \(somePoint.1)) is outside of the box")
    }
    
    //  Where
    //  case 分支的模式可以使用 where 语句来判断额外的条件。
    let yetAnotherPoint = (1, -10)
    switch yetAnotherPoint {
    case let (x, y) where x == y:
        print("(\(x), \(y)) is on the line x == y")
    case let (x, y) where x == -y:
        print("(\(x), \(y)) is on the line x == -y")
    case let (x, y):
        print("(\(x), \(y)) is just some arbitrary point")
    }
    
    //  复合匹配
    let character1 : Character = "e"
    switch character1 {
    case "a", "e", "i", "o", "u":
        print("\(character1) is a vowel")
    default:
        print("\(character1) is a noraml")
    }
    
    let stillAnotherPoint = (9, 0)
    switch stillAnotherPoint {
    case (let distance, 0), (0, let distance):
        print("On a axis, \(distance) from the origin")
    default:
        print("Not on an axis")
    }
}

func fallThroughDemo () {
    let integerToDescribe = 5
    var description = "The number \(integerToDescribe) is"
    switch integerToDescribe {
    case 2,3,5,7,11,13:
        description += " a prime number, and also"
        fallthrough
    default:
        description += " an integer"
    }
    
    print(description)
    
}


simpleDemo()
tuplesDemo()
optionalDemo()
optionalBindingDemo()
assertDemo()
basicOperations()
arrayDemo()
dictionaryDemo()
controlFlowDemo()
fallThroughDemo()


