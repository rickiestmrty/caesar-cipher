def caesar_cipher(string, shift_num)
    string_array = string.chars
    letters_downcase = ('a'..'z').to_a
    letters_upcase = letters_downcase.map{|letter| letter.upcase}

    string_array.map! do |curr_char|
        if letters_downcase.include?(curr_char)
            letters_downcase[letters_downcase.find_index(curr_char)+shift_num-letters_downcase.size]
        elsif letters_upcase.include?(curr_char)
            letters_upcase[letters_upcase.find_index(curr_char)+shift_num-letters_upcase.size]
        else
            curr_char
        end
    end
    new_string = string_array.join
    puts new_string
end

caesar_cipher("What a string!", 5)