def stock_picker (prices)
  max_profit = 0
  max_profit_index = []

  prices.each_with_index do |buy_price, buy_index|
    prices.drop(buy_index + 1).each_with_index do |sell_price, sell_index|
      profit = sell_price - buy_price
      if profit > max_profit
        max_profit = profit 
        max_profit_index = [buy_index, sell_index + buy_index + 1]
      end
    end   
  end
  max_profit_index
end

p stock_picker([17,3,6,9,15,8,6,1,10])
p stock_picker([1,10,6,9,15,8,6,3,17])