import UIKit

class Introducer{
    let name: String
    init(name:String){
        self.name = name
    }
    
    func announce() -> String {
        return "I am \(self.name)"
    }
    
    func introduce(who: String) -> String {
        return "Hello \(who), I am \(self.name)"
    }
}

var introducer = Introducer(name: "Josué")

print(introducer.announce())
// Should print: "I am Josué!"

print(introducer.introduce(who: "Fred"))
// Should print: "Hello Fred, I am Josué!"


class Reminder{
    let name: String
    var toDo: [String]
    
    init(name:String){
        self.name = name
        self.toDo = []
    }
    
    func remindMeTo(toDo: String) {
        self.toDo.append(toDo)
        print(self.toDo)
    }
    
    func remind() -> String {
        return "\(self.name)! \(toDo.joined(separator: ", "))!"
    }
}

var reminder = Reminder(name: "Josué")
reminder.remindMeTo(toDo: "Walk the dog")
reminder.remindMeTo(toDo: "tidy the living room")
print(reminder.remind())
