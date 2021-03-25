import UIKit

//Polimorfismo
class Animal {
    
    let color: String
    let gender: Character
    let breed: String
    
    init(color:String, gender: Character, breed: String) {
        self.color = color
        self.breed = breed
        self.gender = gender
    }
    
    func emiteSound() {
        print("...")
    }
}


class Dog: Animal{
    func run() {
        print("O cachorro está correndo")
    }
    override func emiteSound() {
        print("Au, au, au")
    }
}

class Bird: Animal{
    let canFly: Bool
    
    
    func fly() {
        if canFly{
            print("O pássaro está voando")
        }else{
            print("Este pássaro não voa")
        }
    }
    
    override func emiteSound() {
        print("🎶 🎶 🎶")
    }
    
    //Designated Initializer
    init(color: String, gender: Character, breed: String, canFly: Bool) {
        self.canFly = canFly
        super.init(color: color, gender: gender, breed: breed)
    }
    
    //Convenience Initializer
    convenience init(color: String, breed: String) {
        self.init(color: color, gender: "M", breed: breed, canFly: true)
    }
}

class Duck: Bird{
    
    init(color: String, gender: Character, breed: String) {
        super.init(color: color, gender: gender, breed: breed, canFly: true)
    }
    
    override func emiteSound() {
        print("Quack, quack, quack")
    }
}

let billy = Dog(color: "Preto e branco", gender: "M", breed: "Lhasa Apso")
let zeCarioca = Bird(color: "Verde e amarelo", gender: "M", breed: "Papagaio", canFly: true)
let maleBird = Bird(color: "Black", breed: "Sabiá")
let donad = Duck(color: "Branco", gender: "M", breed: "Disney")

billy.emiteSound()
zeCarioca.emiteSound()

//Type Casting

let animals: [Animal] = [
    Animal(color: "Preto", gender: "F", breed: "Zurubeba"),
    Dog(color: "Marrom", gender: "M", breed: "Cocker Spaniel"),
    Dog(color: "Marrom", gender: "M", breed: "PitBull"),
    Duck(color: "Marrom", gender: "F", breed: "Silvestre"),
    Bird(color: "Green", gender: "F", breed: "Avestruz", canFly: false)
]

print("****************************")
for animal in animals{
    animal.emiteSound()
    
    /*
    if animal is Dog{
        //forçando o cast
        (animal as! Dog).run()
    }
    
    if animal is Duck{
        (animal as! Duck).fly()
    }
     */
    /* Cast seguro
    if let dog = animal as? Dog {
        dog.run()
    }
    if let duck = animal as? Duck{
        duck.fly()
    }
     */
    switch animal {
    case let dog as Dog:
        dog.run()
    case let duck as Duck:
        duck.fly()
    default:
        break
    }
    
    
}
