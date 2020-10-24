def profit(stock_prices, pair_days)
  stock_prices[pair_days[1]] - stock_prices[pair_days[0]]
end

def stock_picker(_stock_prices_each_day)
  best_pair_of_days_to_buy = []
  profit = -1 / 0.0 # -Inf
  stock_length = _stock_prices_each_day.length - 1

  (0..stock_length).each do |day_buy|
    (day_buy..stock_length).each do |day_sell|
      days = [day_buy, day_sell]
      temp_profit = profit(_stock_prices_each_day, days)

      if temp_profit > profit
        best_pair_of_days_to_buy = days
        profit = temp_profit
      end
    end
  end

  best_pair_of_days_to_buy
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
# p profit([17, 3, 6, 9, 15, 8, 6, 1, 10], [1, 4])
