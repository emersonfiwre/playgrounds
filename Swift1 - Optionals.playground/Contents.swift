import UIKit

var str = "Hello, playground"

var rg: Int = 3476228
var driverLicense: Int?// Optional (?) pode ter um valor nullo (nil)

driverLicense = 64522

//print("A minha carteira de motorista é: ", driverLicense!)//Desembrulhando o Optional(unwrap) de maneira arriscada

//Optional binding
if let driverL = driverLicense{
    print("A minha carteira de motorista é: ", driverL)// Maneira segura de fazer o unwrap
}else{
    print("Não possuo carteira de motorista")
}

let addressNumber = Int("100A")
if let addressNumber = addressNumber{
    print(addressNumber)
}else{
    print("Não foi possivel fazer a conversão do número")
}

//Nil coaliscing operator (Operador de coalescência nula)
let number: String = "578"
let addressNumber2 = Int(number) ?? 0

//Implicit Unwrapped Optionals
var name: String!
//name = "Joãozinho"
if name != nil {
    print(name.count)
}

