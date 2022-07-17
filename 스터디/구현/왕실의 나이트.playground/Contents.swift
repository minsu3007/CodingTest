import Foundation

let location = "a1"

let x = Int((location.first?.asciiValue)!) - 96
let y = Int(String(location.last!))!
var answer: Int = 0

let possibleMoves: [(Int, Int)] = [(-2, -1), (-1, -2), (1, -2), (2, -1), (2, 1), (1, 2), (-1, 2), (-1, 1)]

for (a, b) in possibleMoves {
    let nowX = x + a
    let nowY = y + b
    
    if nowX > 0 && nowX < 9 && nowY > 0 && nowY < 9 {
        answer += 1
    }
}

print(answer)
