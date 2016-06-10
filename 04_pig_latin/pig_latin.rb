def translate(sentence)
    latin = sentence.split.map{ |word|
        phoneme = word[0, %w(a e i o u).map { |vowel|
            "#{word}aeiou".index(vowel)
        }.min]

        if phoneme.include? "q"
            if word[phoneme.length] == "u"
                phoneme += "u"
            end
        end
        "#{word[phoneme.length..-1]}#{phoneme}ay"
    }.join(" ")
    latin
end




