
func minSplit(amount: Int) -> Int{
    let coins = [50, 20, 10, 5, 1]
    var remaining = amount
    var count = 0
    
    for coin in coins {
        if remaining == 0 { break }
        count += remaining / coin
        remaining %= coin
    }
    
    return count
}

print(minSplit(amount: 9))
print(minSplit(amount: 26))
print(minSplit(amount: 172))
