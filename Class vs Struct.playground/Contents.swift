import UIKit

struct Student{
    var name: String
    var age: Int
}

class Person {
    var name: String
    var age: Int
    weak var friend: Person?
    
    init(name:String, age: Int) {
        self.name = name
        self.age = age
    }
    deinit {
        print("\(name) foi desalocado da memória")
    }
}

var student1 = Student(name: "Zeca", age: 22)
var student2 = student1

student1.name = "Alisson"
student1.age = 33

print(student2.name, student2.age)
//===========================

var person1: Person? = Person(name: "Felipe", age: 27)
var person2: Person? = Person(name: "Henrique", age: 44)

person1!.name = "Alisson"
person1!.age = 33

print(person2!.name, person2!.age)

person1?.friend = person2
person2?.friend = person1

person1 = nil
person2 = nil

//Value Type

//Reference Type

let array: [Int] = [3, 6, 7, 3, 4, 2, 8, 9, 1]

//Copy On Write
var array2 = array
array2[0] = 45
