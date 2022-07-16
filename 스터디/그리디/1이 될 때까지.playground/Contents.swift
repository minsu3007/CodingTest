import Foundation

var n = 13
let k = 3
var answer = 0
var count = 0
while true {
    var x = n % k
    count += x
    n -= x
    
    if n < k {
        break
    }
    
    n /= k
    count += 1
}

if n == 1 {
    print(count)
} else {
    count += (n-1)
}
