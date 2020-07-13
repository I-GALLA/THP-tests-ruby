def translate(str)
    # Translate the provided string to pig latin.
    # Pig Latin takes the first consonant (or consonant cluster) of an English word, moves it to the end of the word and suffixes an "ay".
    # If a word begins with a vowel you just add "way" to the end. (we can use the if condition but finally using while better => - of lines )
    # Input strings are guaranteed to be English words in all lowercase.

    # not include "u" -- see "quiet" example on test file
    tab = str.split.map do |word|
        # word = "quiet"
        # word.count("aeio") ==> 2
        # start = word[0..1] ==> "qu"
        # fin = word.delete(word[0..1]) ==> "iet"
        # fin + start + "ay" ==> "ietquay"
        
        i=0
        while word[i].count("aeio") != 1
            i +=1
        end
        start = word[0..i-1]
        fin = word.delete(word[0..i-1])
        fin + start + "ay"
    end
    tab.join(" ")
end