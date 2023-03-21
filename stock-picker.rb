def stock_picker(array)
    max_profit = nil
    best_days = [2]
    array.each_with_index do |first, index|
        new_array = array.drop(index + 1)
        new_array.each do |second|
            profit = first - second
            if max_profit == nil || profit < max_profit
                max_profit = profit
                best_days[0] = array.find_index(first)
                best_days[1] = array.find_index(second)
            end
        end
    end
    return best_days.to_s
end

stock_prices = [17,3,6,9,15,8,6,1,10]

puts stock_picker(stock_prices)