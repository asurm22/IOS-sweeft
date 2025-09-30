
func zeros(N: Int) -> Int {
    var count = 0
    var x = N
    
    while x >= 5 {
        x /= 5
        count += x
    }
    return count
}


print(zeros(N: 7))
print(zeros(N: 12))
print(zeros(N: 490))
