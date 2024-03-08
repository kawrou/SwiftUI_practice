import UIKit

var petNickname: String? = "Fluffy"
// Write your function here

func greeting(nickname: String?) {
    if let name = nickname {
        print("Hello, \(name)!")
    } else {
        print("Hello, pet!")
    }
}

greeting(nickname: petNickname)
greeting(nickname: nil)


//class bookReview{
//    let title: String
//    let description: String?
//    let reason: String?
//    
//    init(title: String, description: String?, reason:String?){
//        self.title = title
//        self.description=description
//        self.reason=reason
//    }
//    

func printFavouriteBookDetails(title: String, description: String?, reason: String?) -> String{
        var message = "Title: \(title)\n"
    if let description = description {
        message += "Description: \(description)\n"
    }
    if let reason = reason {
        message += "Reason: \(reason)"
    }
        return message
    }

//}

var hotMilkTitle: String = "Hot Milk"
var hotMilkDescription: String? = "A vibrant and starkly humorous tale of a mother-daughter relationship and the complexities of identity."
//var hotMilkReason = "It's a compelling exploration of the human psyche and personal transformation."
var hotMilkReason: String?

let hotMilkResult = printFavouriteBookDetails(title: hotMilkTitle, description: hotMilkDescription, reason:hotMilkReason)

print(hotMilkResult)


