import Foundation

func factorial1(_ num: Int) -> Int {
    let n: Int = num
    let result: Int = 1
    if num <= 1 {
        return result
    } else {
        return n * factorial1(n-1)
    }
}

print(factorial1(5))
