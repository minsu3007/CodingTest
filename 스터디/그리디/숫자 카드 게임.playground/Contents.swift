import Foundation

let n = 2
let m = 4

let cards: [[Int]] = [[7, 3, 1, 8], [3, 3, 3, 4]]
var answer: [Int] = []

for card in cards {
    answer.append(card.min()!)
}

print(answer.max()!)
