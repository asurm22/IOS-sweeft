
func sumOfDigits(start: Int, end: Int) -> Int {
    var sum = 0
    for num in start...end {
        var n = num
        while n > 0 {
            sum += n % 10
            n /= 10
        }
    }
    return sum
}

print(sumOfDigits(start: 7, end: 8)) 
print(sumOfDigits(start: 17, end: 20))
print(sumOfDigits(start: 10, end: 12))

