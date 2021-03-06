# Given two strings, return true if they are anagrams of one another
# An anagram is a word or phrase formed by rearranging the letters of a different word or phrase
# Listen = Silent
# Tar = Rat
# Arc = Car
# Elbow = Below
# State = Taste

def anagrams(string1, string2)
    if string1 == string2
        return true
    elsif string1.length == string2.length and string1.split("").sort == string2.split("").sort 
        return true
    else 
        return false
    end
end

puts anagrams("cat", "tac")
puts anagrams("elbow","below")
puts anagrams("whats","up")