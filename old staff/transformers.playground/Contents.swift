import UIKit

// map(_:) - Returns an array containing the results of mapping the given closure over the sequence's elements.

var cityNames = ["portland","san luis obispo","istanbul","ottawa","boston"]
let capitalizedCityNames = cityNames.map { $0.capitalized }
print(capitalizedCityNames)

// flatMap(_:) - Returns an array containing the concatenated results of calling the given transformation with each element of this sequence.

var collections = [[1,2,3],[1,5,7],[34,6,9]]
let singleCollection = collections.flatMap { $0 }
print(singleCollection)
let singleCollection2 = collections.map { $0 }
print("\(singleCollection2) // map(_:)")

let squareCollection = collections.flatMap { $0.map{ $0 * $0} }
print(squareCollection)


// compactMap(_:) - Returns an array containing the non-nil results of calling the given transformation with each element of this sequence.

let randomReturnedNames: [String?] = ["Steve",nil,"Bob","Larry",nil]
let validData = randomReturnedNames.compactMap { $0 }
print(validData)

// filter(_:) - Returns an array containing in order the elements of the sequence that satisfy the given predicate
let digits = [1, 456, 34, 87, 4, 8, 12, 89]
let evenDigits = digits.filter { $0 % 2 == 0 }
print(evenDigits)

let names = ["Yasin", "Ersin", "Yusuf", "Furkan", "Sinan", "Burak"]
let yNames = names.filter { $0.first == "Y" }
print(yNames)

// reduce(_:) - Returns the result of combining the elements of the sequence using the given closure
let values = [3.0, 4.7, 12.65, 9.12, 187.9]
let sum = values.reduce(0.0, +)
let sum2 = values.reduce(0.0) { (x, y) in
     x + y
}
print(sum)
print(sum2)

let stringChunks = ["My name is ", "Yasin and I", "am a developer", "."]
let sentence = stringChunks.reduce("Developer Bio:", +)
print(sentence)

// zip(_:) - Creates a sequence of pairs built out of two underlying sequence

let nameData = ["Barry", "Gina", "Pieter", "Devan"]
let badgeNumberData = [44257878, 22885878, 338855949, 33844277]

let zipResults = Array(zip(nameData, badgeNumberData))
print(zipResults[0].1) 
