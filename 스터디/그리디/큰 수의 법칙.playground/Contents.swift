import Foundation

let n: Int = 5
let m: Int = 7
let k: Int = 2
let arr: [Int] = [3, 4, 3, 4, 3]

let sortedArr: [Int] = arr.sorted{ $0 > $1 }

let firstNumber = sortedArr[0]
let secondNumber = sortedArr[1]
let K: Int = k+1

let answer = ((k)*firstNumber + secondNumber) * (m / K) + ((m % K) * firstNumber)
print(answer)
