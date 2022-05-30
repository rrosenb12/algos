# Given a string, reverse each word in the sentence
# const string = "Welcome to this Javascript Guide!";
# return `emocleW ot siht tpircsavaJ !ediuG`

def ReverseEachWord(sentence)
    reversed_sentence_array = []
    sentence.split(" ").each do |word|
        reversed_sentence_array << word.reverse
    end
    return (reversed_sentence_array.join(" "))
end

puts ReverseEachWord("Welcome to this Javascript Guide!")