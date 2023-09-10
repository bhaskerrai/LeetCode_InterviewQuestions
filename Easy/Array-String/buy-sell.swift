// func maxProfit(_ prices: [Int]) -> Int {

//   // var buy: Int
//   // var sell: Int
//   var maxProfit: Int = 0  

//   for buy in 0..<prices.count {
//     for sell in buy+1..<prices.count {
//       if (prices[sell] - prices[buy] > maxProfit) {  
//         maxProfit = prices[sell] - prices[buy]  
//       }
//     }
//   }

//   return maxProfit
// }

// print(maxProfit([7,1,5,3,6,4]))


func maxProfit(_ prices: [Int]) -> Int {
    guard !prices.isEmpty else {
        return 0
    }
    
    var minPrice = prices[0]
    var maxProfit = 0
    
    for price in prices {
        if price < minPrice {
            minPrice = price
        } else if price - minPrice > maxProfit {
            maxProfit = price - minPrice
        }
    }
    return maxProfit
}

print(maxProfit([3, 2, 6, 5, 0, 3]))


