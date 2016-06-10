def echo(words)
    words
end

def shout(words)
    words.upcase
end

def repeat(words, n=2)
    str = words
    (n-1).times do
        str = str + " " + words
    end
    str
end

def start_of_word(str, num)
    str[0..num-1]
end

def first_word(str)
    str.split[0]
end

def titleize(title)
    little_words = ["a", "and", "but", "or", "the", "over", "to"]
    str = title
    str.capitalize!
    str = str.split.map { |word|
        if little_words.include?(word)
            word
        else
            word.capitalize
        end
    }.join(" ")
    str
end


