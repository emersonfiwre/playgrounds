import UIKit

var str = "Hello, playground"

//Operadores Binários


//Operador de atribuição: =
let gravity = 9.81
var (name,age) = ("Emerson", 20)

print(name)
print(age)

//Aritméticos: Soma (+), Subtração (-), Multiplicação (*), Divisão (/), Módulo (%)
//Soma: +
var age1 = 45
var age2 = 26
let sum = age1 + age2

//Subtração: -
let minus = age1 - age2

//Multiplicação: *
let multiply = age1 * age2

//Os dois operandos devem ser do mesmo tipo
let time1 = 12
let time2 = 14.75
//let resulttTimes  = time1 + time2 ERRO

//Divisão: /
let division = age1 / age2

//Módulo: Resto da divisão
let toys = 35
let kids = 6
let modulus = toys % kids

//Operadores compostos: atribui e opera ao mesmo tempo
//age1 = age1 + age2
age1 += age2
// -=, *=, /=, %=
var products = 125
var lastBuy = 22
products -= lastBuy

//Comparação: Fazem comparação entre valores (sempre retornam um Bool)
//Maior que: >
let grade1 = 7.5
let grade2 = 9.8
let betterThanFriend = grade1 > grade2

//Menor que: <
let grade = 8.9
let minimumGrade = 7.0
let reproved = grade < minimumGrade

//Maior ou igual a: >=
//Menor ou igual a: <=
let approved = grade >= minimumGrade

//Igualdade: ==
let teacherName = "Eric"
let studentName = "eric"
let sameNames = teacherName.lowercased() == studentName.lowercased()

//Desigualdade: !=
let differentNames = teacherName != studentName

