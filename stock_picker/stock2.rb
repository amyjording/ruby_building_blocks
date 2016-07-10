def stock_picker(stocks = Array.new(7) { rand(02..40) })
  buy = nil
  sell = nil
  max_profit = 0

  (0..(stocks.length - 2)).each do |buy_date|
    ((buy_date + 1)..stocks.length - 1).each do |sell_date|

      price_difference = stocks[sell_date] - stocks[buy_date]

      if price_difference > max_profit
        buy = buy_date
        sell = sell_date
        max_profit = price_difference

      end
    end
  end
  p stocks
  puts "day #{buy}: buy at #{stocks[buy]}"
  puts "day #{sell}: sell at #{stocks[sell]}"
  puts "profit of #{max_profit}"

  return [buy, sell]

end

stock_picker
