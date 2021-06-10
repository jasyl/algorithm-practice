# Find the maximum profit you can achieve. You may complete as many transactions as you like (i.e., buy one and sell one share of the stock multiple times).

# Note: You may not engage in multiple transactions simultaneously (i.e., you must sell the stock before you buy again).

def max_profit(prices)
  max_profit = 0
  
  i = 0
  j = 1
  while j < prices.length
    if prices[i] < prices[j]
      max_profit += prices[j] - prices[i]
      i += 1
      j += 1
    else
      j += 1
    end
  end
  return max_profit
end