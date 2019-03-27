import Foundation

var str = "Hello, playground"

var optionalNumber:Int?

if optionalNumber != nil {
    print("optionalNumber has a value of \(String(describing: optionalNumber))")
} else {
    // handle error
}

// Optional Binding
if let constantNumber = optionalNumber {
    print("contantNumber has a value of \(constantNumber)")
    
} else {
    print("optionalNumber is nil ")
}

func intPrinter() {
    guard let constantNumber = optionalNumber else { return }
    print("contantNumber has a value of \(constantNumber)")
    
}

intPrinter()

// Implicitly Unwrapped Optionals
let assumedValue: Int! = nil
let implicitValue: Int = assumedValue

//Nil Coalescing & Using Ternary Operator
let optionalInt: Int? = nil
let result = optionalNumber ?? 0



