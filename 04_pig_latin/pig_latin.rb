#write your code here

def translate_word(string)
    vowels = ['a','e','i','o','u'];

    if vowels.include?(string.split('')[0])
        string.concat('ay')
    elsif string[0..1] == 'qu'
        string[2..-1] + string[0..1] + 'ay'
    elsif string[1..2] == 'qu'
        string[3..-1].concat(string[0..2] + 'ay')
    else
        first_vowel_index = string.split('').find_index { |letter|
           vowels.include?(letter)
        }

        string[first_vowel_index..-1].concat(string[0..first_vowel_index - 1], 'ay')
    end

end

def translate(string)
    words = string.split
    words.collect! do |word|
        translate_word(word)
    end
    words.join(" ")
end