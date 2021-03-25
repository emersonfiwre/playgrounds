import UIKit

//Tratamento de erros

enum LoginError: Error{
    case wrongLogin
    case wrongPassword
    case notInternetConnection
}

func login(userName: String, password: String) throws -> Bool{
    if checkInternetConnection(){
        if userName != "eme"{
            throw LoginError.wrongLogin
        }
        if password != "123"{
            throw LoginError.wrongPassword
        }
        return true
    }else{
        throw LoginError.notInternetConnection
    }
}

func checkInternetConnection() -> Bool {
    return true
}
do{
    _ =  try login(userName: "eme", password: "123")
}catch LoginError.wrongLogin{
    print("Nome do usuário inválido!")
}catch LoginError.wrongPassword{
    print("Senha inválida")
}catch LoginError.notInternetConnection{
    print("Sem conexão")
}

_ =  try? login(userName: "eme", password: "123")
//_ =  try! login(userName: "eme", password: "123") dá fatal error
