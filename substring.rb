def substrings(str, dict)
    substr = Hash.new(0)
    dict.each do |word|
        substr[word] = str.downcase.scan(/(?=#{word})/).count if str.downcase.include?(word)
    end
    puts substr
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

# substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)