def translate(sentence)
    latin = sentence.split.map{ |word|
        phoneme = word[0, %w(a e i o u).map { |vowel|
            "#{word}aeiou".index(vowel)
        }.min]

        if phoneme.include?("q") || phoneme.include?("Q")
            if word[phoneme.length] == "u"
                phoneme += "u"
            end
        end

        if phoneme.length > 0 && is_upper?(phoneme[0..0])
            "#{word[phoneme.length..-1]}#{phoneme}ay".capitalize!
        elsif word.length > 1 && !is_alpha?(word[-1])
            punc = word[-1]
            "#{word[phoneme.length..-2]}#{phoneme}ay" + punc
        else
            "#{word[phoneme.length..-1]}#{phoneme}ay"
        end
    }.join(" ")
    latin
end

def is_upper?(c)
    c == c.upcase
end

def is_alpha?(str)
  !str.match(/[^A-Za-z]/)
end

