# https://leetcode.com/problems/best-time-to-buy-and-sell-stock/

# You are given an array prices where prices[i] is the price of a given stock on the ith day.

# You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.

# Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.

def max_profit(prices)

  min_price = prices[0]
  max_profit = 0 

  prices.each do |price|
    min_price = [min_price, price].min
    potential_profit = max_price - min_price
    max_profit = [max_profit, potential_profit].max
  end
  return max_profit
end

#TEST
prices = [7,1,5,3,6,4]
p max_profit(prices) #=> 5

prices = [7,6,4,3,1]
p max_profit(prices) # => 0  # => -1

prices = [3,4,2,7,1] # => 5
p max_profit(prices) # => 5

current_price = 3
best_buy = 3
potential profit = 0
max_profit = 0

current_price = 4
best_buy = 3
potential profit = 4 - 3
max_profit = 1

current_price = 2
best_buy = 2
potential profit = 2 - 2 = 0
max_profit = 1

current_price = 7
best_buy = 2
potential profit = 7 - 2 = 5
max_profit = 5

current_price = 1
best_buy = 1
potential profit = 1 - 1 = 0
max_profit = 5

