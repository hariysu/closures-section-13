import UIKit

func firstCalculator (n1: Int, n2: Int) -> Int {
    return n1 * n2
}

// We took "(no1: Int, no2: Int) -> Int" and named as operation(removed parameter names)
func calculator (n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(n1, n2)
}

func add (no1: Int, no2: Int) -> Int {
    return no1 + no2
}

func multiply (no1: Int, no2: Int) -> Int {
    return no1 * no2
}

//Closure form of multiply method
//{ (no1: Int, no2: Int) -> Int in
//    return no1 * no2
//}

//calculator(n1 :2, n2: 3, operation: add)
calculator(n1 :2, n2: 3, operation: multiply )

// form 0
calculator(n1 :2, n2: 3, operation: { (no1: Int, no2: Int) -> Int in
    return no1 * no2
})

// form 1
calculator(n1 :2, n2: 3, operation: { (no1, no2) -> Int in
    return no1 * no2
})

// form 2
calculator(n1 :2, n2: 3, operation: { (no1, no2)  in
    return no1 * no2
})

// form 3
calculator(n1 :2, n2: 3, operation: { (no1, no2)  in no1 * no2})

// form 4
calculator(n1 :2, n2: 3, operation: {$0 * $1})

// form 5 (trailing closure)
calculator(n1 :2, n2: 3) { $0 * $1}

let result = calculator(n1 :2, n2: 3) {$0 * $1}
print(result)

let array = [6,2,3,9,4,1]

func addOne (n1: Int) -> Int {
    return n1 + 1
}

array.map(addOne)

//form1
array.map({(n1) -> Int in
    return n1 + 1
})

//form2
array.map({(n1) in
    return n1 + 1
})

//form3
array.map({(n1) in n1 + 1
})

//form4
array.map({$0 + 1})

//form5 (trailing closure)
array.map{$0 + 1}


