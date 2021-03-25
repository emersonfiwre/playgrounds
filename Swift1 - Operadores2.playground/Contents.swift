import UIKit

var str = "Hello, playground"
//Operadores Lógicos

//Operador AND(&&)
var boughtBanana: Bool = true
var boughtTomato: Bool = true
var boughtApple = false

var isHappy = boughtBanana && boughtTomato && boughtApple

true && true
true && false
false && false
false && true

//Operador OU (OR): ||
var likesMeat = false
var likesBeer = true
var canInvitesBarbecue = likesBeer || likesMeat

true || false
true || true
false || true
false || false

var grade1 = 8.5
var grade2 = 7.0
let result = (grade1 + grade2) / 2

//Operador de negação (NOT): !
var knowSwift = false
var enrolSwiftCourse = !knowSwift

//Operador ternário: ?
var grade = 7.95
var gradeResult = (grade >= 7.0) ? "Aprovado" : "Reprovado"

let number = 11
let type = (number % 2 == 0) ? "Par" : "Ímpar"


