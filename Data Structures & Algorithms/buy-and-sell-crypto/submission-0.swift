class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var buy = 0
        var sell = 1
        var maxProfit = 0

        while sell < prices.count {

            if prices[sell] <= prices[buy] {
                buy = sell
            }
            else {
                let profit = prices[sell] - prices[buy]
                maxProfit = max(maxProfit, profit)
            }

            sell += 1
        }

        return maxProfit
    }
}
