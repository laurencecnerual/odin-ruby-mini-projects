def stock_picker(rateForEachDay)
  buyPrice = Float::INFINITY
  buyIndex = -1
  sellProfit = -1
  answer = [-1, -1]

  rateForEachDay.each_with_index do |rate, index|
    if rate < buyPrice && index != rateForEachDay.length - 1
      buyPrice = rate
      buyIndex = index
    end
    
    if rate - buyPrice > sellProfit && index != 0
      sellProfit = rate - buyPrice
      answer = [buyIndex, index]
    end
  end
  
  answer
end

# example use
# prices = [17,3,6,9,15,8,6,1,10]
# p prices
# p stock_picker(prices)
# example output: [1,4], for a profit of 12 (15 - 3)

# puts ""

# prices.shuffle!
# p prices
# p stock_picker(prices)

# puts ""

# prices.shuffle!
# p prices
# p stock_picker(prices)

# puts ""

# prices.shuffle!
# p prices
# p stock_picker(prices)

# puts ""

# prices.shuffle!
# p prices
# p stock_picker(prices)