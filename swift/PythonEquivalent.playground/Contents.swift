import Cocoa

//: Playground - noun: a place where people can play

// IMPLICIT_INTEGER = 70
let implicitInteger = 70


// APPLES = 3
// APPLE_SUMMARY = "I have {} apples".format(APPLES)
let apples = 3
let appleSummary = "I have \(apples) apples."



// INDIVIDUAL_SCORES
// team_score = 0
// for score in INDIVIDUAL_SCORES:
//      if score > 50:
//          team_ccore += 3
//      else:
//          team_score += 1
let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
teamScore


func greet(greeting: String, optionalName: String?) -> String {
    if let name = optionalName {
        return "\(greeting), \(name)"
    }
    else{
        return "Will the real slim shady please standup"
    }

}
greet("hello", optionalName: "John Appleseed")
greet("hello", optionalName: nil)


func howBig(number: Int) -> String{
    var size: String
    switch number{
    case 1..<10:
        size = "Single Digit"
    case 10..<100:
        size = "Double Digit"
    default:
        size = "Big"
        
    }
    return size
}
howBig(1)
howBig(10)
howBig(99)
howBig(100)


let interestingNumbers = [
    "odds": [1, 3, 5],
    "evens": [2, 4, 6],
    "primes": [2, 3, 5],
    "fibs": [1, 1, 2]
]

func findLargest(numSeqList: [String: [Int]]) -> Int{
    var mergedList: [Int] = []
    for (_, seq) in numSeqList{
        mergedList.appendContentsOf(seq)
    }
    var largest = mergedList[0]
    for num in mergedList{
        if num > largest{
            largest = num
        }
    }
    return largest
}
findLargest(interestingNumbers)

func rootMeanSquare(numbers: Double...) -> Double{
    var sumOfSquares = 0.0
    for num in numbers{
        sumOfSquares += num * num
    }
    return sqrt(sumOfSquares)
}

rootMeanSquare(1, 2, 3)

func halfOpenRangeLength(start: Int, end: Int) -> Int {
    return end - start
}

print(halfOpenRangeLength(1, end: 10))

func getIncrementer(incBy: Int) -> (Int) -> Int{
    func incremeter(start: Int) -> Int{
        return start + incBy
    }
    return incremeter
}

getIncrementer(5)(10)
