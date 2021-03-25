import UIKit

var movies: Set<String> = [
    "Matrix",
    "Vingadores",
    "Jurrasic Park",
    "De volta para o futuro"
]

var movies2 = Set<String>()

movies.insert("Homem-Aranha: De volta para o Lar")
print(movies.count)

movies.insert("Homem-Aranha: De volta para o Lar")
print(movies.count)

let result  = movies.insert("Homem-Aranha: De volta para o Lar")
print(result.inserted, result.memberAfterInsert)

movies.remove("Homem-Aranha: De volta para o Lar")
print(movies)

for movie in movies{
    print(movie)
}

if movies.contains("Matrix"){
    print("Matrix está na minha lista de filmes favoritos!!")
}

let myWifeMovies: Set<String> = [
    "De repente 30",
    "Mensagem para você",
    "Sintonia de amor",
    "De volta para o futuro",
    "Jurassic Park"
]

let favoriteMovies = movies.intersection(myWifeMovies)
print(favoriteMovies)

let allMovies = movies.union(myWifeMovies)
print(allMovies)

movies = movies.subtracting(myWifeMovies)
print(movies)

//let address = "Av. Paulista, 1578, São Paulo - SP, 01310-200"
let address: (type: String, name:String, number: Int, city: String, state:String, zipCode:String) = ("Av","Paulista",1578,"São Paulo","SP","01310-200")
let (type,name,number,city,state,cep) = address

print(type)
print(name)
