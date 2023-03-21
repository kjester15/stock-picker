def stock_picker(array)
    max_profit = nil
    best_days = [2]
    array.each do |first|
        array.each do |second|
            puts "first #{first}"
            puts "second #{second}"
            profit = first - second
            puts "profit #{profit}"
            if max_profit == nil
                max_profit = profit
                best_days[0] = first
                best_days[1] = second
            elsif profit < max_profit
                max_profit = profit
                best_days[0] = first
                best_days[1] = second
            end
        end
    end
    return best_days.to_s
end

stock_prices = [17,3,6,9,15,8,6,1,10]

puts stock_picker(stock_prices)