import Foundation

var str = "Hello, playground"




//class Rectangle {
//    var area: Double?
//
//    func calculateArea(length: Double, width: Double) {
//        area = length * width
//    }
//}
//
//class Triangle {
//    var area: Double?
//
//    func calculateArea(baseValue: Double, height: Double) {
//        area = (baseValue * height) / 2
//    }
//}

class Shape {
    var area: Double?

    func calculateArea(valA: Double, valB: Double) {

    }
}

class Triangle: Shape {
    override func calculateArea(valA: Double, valB: Double) {
        area = (valA * valB) / 2
    }
}

class Rectangle: Shape {
    override func calculateArea(valA: Double, valB: Double) {
        area = valA * valB
    }
}
