import UIKit

//
//  UserDataService.swift
//  MobileAcebook
//
//  Created by Alan Gardiner on 22/02/2024.
//

let email: String = "example@email.com"

struct UserResponse: Codable{
    let user: User
    let message: String
}

var globalUsername = ""

struct User: Codable {
    let username: String?
    let avatar: String?
//    let _id: String
    let email: String
    let password: String
//    let __v: Int
}

import Foundation

class UserService {
    func getuser(email: String, completion: @escaping (User?) -> Void) {
        let url = URL(string: "http://127.0.0.1:8080/users/\(email)")!
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {
                completion(nil)
                return
            }
            print(String(data: data, encoding: .utf8)!)
            do {
                let userResponse = try JSONDecoder().decode(UserResponse.self, from: data)
                
                let user = userResponse.user
                print("User data received and decoded")
                DispatchQueue.main.async {
                    completion(user)
                }
            } catch {
                print("Error decoding user: \(error)")
                completion(nil)
            }
        }.resume()
    }
}

let userService = UserService()

userService.getuser(email: email) { user in
    if let user = user {
        if let username = user.username{
            print("User data received: \(username)")
            globalUsername = username
            print("Global username set: \(globalUsername)")
        }
    }else{
        print("Failed to get user data")
    }
}



