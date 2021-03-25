import UIKit

var str = "Hello, playground"
var name = "Emerson Torres"

var number = 7+5

print("A sona de 7 com 5 é ", number)

var age = 39

var a = 0
for _ in 1...15{
    a = a+1
}
print(a)


let view = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 120))
view.backgroundColor = .red

let button = UIButton(type: .system)
button.frame = CGRect(x: 0, y: 0, width: 100, height: 40)
button.setTitle("Toque aqui", for: .normal)
view.addSubview(button)



