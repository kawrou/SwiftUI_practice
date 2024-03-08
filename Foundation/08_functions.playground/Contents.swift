import UIKit

func addFive(num: Int) -> Int{
    return num+5
}

print(addFive(num:4))
// Should print: "9"

print(addFive(num:2132))
// Should print: "2137"


// Your code goes here.
func subtractLowFromHigh(num1: Int, num2: Int) -> Int {
    if num1 > num2{
        return num1 - num2
    }else{
        return num2 - num1
    }}

    print(subtractLowFromHigh(num1:2, num2:3))
// Should print "1"

    print(subtractLowFromHigh(num1:3, num2:2))
// Should print "1"

    print(addFive(num:subtractLowFromHigh(num1:1463, num2:16475)))
// Should print "15017"

func superify(str: String) -> String{
    return "super\(str)"
}

print(superify(str:superify(str:superify(str:superify(str: "cat")))))
// Should print:
//"supersupersupersupercat"
