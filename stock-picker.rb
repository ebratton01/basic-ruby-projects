def stock_picker(arr)
    max_profit = 0
    days = []
    arr.each_with_index do |p1, p_ind1|
        arr.each_with_index do |p2, p_ind2|
            profit = p2 - p1
        if profit > max_profit and p_ind1 < p_ind2
            max_profit = profit
            days = [p_ind1, p_ind2]
        end
        end
    end
    days
end

puts stock_picker([17,3,6,9,15,8,6,1,10])