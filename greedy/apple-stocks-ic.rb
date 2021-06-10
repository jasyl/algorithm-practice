# https://www.interviewcake.com/question/ruby/stock-price?course=fc1&section=greedy

# stock prices, indices are in time in minutes past trade opening, 9:30 local time
# value are the price in US dollars of one share of appl stock at the time

# write an efficient method that takes stock_prices and returns the best profit I could have made from one purchase and one sale of one share of Appl stock yesterday

def best_profit(stock_prices)

  if stock_prices.empty? || stock_prices.length == 1
    raise "stock_price is empty"
  end
  max_profit = stock_prices[1] - stock_prices[0]

  best_buy = nil
  best_sell = nil
  stock_prices.each_with_index do |price, time|
    # if best_buy hasn't been defined or there's is a better buy price and we're not at the end of the array. 
    if (best_buy.nil? || price < best_buy) && time != stock_prices.length - 1 
      best_buy = price 
      best_sell = stock_prices[time + 1]

    elsif price > best_sell
      best_sell = price
    end
    
    potential_profit = best_sell - best_buy
    max_profit = [potential_profit, max_profit].max
  end

  return max_profit
end


# def best_profit(stock_prices)

#   if stock_prices.empty? || stock_prices.length == 1
#     raise "stock_price is empty"
#   end
#   max_profit = 0
#   best_buy = stock_prices.first
#   stock_prices.each_with_index do |price, time| 

#   potential_profit = price - best_buy
#     best_buy = [best_buy, price].min    
#     
#     max_profit = [potential_profit, max_profit].max
#   end

#   return max_profit
# end


stock_prices = [10, 7, 5, 8, 11, 9] # => returns 6
p best_profit(stock_prices)

stock_prices = [1, 2, 3, 4, 5] # => returns 4
p best_profit(stock_prices)

stock_prices = [5, 4, 3, 2, 1] # => returns 0? or error ?
p best_profit(stock_prices)

stock_prices = [] # => returns 0? or error ?
p best_profit(stock_prices)