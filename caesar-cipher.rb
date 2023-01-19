def caesar_cipher(phrase, num)
    cipher = ''
    str = phrase.split('')
    char_code_A = 'A'.ord
    char_code_Z = 'Z'.ord
    char_code_a = 'a'.ord
    char_code_z = 'z'.ord
    letter_range = char_code_Z - char_code_A + 1;
    str.each do |char|
        if char.ord >= char_code_a and char.ord<= char_code_z
            shift = num + char.ord
            if shift > char_code_z
                overflow = shift - char_code_z
                if overflow > letter_range
                    overflow = overflow % letter_range
                end
                shift = char_code_a + overflow - 1;
            end
            if shift < char_code_a
                overflow = char_code_a - shift
                if overflow < -letter_range
                    overflow = overflow % letter_range
                end
                shift = char_code_z - overflow + 1
            end
            cipher += shift.chr
        elsif char.ord >= char_code_A and char.ord<= char_code_Z
            shift = num + char.ord
            if shift > char_code_Z
                overflow = shift - char_code_Z
                if overflow > letter_range
                    overflow = overflow % letter_range
                end
                shift = char_code_A - overflow - 1
            end
            if shift < char_code_A
                overflow = char_code_A - shift
                if overflow < -letter_range
                    overflow = overflow % letter_range
                end
                shift = char_code_Z - overflow + 1
            end
            cipher += shift.chr
        else
            cipher += char
        end
    end
    cipher
end

puts caesar_cipher('Yes !', 1)