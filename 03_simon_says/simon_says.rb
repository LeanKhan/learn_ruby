#write your code here

def echo says
    says
end

def shout says
    says.upcase
end

def repeat says
    words = []

    2.times do words << says end

    words.join(' ')
end

def repeatMany says, repeat 
    words = []

    repeat.times do words << says end

    words.join(' ')
end

def start_of_word word, index
    word.slice(0, index)
end

def first_word string 
    string.split(' ')[0]
end

def titleize string
    new_string = string.split(' ').collect do |word| 
        if(word == 'the' || word == 'over' || word == 'and')
            word
        else
            word.capitalize
        end
    end

   new_string[0] = new_string[0].capitalize

    new_string.join(' ')
end
