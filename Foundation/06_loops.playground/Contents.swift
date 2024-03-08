import UIKit

var total = 0

for num in 2321...34235{
    if num%2 == 0 {
        total += num
    }
}
print(total)

func factorial(_ n: Int) -> Int {
    var factorial = 1
    
    for num in 1...n{
        factorial *= num
    }
    
//    print(factorial)
    return factorial
}

print(factorial(17))
