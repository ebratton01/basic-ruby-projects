def bubble_sort(arr)
    arr.each_with_index do |num1, ind1|
        arr.each_with_index do |num2, ind2|
            if num2 < num1
                arr[ind1] = num2
                arr[ind2] = num1
                break
            end
        end
    end
    arr.reverse
end

puts bubble_sort([4,3,78,2,0,2])