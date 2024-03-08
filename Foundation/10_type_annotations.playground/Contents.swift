import UIKit

let myPet = "Black"
var myPetAge: Double = 3

myPetAge = 3.5

print(myPetAge)



let myPets: [String] = ["Black", "Erik", "Minerva"]
var myPetsHobbies: [String: String] = [
  "Black": "Run",
  "Erik": "Play",
  "Minerva": "Listen to music"
]

let numberOfMuseumsLeftToVisit: Int = 0
var moneyLeftAtTheEndOfCurrentMonth: Double = 2.5


// Your implementation here
class Pet{
    let name: String
    let owner: String
    var likes: [String]
    var dislikes: [String]
    var neutral: [String]
    
    init(name: String, owner: String, likes:[String], dislikes:[String], neutral:[String]){
        self.name = name
        self.owner = owner
        self.likes = likes
        self.dislikes = dislikes
        self.neutral=neutral
    }
    
    func getInformation(kind: String) -> String{
        switch kind {
        case "Likes":
            if likes.count == 1{
                return "\(self.name) likes \(likes[0])"
            }else if likes.count > 1 {
                let allButLast = likes.dropLast().joined(separator: ", ")
                let last = likes.last!
                return "\(self.name) likes \(allButLast), and \(last)!"
            }else {
                return "\(self.name) doesn't have any likes."
            }
        case "Dislikes":
            if dislikes.count==1{
                return "\(self.name) likes \(dislikes[0])"
            }else if dislikes.count>1{
                let allButLast = dislikes.dropLast().joined(separator: ", ")
                let last = dislikes.last!
                return "\(self.name) dislikes \(allButLast), and \(last)!"
            }else {
                return "\(self.name) doesn't have any dislikes"
            }
        case "Neutral":
            if neutral.count==1{
                return "\(self.name) neither likes nor dislikes \(neutral[0])"
            }else if neutral.count>1{
                let allButLast = neutral.dropLast().joined(separator: ", ")
                let last = neutral.last!
                return "\(self.name) neither likes nor dislikes \(allButLast), and \(last)!"
            }else {
                return "\(self.name) doesn't have any neutral views"
            }
        default:
            return "No such attribute"
        }
    }
}


let black = Pet(
  name: "Black",
  owner: "Josué",
  likes: ["running", "chasing", "singing"],
  dislikes: ["octopus", "cats"],
  neutral: ["squirrels"]
)

black.getInformation(kind: "Likes")
// Returns: Black likes running, chasing and singing!
black.getInformation(kind: "Dislikes")
// Returns: Black dislikes octopus and cats!
black.getInformation(kind: "Neutral")
// Returns: Black does not like or dislike playing with squirrels
