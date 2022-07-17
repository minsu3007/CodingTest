import Foundation

let hour: Int = 5
var answer: Int = 0

for h in 0...hour {
    for m in 0...59 {
        for s in 0...59 {
            let time = "\(h):\(m):\(s)"
            if time.contains("3") {
                answer += 1
            }
        }
    }
}

print(answer)
