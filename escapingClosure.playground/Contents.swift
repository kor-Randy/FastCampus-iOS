import UIKit
import Foundation

func aa(closure: @escaping () -> ()){
    
    print("1")
    print("2")
    
    DispatchQueue.main.async {
        closure()
    }
    
    
    print("4")
    print("5")
    print("6")
    print("7")
    
}


aa{
    print("3")
}

func bb(_ first: Int, _ second: Int, cl: (Int, Int) -> Int) -> Int{
    return cl(first,second)
}

func ff(a: Int, b: Int) -> Int{
    return a*b
}



bb(1,2) { (a, b) -> Int in
    return a+b
}

bb(5,5,cl: ff)


var customersInLine = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
print(customersInLine.count)
// Prints "5"

let customerProvider = { customersInLine.remove(at: 0) }
print(customersInLine.count)
// Prints "5"

print("Now serving \(customerProvider())!")
// Prints "Now serving Chris!"
print(customersInLine.count)
// Prints "4"

func ab(num: inout Int){
    num += 2
    print(num)
}

func ba(num: Int){
    
    print(num)
}

var num = 100

ba(num: num)
print(num)
ab(num: &num)
print(num)



let friends : [String] = ["a","b","c"]

var reduce : String = friends.reduce(into: "My Friends : "){
    print($0)
    $0 += ", " + $1
}
print(reduce)

var reduce1: String = friends.reduce("My Friends : "){
    print($0)
    return $0 + ", " + $1
}
print(reduce1)

let container = [[[1,2],[Optional.none]], [[3,Optional.none], [4,5,nil]]]

let one = container.flatMap{
    $0.flatMap{
        $0.compactMap{
            $0
        }
    }
}
print(one)

let two = container.flatMap{
    $0.flatMap{
        $0
    }
}

let three = container.flatMap{
    $0
}

let four = Optional(4).map {
    return Optional($0)
}

print(two)
print(three)
print(four)
