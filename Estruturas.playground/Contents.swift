import UIKit

//Estruturas (Structs)

let age: Int = 39
let name: String = "Emerson"

struct Person{
    var name: String?
    var age: Int = 0
    
    init(name: String) {
        self.name = name
    }
    
    func sayHello(){
        print("Olá")
    }
    mutating func incrementAge(){//mutating é para quando metodo modifica alguma das propriedades
        age += 1
    }
}

var person = Person(name: "Emerson")
person.age = 20
person.sayHello()
person.name = "João"
print(person.name)

var newPerson = Person(name: "José")
newPerson.age = 39
newPerson.incrementAge()

//Computed Properties (Propriedades computadas)

struct Temperature{
    var celsius: Double
    var fahrenheit: Double{
        return celsius * 1.8 + 32
    }
}

var temperature = Temperature(celsius: 25)
print(temperature.celsius)
print(temperature.fahrenheit)


