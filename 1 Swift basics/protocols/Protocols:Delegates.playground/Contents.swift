import Cocoa

protocol Number{
    var floatValue: Float { get }
}

extension Float: Number{
    var floatValue : Float {
        return self
    }
}

extension Double: Number{
  var floatValue : Float {
    return Float(self)
    }
}

extension Int: Number {
    var floatValue: Float{
        return Float(self)
    }
}

extension UInt: Number {
    var floatValue: Float{
        return Float(self)
    }
}

func +(valueA: Number, valueB: Number) -> Float{
   return valueA.floatValue + valueB.floatValue
}

func -(valueA: Number, valueB: Number) -> Float{
    return valueA.floatValue - valueB.floatValue
}

func /(valueA: Number, valueB: Number) -> Float{
    return valueA.floatValue / valueB.floatValue
}

func *(valueA: Number, valueB: Number) -> Float{
    return valueA.floatValue * valueB.floatValue
}

let x: Double = 1.2347
let y: Int = 5
let q = x.floatValue + y.floatValue

class Question {
    var type: QuestionType
    var query: String
    var answer: String
    
    init(type: QuestionType, query:String, answer: String) {
        self.type = type
        self.query = query
        self.answer = answer
    }
}
enum QuestionType : String{
    case trueFalse = "The sky is blue?"
    case multipleChoice = "Who is the ugliest Beatle: John, Paul, George, or Ringo?"
    case shortAnswer = "What is the capital of Oregon?"
    case essay = "In 50 words, explain molceular fusion"
    
    static let types = [trueFalse,multipleChoice,shortAnswer,essay]
}

enum AnswerType : String{
    case trueFalse = "True."
    case multipleChoice = "Sgt. Pepper"
    case shortAnswer = "Salem"
    case essay = "Molecular fusion happens when a daddy molecule and a mommy molecule love each other very much"
    static let types = [trueFalse,multipleChoice,shortAnswer,essay]
}

protocol QuestionGenerator {
    func generateRandomQuestion() -> Question
}

class Quiz: QuestionGenerator {
    func generateRandomQuestion() -> Question {
        let randomNumeral = Int(arc4random_uniform(4))
        let randomType = QuestionType.types[randomNumeral]
        let randomQuery = randomType.rawValue
        let randomAnswer = AnswerType.types[randomNumeral].rawValue
        let randomQuestion = Question(type: randomType, query: randomQuery, answer: randomAnswer)
        return randomQuestion
    }
    
    
}

let quiz = Quiz()
quiz.generateRandomQuestion()
let question = quiz.generateRandomQuestion()

print("QUESTION TYPE: \(question.type)\nQuery: \(question.query)\n Answer: \(question.answer)")



