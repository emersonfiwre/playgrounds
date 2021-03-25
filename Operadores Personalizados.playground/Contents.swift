import UIKit
import Foundation
//Operadores Personalizados

//Unários -> Operam somente em 1 operando
//prefix
//postfix

//Binários -> Operam em 2 operando
//infix

//PREFIX
prefix operator <|
prefix func <| (rhs: [Int]) -> [Int]{
    let result = rhs.map({$0 - 1})
    return result
}
let ages = [9, 25, 30 , 42, 7, 18]
let lastYearsAges = <|ages

//POSTFIX
postfix operator ❗️//teclado de emoji control + command + space
postfix func ❗️ (lhs: Int) -> Int{
    var result = 1
    if lhs < 2 {
        return result
    }
    for i in 2...lhs{
        result *= i
    }
    return result
}

3❗️

//INFIX
infix operator ---
func --- (lhs: Int, rhs: Int) -> [Int] {
    return Array(lhs...rhs).reversed()
}
//30---12 não funciona

infix operator >-<
func >-<(total: Int, universe: Int) -> [Int] {
    var result: [Int] = []
    while result.count < total{
        let randoNumber = Int(arc4random_uniform(UInt32(universe))+1)
        if !result.contains(randoNumber){
            result.append(randoNumber)
        }
    }
    return result.sorted()
}

print(6>-<60)
print(5>-<80)
print("Lotofácio: ", 15>-<25)
