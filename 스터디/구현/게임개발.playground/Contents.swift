import Foundation

let mapX: Int = 4
let mapY: Int = 4

var nowX: Int = 1
var nowY: Int = 1
// 0 - 북, 1 - 동쪽, 2 - 남쪽, 3 - 서쪽
var direction: Int = 0

var map: [[Int]] = [[1, 1, 1, 1],
                    [1, 0, 0, 1],
                    [1, 1, 0, 1],
                    [1, 1, 1, 1]]
var answer: Int = 1
let dx = [-1, 0, 1, 0]
let dy = [0, 1, 0, -1]

map[nowX][nowY] = 1

while true {
    
    var count: Int = 0
    
    //방향 전환
    while map[nowX + dx[direction]][nowY + dy[direction]] == 1 {
        count += 1
        if direction == 0 {
            direction = 3
        } else {
            direction -= 1
        }
        
        if count > 4 {
            break
        }
    }
    
    if count > 4 {
        break
    }
    
    //이동
    map[nowX + dx[direction]][nowY + dy[direction]] = 1
    nowX += dx[direction]
    nowY += dy[direction]
    answer += 1
    
}

print(answer)
