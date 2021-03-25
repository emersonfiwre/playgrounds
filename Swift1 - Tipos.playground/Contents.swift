import UIKit

var str = "Hello, playground"

//Int, Float, Double, Character, String, Bool

//Booleanos (Bool) -> 1 bit
var isFirstTime: Bool = true
var likesFruits = true

//Inteiros (Int) //Signed
var temperature = -12
var newAge = 43

//UInt // Unsigned Int
var age: UInt = 25

//Float -> 32 bits
var dolar: Float = 3.5

//Double -> 64 bits
let crazyNumber = 100000.7645582635


//Character 1 caracter
var gender: Character = "M" //"F"
var aspas: Character = "\""

//String: Conjunto de caracteres
var newGender = "M"
let studentName = "\"Dr\"Emerson Torres"
print(studentName)
let firstName = "Eloisa"
let lastName = "Torres"
//let fullName = firstName + " " + lastName
let fullName = "\(firstName) \(lastName) - Idade: \(age) anos"

print("A variável fullName tem \(fullName.count) caracteres")
print(fullName)
let text = """
Olá, espero que esteja gostando do curso.
        Ainda tem mais pela frente
Fim!!!
"""//"""mostrará da forma que está vendo
print(text)
