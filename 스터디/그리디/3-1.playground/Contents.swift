import Foundation

var n: Int = 1260
var answer: Int = 0
let coinTypes: [Int] = [500, 100, 50, 10]

for coin in coinTypes {
    answer += (n / coin)
    n %= coin
}

print(answer)
