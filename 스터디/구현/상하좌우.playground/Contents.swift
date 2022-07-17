import Foundation

let n = 5
let moveArr: [String] = ["R", "R", "R", "U", "D", "D"]

var x = 1
var y = 1

for movement in moveArr {
    switch movement {
    case "L":
        if y - 1 < 1 {
            continue
        } else {
            y -= 1
        }
    case "R":
        if y + 1 > n {
            continue
        } else {
            y += 1
        }
    case "U":
        if x - 1 < 1 {
            continue
        } else {
            x -= 1
        }
    case "D":
        if x + 1 > n {
            continue
        } else {
            x += 1
        }
    default:
        break
    }
}

print(x, y)
