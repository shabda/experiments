//: Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"
print(str)
for i in 0..<10{
    print(str)
    print(i)
}

var people = ["Shabda", "Akshar", "Varsha", "Neelima", "Shloka"]
for person in people{
    print(person)
}

var ages = [
    "Shabda": 31,
    "Akshar": 26,
    "Varsha": 26,
]

var sum = 0
for (name, age) in ages{
    sum = sum + age
}
print(sum)

func oldest(ages: [String: Int]) -> Int{
    var largest = 0
    for (_, age) in ages{
        if age > largest{
            largest = age
        }
    }
    return largest
}

print(oldest(ages))

func fizzbuzz(number: Int) -> (Int, Int, Int){
    var three_count=0, five_count=0, fifteen_count = 0
    for i in 1..<number{
        
        if i%3 == 0{
            if i%5==0{
                print("FizzBuzz")
                three_count++
            }
            else{
                print("Fizz")
                fifteen_count++
            }
            
        }
        else if i%5==0{
            print("Buzz")
            five_count++
        }
    }
    return (three_count, five_count, fifteen_count)
}

fizzbuzz(100)
fizzbuzz(1000)

// Find the sum of all the multiples of 3 or 5 below 1000.

func calc_sum(number: Int) -> Int{
    var sum = 0;
    for i in 1..<number{
        if (i % 3 == 0) || (i % 5 == 0){
            sum += i;
        }
    }
    return sum
}

calc_sum(1000)

// Sum all fibs below 1000
func sum_even_fibs(number: Int) -> Int{
    var sum = 0
    var (a, b) = (1, 2)
    var fibs = [1, 2]
    while (b<number){
        (a, b) = (b, a+b)
        fibs.append(b)
    }
    fibs.popLast()
    for i in fibs{
        if i % 2 == 0{
            sum+=i;
        }
    }

    return sum
}

sum_even_fibs(1000)

class Dog{
    var name: String
    var sound = "Woof"
    
    init(name: String, sound: String="Woof"){
        self.name = name
        self.sound = sound
    }
    
    
    func bark() -> String{
        return "\(name) says \(sound)"
    }
    
    func barkLoudly() -> String{
        return bark().uppercaseString
    }
}

var shera = Dog(name: "Shera")

print(shera.name)
print(shera.bark())
print(shera.barkLoudly())

