
func countWays(n: Int, steps: [Int]) -> Int {
    var dp = Array(repeating: 0, count: n + 2)
    dp[0] = 1 
    
    for i in 0...n {
        if dp[i] == 0 { continue }
        
        if i + 1 == n + 1 {
            dp[i + 1] += dp[i]
        } else if i + 1 <= n, steps[i] == 1 {
            dp[i + 1] += dp[i]
        }

        if i + 2 == n + 1 {
            dp[i + 2] += dp[i]
        } else if i + 2 <= n, steps[i + 1] == 1 {
            dp[i + 2] += dp[i]
        }
    }
    
    return dp[n + 1]
}

print(countWays(n: 3, steps: [0, 1, 0]))
print(countWays(n: 4, steps: [0, 1, 1, 0]))
print(countWays(n: 1, steps: [1]))
print(countWays(n: 5, steps: [1, 1, 0, 1, 1]))

