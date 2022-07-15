import Foundation

func solution(_ numbers: [Int]) -> Int {
    
    var answer: Int = 0
    
    for x in 0...9 {
        if !numbers.contains(x) {
            answer += x
        }
    }
    
    return answer
}

print(solution([1, 2, 3, 4, 6, 7, 8, 0]))
print(solution([5, 8, 4, 0, 6, 7, 9]))
