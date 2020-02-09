class Book

# TODO: Check out another way to make instance setters...
# attr_accessor(:title)

    def initialize
        # Words that shouldn't be capitalized
        @dontCapitalize = ["the", "and", "an", "a", "in", "of"]
    end

    def title
        @title
    end

    def title= title
        words = title.split

        words.map!.with_index do |word, index|
            capitalize(word, index)
        end

        @title = words.join(" ")
    end

    def capitalize word, index
        
        if @dontCapitalize.include?(word) && index != 0
            word
        else
            word.capitalize
        end
        
    end

end
